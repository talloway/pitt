import argparse
import collections
import csv
import json
import glob
import math
import os
import pandas
import re
import requests
import string
import sys
import time
import xml

class Bike():
    def __init__(self, baseURL, station_info, station_status):
        self.baseURL = baseURL
        self.station_infoURL = baseURL + station_info
        self.station_statusURL = baseURL + station_status

    def total_bikes(self):
        available_bikes = 0

        r = requests.get(self.station_statusURL)
        data = r.json()['data']

        for station in data['stations']:
            available_bikes += station['num_bikes_available']

        return available_bikes

    def total_docks(self):
        available_docks = 0

        r = requests.get(self.station_statusURL)

        if r.status_code != 200:
            return None

        data = r.json()['data']

        for station in data['stations']:
            available_docks += station['num_docks_available']

        return available_docks

    def percent_avail(self, station_id):
        available_docks = 0
        total_docks = 0

        r = requests.get(self.station_statusURL)

        if r.status_code != 200:
            return None

        data = r.json()['data']

        for station in data['stations']:
            if int(station['station_id']) == station_id:
                available_docks = station['num_docks_available']
                total_docks = available_docks + station['num_bikes_available']
                break

        if total_docks == 0:
            return ''

        return str(int((100 * available_docks / total_docks))) + '%'

    def closest_stations(self, latitude, longitude):
        station_distances = {}

        r = requests.get(self.station_infoURL)

        if r.status_code != 200:
            return None

        data = r.json()['data']

        for station in data['stations']:
            distance = self.distance(latitude, longitude,
                                     station['lat'], station['lon'])
            station_distances[distance] = {station['station_id']:
                                           station['name']}

        items = station_distances.items()
        sorted_items = sorted(items)

        three_closest = sorted_items[:3]
        final_dict = {}

        for k in three_closest:
            final_dict.update(k[1])

        return final_dict


    def closest_bike(self, latitude, longitude):
        station_distances = {}

        r = requests.get(self.station_infoURL)
        s = requests.get(self.station_statusURL)

        if r.status_code != 200 or s.status_code != 200:
            return None

        data = r.json()['data']
        data_s = s.json()['data']

        for station in data['stations']:
            for s_station in data_s['stations']:
                if station['station_id'] == s_station['station_id'] and s_station['num_bikes_available'] > 0:
                    distance = self.distance(latitude, longitude,
                                             station['lat'], station['lon'])
                    station_distances[distance] = {station['station_id']:
                                                   station['name']}

        items = station_distances.items()
        sorted_items = sorted(items)

        closest = sorted_items[:1]
        final_dict = {}

        for k in closest:
            final_dict.update(k[1])

        return final_dict

    def station_bike_avail(self, latitude, longitude):
        r = requests.get(self.station_infoURL)
        s = requests.get(self.station_statusURL)

        if r.status_code != 200 or s.status_code != 200:
            return None

        data = r.json()['data']
        data_s = s.json()['data']

        final_dict = {}
        for station in data['stations']:
            if station['lat'] == latitude and station['lon'] == longitude:
                station_id = station['station_id']
                for station in data_s['stations']:
                    if station_id == station['station_id']:
                        num_bikes = station['num_bikes_available']

                final_dict[station_id] = num_bikes
                return final_dict

        return {}

    def distance(self, lat1, lon1, lat2, lon2):
        p = 0.017453292519943295
        a = 0.5 - math.cos((lat2-lat1)*p)/2 + math.cos(lat1*p)*math.cos(lat2*p) * (1-math.cos((lon2-lon1)*p)) / 2
        return 12742 * math.asin(math.sqrt(a))


# testing and debugging the Bike class

if __name__ == '__main__':
    instance = Bike('https://api.nextbike.net/maps/gbfs/v1/nextbike_pp/en', '/station_information.json', '/station_status.json')
    print('------------------total_bikes()-------------------')
    t_bikes = instance.total_bikes()
    print(type(t_bikes))
    print(t_bikes)
    print()

    print('------------------total_docks()-------------------')
    t_docks = instance.total_docks()
    print(type(t_docks))
    print(t_docks)
    print()

    print('-----------------percent_avail()------------------')
    p_avail = instance.percent_avail(342885) # replace with station ID
    print(type(p_avail))
    print(p_avail)
    print()

    print('----------------closest_stations()----------------')
    c_stations = instance.closest_stations(40.444618, -79.954707) # replace with latitude and longitude
    print(type(c_stations))
    print(c_stations)
    print()

    print('-----------------closest_bike()-------------------')
    c_bike = instance.closest_bike(40.444618, -79.954707) # replace with latitude and longitude
    print(type(c_bike))
    print(c_bike)
    print()

    print('---------------station_bike_avail()---------------')
    s_bike_avail = instance.station_bike_avail(40.42802, -79.969799) # replace with exact latitude and longitude of station
    print(type(s_bike_avail))
    print(s_bike_avail)

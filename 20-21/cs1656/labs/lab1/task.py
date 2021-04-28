import os
from requests import get
import json
import csv
import ssl
ssl._create_default_https_context = ssl._create_unverified_context

class Task(object):
    def __init__(self):
        self.response = get('http://db.cs.pitt.edu/courses/cs1656/data/hours.json', verify=False)
        self.hours = json.loads(self.response.content)

    def part4(self):
        f = open('hours.csv', 'w', newline='')
        csv_file = csv.writer(f)

        csv_file.writerow(self.hours[0].keys())
        for hour in self.hours:
            csv_file.writerow(hour.values())

        f.close()

    def part5(self):
        f = open('part5.txt', 'w')
        csv_file = open('hours.csv', 'r')
        hoursreader = csv.reader(csv_file)

        for row in hoursreader:
            f.write(','.join(row))
            f.write('\n')

        csv_file.close()
        f.close()

    def part6(self):
        f = open('part6.txt', 'w')
        csv_file = open('hours.csv', 'r')
        hoursreader = csv.reader(csv_file)

        for row in hoursreader:
            f.write(str(row))

        csv_file.close()
        f.close()

    def part7(self):
        f = open('part7.txt', 'w')
        csv_file = open('hours.csv', 'r')
        hoursreader = csv.reader(csv_file)

        for row in hoursreader:
            for field in row:
                f.write(field)

        csv_file.close()
        f.close()

if __name__ == '__main__':
    task = Task()
    task.part4()
    task.part5()
    task.part6()
    task.part7()
import json
from datetime import datetime, timedelta
import requests
import pandas as pd
import numpy as np
from scipy.spatial.distance import euclidean, cityblock, cosine
import ssl
ssl._create_default_https_context = ssl._create_unverified_context

class Task(object):
    def __init__(self, data):
        self.df = pd.read_csv(data)

    def t1(self, name):
        sim_weights = {}
        missing_ratings = []

        for user in self.df.columns[1:]:
            if user == name:
                continue
            df_subset = self.df[[name,user]][self.df[name].notnull() & self.df[user].notnull()]
            dist = cosine(df_subset[name], df_subset[user])
            sim_weights[user] = 1.0 / (1.0 + dist)

        df_subset = self.df[name]
        for x in range(0, len(self.df)):
            movie_title = self.df['Alias'][x]
            user_rating = df_subset.iloc[x]

            if np.isnan(user_rating):
                predicted_rating = 0.0
                weights_sum = 0.0
                ratings = self.df.iloc[x][1:]

                for user in self.df.columns[1:]:
                    if (user != name and not np.isnan(sim_weights[user]) and not np.isnan(ratings[user])):
                        predicted_rating += ratings[user] * sim_weights[user]
                        weights_sum += sim_weights[user]

                predicted_rating /= weights_sum
                missing_ratings.append((movie_title, predicted_rating))

        return missing_ratings

    def t2(self, name):
        unrated_movies = {}
        sim_weights = {}
        predicted_ratings = []

        for x in range(0, len(self.df)):
            if np.isnan(self.df[name][x]):
                unrated_movies[x] = self.df['Alias'][x]

        df_t = self.df.transpose()

        for x in unrated_movies:
            movie_title = unrated_movies[x]

            for y in range(0, len(self.df)):
                movie = self.df['Alias'][y]
                if movie_title == movie:
                    continue

                df_subset = df_t[[x,y]][df_t[x].notnull() & df_t[y].notnull()]
                dist = cosine(df_subset[x][1:].astype(float), df_subset[y][1:].astype(float))
                sim_weights[movie] = 1.0 / (1.0 + dist)

            df_subset = self.df[['Alias', name]]
            predicted_rating = 0.0
            weights_sum = 0.0

            for y in range(0, len(self.df)):
                title = self.df['Alias'][y]
                user_rating = self.df[name][y]

                if not np.isnan(user_rating):
                    predicted_rating += user_rating * sim_weights[title]
                    weights_sum += sim_weights[title]

            predicted_rating /= weights_sum
            predicted_ratings.append((movie_title, predicted_rating))

        return predicted_ratings

    def t3(self, name):
        sim_weights = {}
        missing_ratings = []

        for user in self.df.columns[1:]:
            if user == name:
                continue
            df_subset = self.df[[name,user]][self.df[name].notnull() & self.df[user].notnull()]
            dist = cosine(df_subset[name], df_subset[user])
            sim_weights[user] = 1.0 / (1.0 + dist)

        sim_weights = {k: v for k, v in sorted(sim_weights.items(), key=lambda item: item[1], reverse=True)[:10]}

        df_subset = self.df[name]
        for x in range(0, len(self.df)):
            movie_title = self.df['Alias'][x]
            user_rating = df_subset.iloc[x]

            if np.isnan(user_rating):
                predicted_rating = 0.0
                weights_sum = 0.0
                ratings = self.df.iloc[x][1:]

                for user in self.df.columns[1:]:
                    if (user != name and user in sim_weights and not np.isnan(sim_weights[user]) and not np.isnan(ratings[user])):
                        predicted_rating += ratings[user] * sim_weights[user]
                        weights_sum += sim_weights[user]

                predicted_rating /= weights_sum
                missing_ratings.append((movie_title, predicted_rating))

        return missing_ratings

if __name__ == "__main__":
    # using the class movie ratings data we collected in http://data.cs1656.org/movie_class_responses.csv
    t = Task('http://data.cs1656.org/movie_class_responses.csv')
    print(t.t1('BabyKangaroo'))
    print('------------------------------------')
    print(t.t2('BabyKangaroo'))
    print('------------------------------------')
    print(t.t3('BabyKangaroo'))
    print('------------------------------------')
import json
from datetime import datetime, timedelta
import requests
import pandas as pd
import ssl
ssl._create_default_https_context = ssl._create_unverified_context

class Task(object):
    def __init__(self):
        self.df = pd.read_csv('bank-data.csv')

    def t1(self):
        def get_avg(group):
            return group.mean()

        df_small = self.df[['sex', 'income']]
        df_group = df_small['income'].groupby(df_small['sex']).apply(get_avg)

        return df_group

    def t2(self):
        df_crosstab = pd.crosstab(self.df['save_act'], self.df['mortgage'],
                                  margins=True)
        return df_crosstab

    def t3(self):
        df_crosstab = pd.crosstab(self.df['save_act'], self.df['mortgage'],
                                  margins=True).apply(lambda r: r/600, axis=1)
        return df_crosstab

if __name__ == "__main__":
    t = Task()
    print("----T1----" + "\n")
    print(str(t.t1()) + "\n")
    print("----T2----" + "\n")
    print(str(t.t2()) + "\n")
    print("----T3----" + "\n")
    print(str(t.t3()) + "\n")

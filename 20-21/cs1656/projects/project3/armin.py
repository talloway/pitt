from collections import defaultdict
from pandas import Series, DataFrame
import itertools as it
import pandas as pd
import math
import csv
import sys
import argparse
import collections
import glob
import os
import re
import requests
import string
import sys

class Armin():
    df = None
    def generate_frequent_itemsets(self, input_filename, min_support_percentage):
        def generate_dataframe_headers():
            column_names = []

            with open(input_filename, 'r') as f:
                reader = csv.reader(f)
                data = list(reader)

                for line in data:
                    for char in line[1:]:
                        if char not in column_names:
                            column_names.append(char)

            return column_names

        def fill_dataframe(column_names):
            self.df = pd.DataFrame(columns=column_names)
            with open(input_filename, 'r') as f:
                for line in f:
                    new_dict = dict.fromkeys(column_names, 0)
                    line = line.replace(',', '')

                    for col in column_names:
                        if col in line:
                            new_dict[col] = 1
                    self.df = self.df.append(new_dict, ignore_index=True)

        def create_power_set(input):
            if (len(input) == 0):
                return [[]]
            else:
                main_subset = [ ]
            for small_subset in create_power_set(input[1:]):
                main_subset += [small_subset]
                main_subset += [[input[0]] + small_subset]
            return main_subset

        def get_frequent_itemsets():
            transaction_count = len(self.df)
            frequent_itemsets = []

            for set in power_set:
                support_count = 0
                dict = {
                    'set': None,
                    'support_count': 0,
                    'support_percentage': 0
                }

                if set == []:
                    continue

                for index, row in self.df.iterrows():
                    is_valid = True
                    for element in set:
                        if row[element] == 0:
                            is_valid = False
                    if is_valid:
                        support_count += 1

                support_percentage = support_count / transaction_count
                if support_percentage >= min_support_percentage:
                    dict['set'], dict['support_count'], dict['support_percentage'] = set, support_count, support_percentage
                    frequent_itemsets.append(dict)

            return frequent_itemsets

        column_names = generate_dataframe_headers()
        fill_dataframe(column_names)
        power_set = create_power_set(column_names)
        frequent_itemsets = get_frequent_itemsets()

        return frequent_itemsets

    def generate_association_rules(self, frequent_itemsets, min_confidence):
        association_rules = []

        def partitions(collection):
            if len(collection) == 1:
                yield [ collection ]
                return

            first = collection[0]
            for smaller in partitions(collection[1:]):

                for n, subset in enumerate(smaller):
                    yield smaller[:n] + [[ first ] + subset]  + smaller[n+1:]
                
                yield [ [ first ] ] + smaller

        def format_partitions(set):
            final_partitions = []

            for partition in set:
                if len(partition) == 2:
                    new_list = [partition[1], partition[0]]
                    final_partitions.append(partition)
                    final_partitions.append(new_list)

            return final_partitions

        def get_support_count_lhs(lhs):
            support_count_lhs = 0

            for index, row in self.df.iterrows():
                is_valid = True
                for item in lhs:
                    if row[item] == 0:
                        is_valid = False
                if is_valid == True:
                    support_count_lhs += 1

            return support_count_lhs

        for itemset in frequent_itemsets:
            set = itemset['set']
            support_count = itemset['support_count']            # sup (i U j)
            support_percentage = itemset['support_percentage']

            if len(set) < 2:
                continue

            partition = format_partitions(partitions(set))

            for part in partition:
                lhs = part[0]
                rhs = part[1]
                dict = {
                    'lhs': None,
                    'rhs': None,
                    'support_percentage': 0,
                    'confidence': 0
                }

                lhs_support_count = get_support_count_lhs(lhs)
                confidence = support_count / lhs_support_count

                if confidence >= min_confidence:
                    dict = {
                        'lhs': lhs,
                        'rhs': rhs,
                        'support_percentage': support_percentage,
                        'confidence': confidence
                    }
                    association_rules.append(dict)

        return association_rules

    def write_output(self, output_filename, frequent_itemsets, association_rules):
        frequent_itemsets = sorted(frequent_itemsets, key=lambda i: i['support_percentage'], reverse=True)
        with open(output_filename, 'w') as f:
            for itemset in frequent_itemsets:
                sorted_set = sorted(itemset['set'])
                f.write('S,' + '{:.4f}'.format(itemset['support_percentage']))
                for item in sorted_set:
                    f.write(',' + item)
                f.write('\n')

            for rule in association_rules:
                sorted_lhs = sorted(rule['lhs'])
                sorted_rhs = sorted(rule['rhs'])
                f.write('R,' + '{:.4f}'.format(rule['support_percentage']) + ',' + '{:.4f}'.format(rule['confidence']))
                for item in sorted_lhs:
                    f.write(',' + item)
                f.write(",'=>'")
                for item in sorted_rhs:
                    f.write(',' + item)
                f.write('\n')

    def apriori(self, input_filename, output_filename, min_support_percentage, min_confidence):
        """
        Implement the Apriori algorithm, and write the result to an output file

        PARAMS
        ------
        input_filename: String, the name of the input file
        output_filename: String, the name of the output file
        min_support_percentage: float, minimum support percentage for an itemset
        min_confidence: float, minimum confidence for an association rule to be significant

        """
        frequent_itemsets = self.generate_frequent_itemsets(input_filename,
                                                            min_support_percentage)
        print(frequent_itemsets)
        print("\n")
        association_rules = self.generate_association_rules(frequent_itemsets,
                                                            min_confidence)
        print(association_rules)
        print("\n")
        self.write_output(output_filename, frequent_itemsets, association_rules)

if __name__ == "__main__":
    armin = Armin()
    armin.apriori('input.csv', 'output.sup=0.5,conf=0.7.csv', 0.5, 0.7)
    armin.apriori('input.csv', 'output.sup=0.5,conf=0.8.csv', 0.5, 0.8)
    armin.apriori('input.csv', 'output.sup=0.6,conf=0.8.csv', 0.6, 0.8)
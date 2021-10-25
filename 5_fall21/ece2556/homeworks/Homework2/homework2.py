import bct
import mat73
import pandas as pd
import numpy as np
from scipy import stats

data = mat73.loadmat('subject_data.mat')['all_matrices']
groups = pd.read_excel('subj_information_4_students.xlsx')

# Dimensions of data
n_len_x  = len(data)
n_len_y  = len(data[0])
networks = len(data[0][0])
subjects = len(data[0][0][0])

status1 = 'Status 1'
status2 = 'Status 2'
status3 = 'Status 3'
status4 = 'Status 4'

# note: transitivity and assortativity are GLOBAL features
dgs = 'degrees'
sth = 'strength'
clc = 'clustering_coefficient'
btw = 'betweenness centrality'
eig = 'eigenvector centrality'

features = [dgs, sth, clc, btw, eig]

def feature_comparison(feature):
    group1 = []
    group2 = []
    group3 = []
    group4 = []

    for network in range(0, networks):
        for subject in range(0, subjects):
            subject_data = []

            # get all the data for an individual subject
            for n_x in range(0, n_len_x):
                for n_y in range(0, n_len_y):
                    subject_data.append(data[n_x][n_y][network][subject])

            # reshape to be 113x113 numpy array
            subject_data = np.asarray(subject_data)
            subject_data = np.reshape(subject_data, (-1, n_len_x))

            # get feature - use weighted network version
            if feature == dgs:
                subject_data = bct.degrees_und(subject_data)
            elif feature == sth:
                subject_data = bct.strengths_und(subject_data)
            elif feature == clc:
                subject_data = bct.clustering_coef_wu(subject_data)
            elif feature == btw:
                subject_data = bct.betweenness_wei(subject_data)
            elif feature == eig:
                subject_data = bct.eigenvector_centrality_und(subject_data)


            # append subject feature data to group's overall data
            status = groups['Status'][groups['Subj_ID'] == subject+1].item()

            if status == status1:
                group1.append(subject_data)
            elif status == status2:
                group2.append(subject_data)
            elif status == status3:
                group3.append(subject_data)
            else:
                group4.append(subject_data)

        # get average features to compare between groups
        feature_len = n_len_x

        avg1 = np.zeros((feature_len, 1))
        avg2 = np.zeros((feature_len, 1))
        avg3 = np.zeros((feature_len, 1))
        avg4 = np.zeros((feature_len, 1))

        for group, avg in zip([group1, group2, group3, group4], [avg1, avg2, avg3, avg4]):
            for i in range(0, feature_len):
                for subject in group:
                        avg[i][0] += subject[i]

        # perform t-tests for different groups
        p1 = stats.ttest_ind(avg1, avg2).pvalue
        p2 = stats.ttest_ind(avg2, avg3).pvalue
        p3 = stats.ttest_ind(avg3, avg4).pvalue

        p_value = 0.05

        # perform Bonferroni correction if necessary
        p_value = p_value / feature_len

        # report the results
        print(f'Feature to be tested is: {feature}.')
        print(f'Network to be tested is: {network + 1}.')

        print(f'P value for comparison between groups 1 and 2 is {p1}.')
        if p_value > p1:
            print('Means DO differ between groups 1 and 2.')
        else:
            print('Means DO NOT differ between groups 1 and 2.')

        print(f'P value for comparison between groups 2 and 3 is {p2}.')
        if p_value > p2:
            print('Means DO differ between groups 2 and 3.')
        else:
            print('Means DO NOT differ between groups 2 and 3.')

        print(f'P value for comparison between groups 3 and 4 is {p3}.')
        if p_value > p3:
            print('Means DO differ between groups 3 and 4.')
        else:
            print('Means DO NOT differ between groups 3 and 4.')

        print('\n')
        
def main():
    for feature in features:
        feature_comparison(feature)

if __name__ == "__main__":
    main()
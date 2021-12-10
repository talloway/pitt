import cv2 as cv
import numpy as np
import os
import warnings

from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC

from functions.PCA_analysis import PCA_analysis

def q0():
    im = cv.imread('./input/train/1-L1.pgm')

    cv.imwrite('./output/ps6-0.png', im)


def q1():
    T = np.zeros((320, 10304))
    train_dir = './input/train'

    count = 0

    for fname in os.listdir(train_dir):
        im = cv.imread(os.path.join(train_dir, fname), 0)

        r, c = im.shape
        p = r * c

        im = im.reshape((p))
        T[count][:] = im
        count += 1

    cv.imwrite('./output/ps6-1-a.png', T)

    T = np.transpose(T)

    m = np.mean(T, axis=1)

    m_r = m.reshape((112, 92))

    cv.imwrite('./output/ps6-1-b.png', m_r)

    U = PCA_analysis(T, m)

    np.savetxt('./intermediate/U.txt', U)
    np.savetxt('./intermediate/M.txt', m)


def q2():
    U = np.loadtxt('./intermediate/U.txt')
    m = np.loadtxt('./intermediate/m.txt')

    pixels, eigs = U.shape
    train_subjects = 320
    test_subjects = 80

    W_training = np.zeros((train_subjects, eigs))
    W_testing = np.zeros((test_subjects, eigs))

    L_training = np.zeros((train_subjects))
    L_testing = np.zeros((test_subjects))

    train_path = './input/train'
    test_path = './input/test'

    # Create training matrix with associated label matrix
    count = 0
    for fname in os.listdir(train_path):
        label = int(fname.split('.')[0].split('L')[1])

        I = cv.imread(os.path.join(train_path, fname), 0)
        I = I.reshape((pixels))

        w = np.matmul(np.transpose(U), (I-m))

        W_training[count] = w
        L_training[count] = label
        count += 1

    print(f'Dimensions of training matrix: {W_training.shape}.')

    # Create testing matrix with associated label matrix
    count = 0
    for folder in os.listdir(test_path):
        label = int(folder[1:])

        for fname in os.listdir(os.path.join(test_path, folder)):
            I = cv.imread(os.path.join(test_path, folder, fname), 0)
            I = I.reshape((pixels))

            w = np.matmul(np.transpose(U), (I-m))

            W_testing[count] = w
            L_testing[count] = label

            count += 1

    print(f'Dimensions of testing matrix: {W_testing.shape}.')

    np.savetxt('./intermediate/W_training.txt', W_training)
    np.savetxt('./intermediate/W_testing.txt', W_testing)
    np.savetxt('./intermediate/L_training.txt', L_training)
    np.savetxt('./intermediate/L_testing.txt', L_testing)


def q3():
    warnings.filterwarnings('ignore')
    X_train = np.loadtxt('./intermediate/W_training.txt')
    X_test = np.loadtxt('./intermediate/W_testing.txt')
    Y_train = np.loadtxt('./intermediate/L_training.txt')
    Y_test = np.loadtxt('./intermediate/L_testing.txt')

    k_values = [1, 3, 5, 7, 9, 11]

    for k in k_values:
        knn = KNeighborsClassifier(n_neighbors=k)
        knn.fit(X_train, Y_train)
        acc = knn.score(X_test, Y_test)

        print(f'KNN accuracy for {k} neighbors is {acc}.')

    print('\n')

    for kernel in ['linear', 'rbf', 'poly']:
        svm = SVC(kernel=kernel)
        svm.fit(X_train, Y_train)
        acc = svm.score(X_test, Y_test)

        print(f'SVM accuracy for {kernel} kernel is {acc}.')


def main():
    # q0()
    # q1()
    # q2()
    q3()

if __name__ == "__main__":
    main()
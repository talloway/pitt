import numpy as np
import cv2 as cv

def LK(img1, img2):
    rows = img1.shape[0]
    cols = img1.shape[1]

    Ix1 = cv.Sobel(img1, cv.CV_64F, 1, 0, ksize=5)
    Iy1 = cv.Sobel(img1, cv.CV_64F, 0, 1, ksize=5)

    Ix2 = cv.Sobel(img2, cv.CV_64F, 1, 0, ksize=5)
    Iy2 = cv.Sobel(img2, cv.CV_64F, 0, 1, ksize=5)

    Ix = 0.5 * (Ix1 + Ix2)
    Iy = 0.5 * (Iy1 + Iy2)

    It = img2 - img1

    U = np.zeros((rows, cols))
    V = np.zeros((rows, cols))

    for i in range(0, rows):
        for j in range(0, cols):
            A = np.zeros((2, 2))
            b = np.zeros((2, 1))

            A[0][0] = Ix[i][j] ** 2
            A[0][1] = Ix[i][j] * Iy[i][j]
            A[1][0] = Ix[i][j] * Iy[i][j]
            A[1][1] = Iy[i][j] ** 2

            b[0][0] = -1 * Ix[i][j] * It[i][j]
            b[1][0] = -1 * Iy[i][j] * It[i][j]

            u, v = np.matmul(np.linalg.pinv(A), b)

            U[i][j] = u
            V[i][j] = v

    return U,V
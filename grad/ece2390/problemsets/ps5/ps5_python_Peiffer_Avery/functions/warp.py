import numpy as np

def warp(I2, U, V):
    rows, cols = I2.shape
    W = np.zeros((rows, cols))

    for i in range(0, rows):
        for j in range(0, cols):
            k = int(i + U[i][j])
            l = int(j + V[i][j])

            if k < 0 or l < 0 or k >= rows or l >= cols:
                continue

            W[i][j] = I2[k][l]

    return W
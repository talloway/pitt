import numpy as np

# Create the A matrix of dimension 2Nx12
# [X1 Y1 Z1 1 0 0 0 0 -u1X1 -u1Y1 -u1Z1 -u1]
# [0 0 0 0 X1 Y1 Z1 1 -v1X1 -v1Y1 -v1Z1 -v1]
# [... repeating for each point]
def gen_a(arr3d, arr2d):
    num_points = arr3d.shape[0]
    a = np.zeros((num_points*2, 12))
    idx = 0
    for a_3, a_2 in zip(arr3d, arr2d):
        for i in range(0, 3):
            a[idx][i] = a_3[i]
            a[idx+1][i+4] = a_3[i]

        a[idx][3] = 1
        a[idx+1][7] = 1

        for i in range(8, 11):
            a[idx][i] = -1*a_2[0]*a_3[i-8]
            a[idx+1][i] = -1*a_2[1]*a_3[i-8]

        a[idx][11] = -1*a_2[0]
        a[idx+1][11] = -1*a_2[1]

        idx += 2
    return a
import numpy as np

# Create the correspondence matrix of Nx9
# [u'u  u'v  u'  v'u  v'v  v'  u  v  1]
# [... repeating for each point]
# let a be u/v and b be u'/v'
# u_i = a[i][0]
# v_i = a[i][1]
# u'_i = b[i][0]
# v'_i = b[i][1]

def gen_corr(a, b):
    num_points = a.shape[0]
    cm = np.zeros((num_points, 9))

    for i in range(0, num_points):
        cm[i][0] = a[i][0] * b[i][0]
        cm[i][1] = a[i][1] * b[i][0]
        cm[i][2] = b[i][0]
        cm[i][3] = a[i][0] * b[i][1]
        cm[i][4] = a[i][1] * b[i][1]
        cm[i][5] = b[i][1]
        cm[i][6] = a[i][0]
        cm[i][7] = a[i][1]
        cm[i][8] = 1

    return cm


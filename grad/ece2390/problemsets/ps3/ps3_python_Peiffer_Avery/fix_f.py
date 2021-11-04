import numpy as np

def fix_f(f):
    u, s, vt = np.linalg.svd(f, full_matrices=True)

    # s represents the decreasing diagonals along the matrix
    # set smallest value in s (last value since it's decreasing) to 0
    # then recompose f out of the (filled up) new s
    s[-1] = 0

    f = np.dot(u, np.dot(np.diag(s), vt))
    f = f / f[2, 2]
    return f

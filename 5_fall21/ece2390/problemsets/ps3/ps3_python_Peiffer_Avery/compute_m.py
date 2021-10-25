import numpy as np

def compute_m(a):
    # use SVD to get m matrix
    u, d, vt = np.linalg.svd(a, full_matrices=True)

    v = np.transpose(vt)

    # seems like the numpy version of this ends up with all the values scaled
    # by negative 1
    m = -1*v[:,-1].reshape((3, 4))

    return m
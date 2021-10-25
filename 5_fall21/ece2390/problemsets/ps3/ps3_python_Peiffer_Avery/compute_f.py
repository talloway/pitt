import numpy as np

def compute_f(y):
    u, d, vt = np.linalg.svd(y, full_matrices=True)

    # seems like the numpy version of this ends up with all the values scaled
    # by negative 1
    f = vt[-1].reshape((3, 3))
    return np.transpose(f)
import numpy as np

def get_preds(m, arr3d):
    h = np.ones((arr3d.shape[0], 1))
    arr3d = np.hstack((arr3d, h))

    res = np.matmul(m, np.transpose(arr3d))

    for i in range(0, len(res[0])):
        res[0][i] /= res[2][i]
        res[1][i] /= res[2][i]
        res[2][i] = 1

    res = np.transpose(res)
    res = np.delete(res, 2, 1)

    return res
import numpy as np

def get_residual(preds, arr2d):
    dif = preds.ravel() - arr2d.ravel()
    ssd = np.dot(dif, dif)

    return ssd
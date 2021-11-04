import cv2 as cv
import numpy as np

def compute_gradients(fname):
    img = cv.imread(fname, 0)

    Ih = cv.Sobel(img, cv.CV_64F, 1, 0, ksize=5)
    Iv = cv.Sobel(img, cv.CV_64F, 0, 1, ksize=5)

    comb = np.concatenate((Ih, Iv), axis=1)

    return comb
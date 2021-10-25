import numpy as np
import cv2 as cv
import math

def hough_peaks(H, numpeaks, accumulator_fname=None, output_fname=None):
    peaks = []
    numpeaks = -1 * numpeaks

    rows = H.shape[0]
    cols = H.shape[1]

    # Get the indices of the n highest values in a 1d version
    H_flat = H.ravel()
    ind = np.argpartition(H_flat, numpeaks)[numpeaks:]

    for index in ind:
        r = math.floor(index / rows)
        c = index % cols
        peaks.append([r * 4, c])

    if accumulator_fname is not None:
        im = cv.imread(accumulator_fname)

        for peak in peaks:
            im = cv.circle(im, (peak[1], peak[0]), 3, (0, 0, 255), -1)

    if output_fname is not None:
        cv.imwrite(output_fname, im)

    return peaks
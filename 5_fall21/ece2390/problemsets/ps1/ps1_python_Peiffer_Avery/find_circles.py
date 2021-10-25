import numpy as np

from hough_circles_acc import hough_circles_acc
from hough_peaks import hough_peaks

def find_circles(im, radii):
    min_rad = radii[0]
    max_rad = radii[1]

    centers = []
    radii_arr = []

    rad_arr = np.arange(min_rad, max_rad, 1).tolist()

    for rad in rad_arr:
        H = hough_circles_acc(im, rad)
        peaks = hough_peaks(H, 3)

        for peak in peaks:
            centers.append(peak)
            radii_arr.append(rad)

    return [centers, radii_arr]
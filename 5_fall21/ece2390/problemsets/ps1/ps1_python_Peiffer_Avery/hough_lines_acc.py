import numpy as np
import pandas as pd
import math
import matplotlib.pyplot as plt
import cv2 as cv

# NOTE: I had to make the hough_lines_acc call a little different since
# I am using Python. The function call from ps1.py with these arguments will be:

# theta_range = np.arange(-90, 89, 0.5).tolist()
# H, theta, rho = hough_lines_acc(img, rho_resolution=0.5, theta=theta_range)

# I also had to add an optional output_fname argument so that the accumulator
# array can be written to an image.

def hough_lines_acc(img, rho_resolution, theta, output_fname=None):
    # Initialize parameters and accumulator array
    height = img.shape[0]
    width = img.shape[1]

    d = int(math.sqrt(height ** 2 + width ** 2))
    rho = np.arange(-d, d, rho_resolution).tolist()

    # Offset rho and theta so they fit in the array correctly
    theta_offset = theta[0]
    rho_offset = -1 * d

    H = np.zeros([len(rho), len(theta)])

    # Find each edge point and increment it in the accumulator array
    for i in range(0, height): # rows (vertical - sin theta)
        for j in range(0, width): # cols (horizontal - cos theta)
            if img[i][j] == 255:
                for angle in theta:
                    t = angle * math.pi / 180
                    dist = math.floor(j * math.cos(t) + i * math.sin(t))

                    H[int(dist - rho_offset)][int(angle - theta_offset)] += 1

    # Normalize array so it can be written as an image
    max = np.amax(H)
    for x in np.nditer(H):
        x = int(255 * x / max)

    if output_fname is not None:
        cv.imwrite(output_fname, H)

    return H, theta, rho


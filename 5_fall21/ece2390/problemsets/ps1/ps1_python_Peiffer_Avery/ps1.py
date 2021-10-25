import cv2 as cv
import numpy as np
import pandas as pd
import math

from hough_lines_acc import hough_lines_acc
from hough_peaks import hough_peaks
from hough_lines_draw import hough_lines_draw
from hough_circles_acc import hough_circles_acc
from find_circles import find_circles

# Global parameters
theta_min = -90
theta_max = 89

# Convert rho and theta back to usable values using rho_resolution and theta_range
# Rho in interval of [-diag, diag] instead of [0, diag * 2]
# Theta in interval of [theta_min, theta_max] instead of [0, 180]
def normalize_peaks(im, rho_resolution, theta_step, peaks):
    height = im.shape[0]
    width = im.shape[1]
    diag = int(math.sqrt(height ** 2 + width ** 2))

    for peak in peaks:
        peak[0] = -1 * diag + peak[0] * rho_resolution
        peak[1] = theta_min + peak[1] * theta_step

    return peaks

# Questions 1 and 2
def hough_transform_lines():
    fname = './input/ps1-input0.png'
    im = cv.imread(fname)
    img_edges = cv.Canny(im, 10, 250)
    cv.imwrite('./output/ps1-1-a-1.png', img_edges)

    theta_step = 1
    rho_resolution = 1

    theta_range = np.arange(theta_min, theta_max, theta_step).tolist()

    H, theta, rho = hough_lines_acc(img_edges, rho_resolution, theta_range, './output/ps1-2-a-1.png')

    peaks = hough_peaks(H, 10, './output/ps1-2-a-1.png', './output/ps1-2-b-1.png')

    peaks = normalize_peaks(im, rho_resolution, theta_step, peaks)

    hough_lines_draw(im, './output/ps1-2-c-1.png', peaks, rho, theta)

# Question 3
def hough_transform_lines_noise():
    fname = './input/ps1-input0-noise.png'
    im = cv.imread(fname)
    blur = cv.GaussianBlur(im, (5,5), 0)

    cv.imwrite('./output/ps1-3-a-1.png', blur)

    img_edges = cv.Canny(im, 10, 250)
    cv.imwrite('./output/ps1-3-b-1.png', img_edges)

    blur_edges = cv.Canny(blur, 10, 250)
    cv.imwrite('./output/ps1-3-b-2.png', blur_edges)

    theta_step = 1
    rho_resolution = 1

    theta_range = np.arange(theta_min, theta_max, theta_step).tolist()
    H, theta, rho = hough_lines_acc(blur_edges, rho_resolution, theta_range, './output/ps1-3-c-1.png')

    peaks = hough_peaks(H, 10, './output/ps1-3-c-1.png')

    peaks = normalize_peaks(im, rho_resolution, theta_step, peaks)

    hough_lines_draw(im, './output/ps1-3-c-2.png', peaks, rho, theta)

# Question 4
def hough_transform_lines_varying_shapes():
    im = cv.imread('./input/ps1-input1.png')
    gray = cv.cvtColor(im, cv.COLOR_BGR2GRAY)
    blur = cv.GaussianBlur(gray, (5,5), 0)

    cv.imwrite('./output/ps1-4-a-1.png', blur)

    blur_edges = cv.Canny(blur, 10, 250)
    cv.imwrite('./output/ps1-4-b-1.png', blur_edges)

    theta_step = 0.5
    rho_resolution = 1

    theta_range = np.arange(-90, 89.5, theta_step).tolist()
    H, theta, rho = hough_lines_acc(blur_edges, rho_resolution, theta_range, './output/ps1-4-c-1.png')

    peaks = hough_peaks(H, 10, './output/ps1-4-c-1.png')

    peaks = normalize_peaks(im, rho_resolution, theta_step, peaks)

    hough_lines_draw(im, './output/ps1-4-c-2.png', peaks, rho, theta)

# Question 5
def hough_transform_circles():
    im_orig = cv.imread('./input/ps1-input1.png')
    gray = cv.cvtColor(im_orig, cv.COLOR_BGR2GRAY)

    blur = cv.imread('./output/ps1-4-a-1.png')
    cv.imwrite('./output/ps1-5-a-1.png', blur)

    im_edge = cv.imread('./output/ps1-4-b-1.png')
    im_edge = cv.cvtColor(im_edge, cv.COLOR_BGR2GRAY)
    cv.imwrite('./output/ps1-5-a-2.png', im_edge)

    radius = 20
    H = hough_circles_acc(im_edge, radius)
    centers = hough_peaks(H, 10)

    for center in centers:
        cv.circle(im_orig, (center[0], center[1]), radius, (255, 0, 0), 3)

    cv.imwrite('./output/ps1-5-a-3.png', im_orig)

    # Now do find_circles for different radii
    im_orig2 = cv.imread('./input/ps1-input1.png')

    [centers, radii] = find_circles(im_edge, [20, 50])

    for center, radius in zip(centers, radii):
        cv.circle(im_orig2, (center[0], center[1]), radius, (255, 0, 0), 3)

    cv.imwrite('./output/ps1-5-b-1.png', im_orig2)

# Questions 6 and 7
def hough_realistic():
    im_orig = cv.imread('./input/ps1-input2.png')
    gray = cv.cvtColor(im_orig, cv.COLOR_BGR2GRAY)
    blur = cv.GaussianBlur(gray, (5,5), 0)
    blur2 = cv.GaussianBlur(im_orig, (5,5), 0)
    # blur3 = cv.GaussianBlur(im_orig, (5,5), 0)
    img_edges = cv.Canny(blur, 10, 250)

    theta_step = 0.5
    rho_resolution = 1

    theta_range = np.arange(-90, 89.5, theta_step).tolist()
    H, theta, rho = hough_lines_acc(img_edges, rho_resolution, theta_range)

    peaks = hough_peaks(H, 10)

    peaks = normalize_peaks(im_orig, rho_resolution, theta_step, peaks)

    hough_lines_draw(blur2, './output/ps1-6-a-1.png', peaks, rho, theta)

    [centers, radii] = find_circles(img_edges, [20, 50])
    blur3 = cv.imread('./output/ps1-6-a-1.png')

    for center, radius in zip(centers, radii):
        cv.circle(blur3, (center[0], center[1]), radius, (255, 0, 0), 3)

    cv.imwrite('./output/ps1-7-a-1.png', blur3)

# Question 8
def hough_distortion():
    im_orig = cv.imread('./input/ps1-input3.png')
    gray = cv.cvtColor(im_orig, cv.COLOR_BGR2GRAY)
    blur = cv.GaussianBlur(gray, (5,5), 0)
    img_edges = cv.Canny(blur, 10, 250)

    theta_step = 0.5
    rho_resolution = 1

    theta_range = np.arange(-90, 89.5, theta_step).tolist()
    H, theta, rho = hough_lines_acc(img_edges, rho_resolution, theta_range)

    peaks = hough_peaks(H, 10)

    peaks = normalize_peaks(im_orig, rho_resolution, theta_step, peaks)

    hough_lines_draw(blur, './output/ps1-8-a-1.png', peaks, rho, theta)

    [centers, radii] = find_circles(img_edges, [20, 50])

    blur2 = cv.GaussianBlur(im_orig, (5,5), 0)

    for center, radius in zip(centers, radii):
        cv.circle(blur2, (center[0], center[1]), radius, (255, 0, 0), 3)

    cv.imwrite('./output/ps1-8-a-1.png', blur2)


def main():
    hough_transform_lines()
    hough_transform_lines_noise()
    hough_transform_lines_varying_shapes()
    hough_transform_circles()
    hough_realistic()
    hough_distortion()


if __name__ == "__main__":
    main()
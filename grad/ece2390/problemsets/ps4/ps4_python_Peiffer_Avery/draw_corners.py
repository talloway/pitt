import numpy as np
import cv2 as cv

def draw_corners(corners, img, output_fname):
    img = cv.imread(img)

    height, width = corners.shape

    for i in range(0, height):
        for j in range(0, width):
            if corners[i][j] > 0:
                img = cv.circle(img, (j, i), 2, (255,0,0), -1)

    cv.imwrite(output_fname, img)
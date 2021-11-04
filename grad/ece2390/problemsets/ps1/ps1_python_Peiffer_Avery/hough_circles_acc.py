import cv2 as cv
import numpy as np
import math

def hough_circles_acc(im, radius):
    height = im.shape[0]
    width = im.shape[1]

    H = np.zeros([height, width])

    sobelx = cv.Sobel(im, cv.CV_64F, 1, 0, ksize=5)
    sobely = cv.Sobel(im, cv.CV_64F, 0, 1, ksize=5)

    for i in range(0, height):
        for j in range(0, width):
            if im[i][j] == 255:
                grad_x = sobelx[i][j]
                grad_y = sobely[i][j]
                theta = np.arctan2(grad_y, grad_x)
                phi = math.pi/2 - theta

                a = int(i + radius * math.cos(phi))
                b = int(j + radius * math.sin(phi))
                if a >= 0 and a < height and b >= 0 and b < width:
                    H[a][b] += 1

                a = int(i + radius * math.cos(phi))
                b = int(j - radius * math.sin(phi))
                if a >= 0 and a < height and b >= 0 and b < width:
                    H[a][b] += 1

                a = int(i - radius * math.cos(phi))
                b = int(j + radius * math.sin(phi))
                if a >= 0 and a < height and b >= 0 and b < width:
                    H[a][b] += 1

                a = int(i - radius * math.cos(phi))
                b = int(j - radius * math.sin(phi))
                if a >= 0 and a < height and b >= 0 and b < width:
                    H[a][b] += 1

    return H
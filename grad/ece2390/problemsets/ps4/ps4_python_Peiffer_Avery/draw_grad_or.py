import cv2 as cv
import numpy as np

def draw_grad_or(img, corners):
    img_g = cv.cvtColor(img, cv.COLOR_BGR2GRAY)

    Ih = cv.Sobel(img_g, cv.CV_64F, 1, 0)
    Iv = cv.Sobel(img_g, cv.CV_64F, 0, 1)

    ori = np.arctan2(Iv, Ih) * (180 / np.pi) % 180

    height, width = corners.shape

    for i in range(0, height):
        for j in range(0, width):
            if corners[i][j] > 0:
                theta = ori[i][j]
                length = 7

                x_pt =  int(j + length * np.cos(theta));
                y_pt =  int(i + length * np.sin(theta));

                img = cv.arrowedLine(img, (j, i), (x_pt, y_pt), (0,0,255), 1)

    return img
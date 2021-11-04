import numpy as np
import cv2 as cv

def generate_keypoints(img, corners):
    img = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
    keypoints = []

    Ih = cv.Sobel(img, cv.CV_64F, 1, 0)
    Iv = cv.Sobel(img, cv.CV_64F, 0, 1)

    ori = np.arctan2(Iv, Ih) * (180 / np.pi) % 180

    height, width = corners.shape

    for i in range(0, height):
        for j in range(0, width):
            if corners[i][j] > 0:
                keypoint = cv.KeyPoint(x=j, y=i, size=1, angle=ori[i][j], octave=0)
                keypoints.append(keypoint)

    return keypoints
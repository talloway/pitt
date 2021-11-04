import cv2 as cv
import numpy as np

def get_SIFT_descriptors(img, keypoints):
    sift = cv.SIFT_create()

    points, descriptors = sift.compute(img, keypoints)

    return points, descriptors
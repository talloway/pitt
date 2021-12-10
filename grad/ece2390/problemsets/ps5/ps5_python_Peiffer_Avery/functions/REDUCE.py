import cv2 as cv

def REDUCE(img):
    img = cv.pyrDown(img)

    return img

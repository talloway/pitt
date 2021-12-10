import cv2 as cv

def EXPAND(img):
    rows, cols = img.shape
    img = cv.pyrUp(img, dstsize=(2 * cols, 2 * rows))

    return img
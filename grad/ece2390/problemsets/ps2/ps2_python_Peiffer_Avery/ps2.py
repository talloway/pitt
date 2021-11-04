# ps2
import os
import numpy as np
import cv2

from disparity_ssd import disparity_ssd
from disparity_ncorr import disparity_ncorr

def scale_map(D):
    max = np.amax(D)
    D = D * 255 / max
    D = np.abs(D)

    return D

def q1():
    L = cv2.imread(os.path.join('input', 'pair0-L.png'), 0) * (1.0 / 255.0)  # grayscale, [0, 1]
    R = cv2.imread(os.path.join('input', 'pair0-R.png'), 0) * (1.0 / 255.0)

    D_L = disparity_ssd(L, R, disparity_cap=5)
    D_R = disparity_ssd(R, L, disparity_cap=5)

    D_L = scale_map(D_L)
    D_R = scale_map(D_R)

    cv2.imwrite('./output/ps2-1-a-1.png', D_L)
    cv2.imwrite('./output/ps2-1-a-2.png', D_R)

def q2():
    L = cv2.imread(os.path.join('input', 'pair1-L.png'), 0)
    R = cv2.imread(os.path.join('input', 'pair1-R.png'), 0)

    D_L = disparity_ssd(L, R, disparity_cap=5)
    D_R = disparity_ssd(R, L, disparity_cap=5)

    D_L = scale_map(D_L)
    D_R = scale_map(D_R)

    cv2.imwrite('./output/ps2-2-a-1.png', D_L)
    cv2.imwrite('./output/ps2-2-a-2.png', D_R)


def q3():
    ## 3a
    def add_gaussian_noise(X):
        gaussian_noise_imgs = []
        row, col = X.shape
        # Gaussian distribution parameters
        mean = 0
        sigma = 10

        gaussian = np.random.normal(mean, sigma, size=(row, col)).astype(np.float32)
        return np.add(X, gaussian).astype(np.uint8)

    L = cv2.imread(os.path.join('input', 'pair1-L.png'), 0)
    R = cv2.imread(os.path.join('input', 'pair1-R.png'), 0)

    L = add_gaussian_noise(L)
    R = add_gaussian_noise(R)

    D_L = disparity_ssd(L, R, disparity_cap=80)
    D_R = disparity_ssd(R, L, disparity_cap=80)

    D_L = scale_map(D_L)
    D_R = scale_map(D_R)

    cv2.imwrite('./output/ps2-3-a-1.png', D_L)
    cv2.imwrite('./output/ps2-3-a-2.png', D_R)

    ## 3b
    contrast_mult = 1.1

    L = cv2.imread(os.path.join('input', 'pair1-L.png'), 0)
    R = cv2.imread(os.path.join('input', 'pair1-R.png'), 0)

    L = contrast_mult*L

    D_L = disparity_ssd(L, R, disparity_cap=80)
    D_R = disparity_ssd(R, L, disparity_cap=80)

    D_L = scale_map(D_L)
    D_R = scale_map(D_R)

    cv2.imwrite('./output/ps2-3-b-1.png', D_L)
    cv2.imwrite('./output/ps2-3-b-2.png', D_R)

## 4
def q4():
    ## 4a
    L = cv2.imread(os.path.join('input', 'pair1-L.png'), 0)
    R = cv2.imread(os.path.join('input', 'pair1-R.png'), 0)

    D_L = disparity_ncorr(L, R, disparity_cap=80)
    D_R = disparity_ncorr(R, L, disparity_cap=80)

    D_L = scale_map(D_L)
    D_R = scale_map(D_R)

    cv2.imwrite('./output/ps2-4-a-1.png', D_L)
    cv2.imwrite('./output/ps2-4-a-2.png', D_R)

    ## 4b
    def add_gaussian_noise(X):
        gaussian_noise_imgs = []
        row, col = X.shape
        # Gaussian distribution parameters
        mean = 0
        sigma = 10

        gaussian = np.random.normal(mean, sigma, size=(row, col)).astype(np.float32)
        return np.add(X, gaussian).astype(np.uint8)

    L = cv2.imread(os.path.join('input', 'pair1-L.png'), 0)
    R = cv2.imread(os.path.join('input', 'pair1-R.png'), 0)

    L = add_gaussian_noise(L)
    R = add_gaussian_noise(R)

    D_L = disparity_ncorr(L, R, disparity_cap=80)
    D_R = disparity_ncorr(R, L, disparity_cap=80)

    D_L = scale_map(D_L)
    D_R = scale_map(D_R)

    cv2.imwrite('./output/ps2-4-b-1.png', D_L)
    cv2.imwrite('./output/ps2-4-b-2.png', D_R)

    contrast_mult = 1.1

    L = cv2.imread(os.path.join('input', 'pair1-L.png'), 0)
    R = cv2.imread(os.path.join('input', 'pair1-R.png'), 0)

    L = contrast_mult*L

    D_L = disparity_ncorr(L, R, disparity_cap=80)
    D_R = disparity_ncorr(R, L, disparity_cap=80)

    D_L = scale_map(D_L)
    D_R = scale_map(D_R)

    cv2.imwrite('./output/ps2-4-b-3.png', D_L)
    cv2.imwrite('./output/ps2-4-b-4.png', D_R)

## 5
def q5():
    L = cv2.imread(os.path.join('input', 'pair2-L.png'), 0)
    R = cv2.imread(os.path.join('input', 'pair2-R.png'), 0)

    contrast_mult = 1.15

    L = contrast_mult*L

    D_L = disparity_ncorr(L, R, disparity_cap=80)
    D_R = disparity_ncorr(R, L, disparity_cap=80)

    D_L = scale_map(D_L)
    D_R = scale_map(D_R)

    cv2.imwrite('./output/ps2-5-a-1.png', D_L)
    cv2.imwrite('./output/ps2-5-a-2.png', D_R)


def main():
    # q1()
    # q2()
    # q3()
    q4()
    q5()

if __name__ == "__main__":
    main()




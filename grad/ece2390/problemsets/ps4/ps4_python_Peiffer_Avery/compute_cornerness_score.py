import numpy as np
import cv2 as cv

def compute_cornerness_score(img):
    img = cv.imread(img, 0)
    Ih = cv.Sobel(img, cv.CV_64F, 1, 0, ksize=5)
    Iv = cv.Sobel(img, cv.CV_64F, 0, 1, ksize=5)

    height, width = img.shape
    window_size = 5
    half_window_size = int(window_size / 2)
    k_constant = 0.05

    cornerness_scores = np.zeros((height, width))

    for i in range(0, height):
        for j in range(0, width):
            if i <= 2 or (height - i) <= 2 or j <= 2 or (width - j) <= 2:
                cornerness_scores[i, j] = 0
                continue
            M = np.zeros((2, 2))
            E = np.zeros((window_size, window_size))

            for k in range(-half_window_size, half_window_size + 1):
                x_neighbor = j + k
                for l in range(-half_window_size, half_window_size + 1):
                    if k == 0 and l == 0:
                        continue
                    y_neighbor = i + l

                    M[0, 0] += Ih[y_neighbor, x_neighbor] ** 2
                    M[0, 1] += Ih[y_neighbor, x_neighbor] * Iv[y_neighbor, x_neighbor]
                    M[1, 0] += Ih[y_neighbor, x_neighbor] * Iv[y_neighbor, x_neighbor]
                    M[1, 1] += Iv[y_neighbor, x_neighbor] ** 2

                    E[k + half_window_size, l + half_window_size] = \
                        abs(np.linalg.det(M) - k_constant * M.trace()**2)

            cornerness_scores[(i, j)] = np.max(E)

    return cornerness_scores
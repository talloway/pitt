import cv2 as cv
import numpy as np

def draw_putative_matches(imgA, imgB, matches, kA, kB, output):
    height, width, channels = imgA.shape
    comb = np.concatenate((imgA, imgB), axis=1)

    for match in matches:
        ptA = kA[match.queryIdx]
        ptB = kB[match.trainIdx]

        x1 = int(ptA.pt[0])
        y1 = int(ptA.pt[1])

        x2 = int(ptB.pt[0] + width)
        y2 = int(ptB.pt[1])

        comb = cv.line(comb, (x1,y1), (x2,y2), (0,0,255), 1)

    cv.imwrite(output, comb)
import cv2 as cv
import math

def hough_lines_draw(im, output, peaks, rho, theta):
    height = im.shape[0]
    width = im.shape[1]

    line_width = 2
    pixel_offset = 5

    for peak in peaks:
        rho = peak[0]
        theta = peak[1] * math.pi / 180

        if theta == 0:
            column = int(math.cos(theta) * rho)
            im = cv.line(im, (abs(column) + pixel_offset, 0), (abs(column) + pixel_offset, height), (0, 255, 0), line_width)

        elif theta > 1.57 or theta < -1.57:
            row = int(math.sin(theta) * rho)
            im = cv.line(im, (0, abs(row)), (256, abs(row)), (0, 255, 0), line_width)

        elif theta > 0:
            row = int(rho / (math.cos(math.pi / 2 - theta)))
            column = int(rho / math.cos(theta))
            im = cv.line(im, (0, abs(row)), (column, 0), (0,255,0), line_width)

        else: # theta < 0
            column = int(rho / math.cos(theta))
            row = int((width - column) / math.tan(theta))
            im = cv.line(im, (width, abs(row)), (abs(column), 0), (0,255,0), line_width)


    cv.imwrite(output, im)
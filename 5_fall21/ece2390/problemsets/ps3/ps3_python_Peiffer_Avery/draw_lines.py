import numpy as np
import cv2 as cv

def draw_lines(f, b, a_pts, output_fname):
    b = cv.imread(b)

    r, c = b.shape[:2]

    ul = np.array([1, 1, 1])
    bl = np.array([1, r, 1])
    ur = np.array([c, 1, 1])
    br = np.array([c, r, 1])

    ll = np.cross(ul, bl)
    lr = np.cross(ur, br)

    h = np.ones((a_pts.shape[0], 1))
    a_pts = np.hstack((a_pts, h))

    for pt in a_pts:
        li = np.matmul(np.transpose(f), pt)
        li = li / li[2]

        pil = np.cross(li, ll)
        pir = np.cross(li, lr)
        pil = pil / pil[2]
        pir = pir / pir[2]

        pil = pil.astype(int)
        pir = pir.astype(int)

        b = cv.line(b, tuple(pil[:2]), tuple(pir[:2]), (255,0,0), 1)

    cv.imwrite(output_fname, b)

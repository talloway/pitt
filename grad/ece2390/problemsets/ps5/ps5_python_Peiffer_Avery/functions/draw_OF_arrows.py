import cv2 as cv

def draw_OF_arrows(img_o, U, V):
    rows = img_o.shape[0]
    cols = img_o.shape[1]


    for i in range(0, rows):
        for j in range(0, cols):

            u = int(U[i][j])
            v = int(V[i][j])

            if abs(u) < 1 and abs(v) < 1:
                continue
            k = i + u
            l = j + v

            img_o = cv.arrowedLine(img_o, (j, i), (l, k), (0, 0, 255), 1)

    return img_o

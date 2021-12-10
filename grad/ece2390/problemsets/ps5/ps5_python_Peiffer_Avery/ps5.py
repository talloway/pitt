import cv2 as cv
import numpy as np

from functions.LK import LK
from functions.REDUCE import REDUCE
from functions.EXPAND import EXPAND
from functions.draw_OF_arrows import draw_OF_arrows
from functions.warp import warp


# Lucas Kanade optical flow
def q1():
    in_path = './input/TestSeq/'
    out_path = './output/ps5-1-'
    ext = '.png'

    im1 = 'Shift0'
    ims2 = ['ShiftR2', 'ShiftR5U5', 'ShiftR10', 'ShiftR20', 'ShiftR40']
    outs = ['a-1', 'a-2', 'b-1', 'b-2', 'b-3']

    f_in_1 = in_path + im1 + ext
    img1 = cv.imread(f_in_1)
    img1 = cv.cvtColor(img1, cv.COLOR_BGR2GRAY)

    rows = img1.shape[0]
    cols = img1.shape[1]

    for im2, out in zip(ims2, outs):
        f_in_2 = in_path + im2 + ext
        f_out = out_path + out + ext
        img2 = cv.imread(f_in_2)
        img2 = cv.cvtColor(img2, cv.COLOR_BGR2GRAY)

        U, V = LK(img1, img2)

        img_o = cv.imread(f_in_1)
        img_o = draw_OF_arrows(img_o, U, V)

        cv.imwrite(f_out, img_o)


# Gaussian and Laplacian pyramids
def q2():
    num_samples = 3

    def vconcat_resize_max(im_list, interpolation=cv.INTER_CUBIC):
        w_min = max(im.shape[1] for im in im_list)
        im_list_resize = [cv.resize(im, (w_min, int(im.shape[0] * w_min / im.shape[1])), interpolation=interpolation)
                          for im in im_list]
        return cv.vconcat(im_list_resize)

    img = './input/DataSeq1/yos_img_01.jpg'
    imgs = []

    img = cv.imread(img)
    img = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
    imgs.append(img)
    img_v = img

    for i in range(0, num_samples):
        img = REDUCE(img)
        imgs.append(img)
        img_v = vconcat_resize_max([img_v, img])

    cv.imwrite('./output/ps5-2-a-1.png', img_v)


    img_v = imgs[-1]

    for i in range(0, num_samples):
        res = EXPAND(imgs[num_samples - i])

        arr = imgs[num_samples - (i+1)]

        tmp = np.empty_like(arr)
        r, c = len(arr), len(arr[0])

        for j in range(0, r):
            for k in range(0, c):
                tmp[j][k] = res[j][k]

        diff = arr - tmp

        img_v = vconcat_resize_max([img_v, diff])

    cv.imwrite('./output/ps5-2-a-2.png', img_v)


# Warping by flow
def q3():
    f_in_1s = ['./input/DataSeq1/yos_img_01.jpg', './input/DataSeq2/0.png']
    f_in_2s = ['./input/DataSeq1/yos_img_02.jpg', './input/DataSeq2/1.png']
    f_in_3s = ['./input/DataSeq1/yos_img_03.jpg', './input/DataSeq2/2.png']
    f_outs = [['./output/ps5-3-a-1.png', './output/ps5-3-a-2.png'],
              ['./output/ps5-3-a-3.png', './output/ps5-3-a-4.png']]

    K = 1

    for f_in_1, f_in_2, f_in_3, f_out in zip(f_in_1s, f_in_2s, f_in_3s, f_outs):
        IM1 = cv.imread(f_in_1)
        IM2 = cv.imread(f_in_2)
        IM3 = cv.imread(f_in_3)

        im1s = [IM1, IM2]
        im2s = [IM2, IM3]

        img_arr = []

        for im1, im2 in zip(im1s, im2s):
            im1_g = cv.cvtColor(im1, cv.COLOR_BGR2GRAY)
            im2_g = cv.cvtColor(im2, cv.COLOR_BGR2GRAY)

            imX = im1_g
            imY = im2_g
            for k in range(0, K):
                imX = REDUCE(imX)
                imY = REDUCE(imY)

            U_orig, V_orig = LK(imX, imY)
            U = U_orig
            V = V_orig

            for k in range(0, K):
                U = 2 * EXPAND(U)
                V = 2 * EXPAND(V)

            imX = draw_OF_arrows(im1, U, V)
            img_arr.append(im1)

        img_H = img_arr[0]

        for i in range(1, len(img_arr)):
            img_H = cv.hconcat([img_H, img_arr[i]])

        cv.imwrite(f_out[0], img_H)

        W = warp(imY, U, V)

        cv.imwrite(f_out[1], W)


# Hierarchical Lucas Kanade optical flow
def q4():
    def clip_shapes(A, B):
        A_r, A_c = A.shape
        B_r, B_c = B.shape

        if A_r < B_r:
            min_r = A_r
        else:
            min_r = B_r

        if A_c < B_c:
            min_c = A_c
        else:
            min_c = B_c

        temp_A = np.zeros((min_r, min_c))
        temp_B = np.zeros((min_r, min_c))

        for r in range(0, min_r):
            for c in range(0, min_c):
                temp_A[r][c] = A[r][c]
                temp_B[r][c] = B[r][c]

        return temp_A, temp_B


    base_f = './input/TestSeq/Shift0.png'
    disps = ['./input/TestSeq/ShiftR10.png', './input/TestSeq/ShiftR20.png',
             './input/TestSeq/ShiftR40.png']
    outputs = ['./output/ps5-4-a-1.png', './output/ps5-4-a-2.png']
    Ns = [3, 4, 5]

    plots = []
    warps = []

    for disp, N in zip(disps, Ns):
        base_orig = cv.imread(base_f)
        base = cv.cvtColor(base_orig, cv.COLOR_BGR2GRAY)

        shift_orig = cv.imread(disp)
        shift = cv.cvtColor(shift_orig, cv.COLOR_BGR2GRAY)

        K = N

        while K > 0:
            Lk = base
            Rk = shift

            for k in range(0, K):
                Lk = REDUCE(Lk)
                Rk = REDUCE(Rk)

            if K == N:
                rows, cols = Lk.shape
                U = np.zeros((rows, cols))
                V = np.zeros((rows, cols))

            else:
                U = 2 * EXPAND(U)
                V = 2 * EXPAND(V)

            Wk = warp(Rk, U, V)

            if K == 1:
                warps.append(Wk)

            Dx, Dy = LK(Lk, Wk)

            U, Dx = clip_shapes(U, Dx)
            V, Dy = clip_shapes(V, Dy)

            U = U + Dx
            V = V + Dy

            K -= 1

        U = 2 * EXPAND(U)
        V = 2 * EXPAND(V)

        img_o = draw_OF_arrows(base_orig, U, V)
        plots.append(img_o)

    img_H = plots[0]

    for i in range(1, len(plots)):
        img_H = cv.hconcat([img_H, plots[i]])

    warps_H = warps[0]

    for i in range(1, len(warps)):
        warps_H = cv.hconcat([warps_H, warps[i]])

    cv.imwrite(outputs[0], img_H)
    cv.imwrite(outputs[1], warps_H)


    base_fs = ['./input/DataSeq1/yos_img_01.jpg', './input/DataSeq1/yos_img_02.jpg']
    disps   = ['./input/DataSeq1/yos_img_02.jpg', './input/DataSeq1/yos_img_03.jpg']
    outputs = ['./output/ps5-4-b-1.png', './output/ps5-4-b-2.png']
    Ns = [2, 3, 4]

    plots = []
    warps = []

    for base_f, disp, N in zip(base_fs, disps, Ns):
        base_orig = cv.imread(base_f)
        base = cv.cvtColor(base_orig, cv.COLOR_BGR2GRAY)

        shift_orig = cv.imread(disp)
        shift = cv.cvtColor(shift_orig, cv.COLOR_BGR2GRAY)

        K = N

        while K > 0:
            Lk = base
            Rk = shift

            for k in range(0, K):
                Lk = REDUCE(Lk)
                Rk = REDUCE(Rk)

            if K == N:
                rows, cols = Lk.shape
                U = np.zeros((rows, cols))
                V = np.zeros((rows, cols))

            else:
                U = 2 * EXPAND(U)
                V = 2 * EXPAND(V)

            Wk = warp(Rk, U, V)

            if K == 1:
                warps.append(Wk)

            Dx, Dy = LK(Lk, Wk)

            U, Dx = clip_shapes(U, Dx)
            V, Dy = clip_shapes(V, Dy)

            U = U + Dx
            V = V + Dy

            K -= 1

        U = 2 * EXPAND(U)
        V = 2 * EXPAND(V)

        img_o = draw_OF_arrows(base_orig, U, V)
        plots.append(img_o)

    img_H = plots[0]

    for i in range(1, len(plots)):
        img_H = cv.hconcat([img_H, plots[i]])

    warps_H = warps[0]

    for i in range(1, len(warps)):
        warps_H = cv.hconcat([warps_H, warps[i]])

    cv.imwrite(outputs[0], img_H)
    cv.imwrite(outputs[1], warps_H)



    base_fs = ['./input/DataSeq2/0.png', './input/DataSeq2/1.png']
    disps   = ['./input/DataSeq2/1.png', './input/DataSeq2/2.png']
    outputs = ['./output/ps5-4-c-1.png', './output/ps5-4-c-2.png']
    Ns = [4, 5, 6]

    plots = []
    warps = []

    for base_f, disp, N in zip(base_fs, disps, Ns):
        base_orig = cv.imread(base_f)
        base = cv.cvtColor(base_orig, cv.COLOR_BGR2GRAY)

        shift_orig = cv.imread(disp)
        shift = cv.cvtColor(shift_orig, cv.COLOR_BGR2GRAY)

        K = N

        while K > 0:
            Lk = base
            Rk = shift

            for k in range(0, K):
                Lk = REDUCE(Lk)
                Rk = REDUCE(Rk)

            if K == N:
                rows, cols = Lk.shape
                U = np.zeros((rows, cols))
                V = np.zeros((rows, cols))

            else:
                U = 2 * EXPAND(U)
                V = 2 * EXPAND(V)

            Wk = warp(Rk, U, V)

            if K == 1:
                warps.append(Wk)

            Dx, Dy = LK(Lk, Wk)

            U, Dx = clip_shapes(U, Dx)
            V, Dy = clip_shapes(V, Dy)

            U = U + Dx
            V = V + Dy

            K -= 1

        U = 2 * EXPAND(U)
        V = 2 * EXPAND(V)

        img_o = draw_OF_arrows(base_orig, U, V)
        plots.append(img_o)

    img_H = plots[0]

    for i in range(1, len(plots)):
        img_H = cv.hconcat([img_H, plots[i]])

    warps_H = warps[0]

    for i in range(1, len(warps)):
        warps_H = cv.hconcat([warps_H, warps[i]])

    cv.imwrite(outputs[0], img_H)
    cv.imwrite(outputs[1], warps_H)


def main():
    q1()
    q2()
    q3()
    q4()

if __name__ == "__main__":
    main()
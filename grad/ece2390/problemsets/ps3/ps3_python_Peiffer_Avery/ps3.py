import numpy as np
import random

# other function calls in different files
from gen_a import gen_a
from compute_m import compute_m
from get_preds import get_preds
from get_residual import get_residual
from gen_corr import gen_corr
from compute_f import compute_f
from fix_f import fix_f
from draw_lines import draw_lines

def q1():
    ## 1a
    print('######### QUESTION 1 #########')
    arr3d = np.loadtxt('./input/pts3d-norm.txt')
    arr2d = np.loadtxt('./input/pts2d-norm-pic_a.txt')

    a = gen_a(arr3d, arr2d)

    m = compute_m(a)

    print('######### M #########')
    print(m)
    print('\n')

    preds = get_preds(m, arr3d)

    print('######### (U, V) PROJECTION #########')
    print(preds)
    print('\n')

    # get the residual
    ssd = get_residual(preds, arr2d)

    print('######### RESIDUAL CALCULATION #########')
    print(ssd)
    print('\n')






    ## 1b
    # Comment out the following two lines to debug with original values
    arr2d = np.loadtxt('./input/pts2d-pic_b.txt')
    arr3d = np.loadtxt('./input/pts3d.txt')
    test_points = 4
    trials = 10
    k_vals = [8, 12, 16]

    residuals = np.zeros((trials, len(k_vals)))
    best_ssd = float('inf')

    for k in k_vals:
        for i in range(0, trials):
            rands = []
            a_2 = np.zeros((k, arr2d.shape[1]))
            a_3 = np.zeros((k, arr3d.shape[1]))
            while len(rands) < k:
                n = random.randint(0, arr2d.shape[0]-1)
                if n not in rands:
                    rands.append(n)

            for n in rands:
                a_2[rands.index(n)] = arr2d[n]
                a_3[rands.index(n)] = arr3d[n]

            a = gen_a(a_3, a_2)
            m = compute_m(a)

            rands_2 = []
            test_vals = np.zeros((test_points, arr3d.shape[1]))
            check_vals = np.zeros((test_points, arr2d.shape[1]))
            while len(rands_2) < test_points:
                n = random.randint(0, arr2d.shape[0]-1)
                if n not in rands:
                    rands_2.append(n)

            for n in rands_2:
                test_vals[rands_2.index(n)] = arr3d[n]
                check_vals[rands_2.index(n)] = arr2d[n]

            preds = get_preds(m, test_vals)
            ssd = get_residual(preds, check_vals)

            residuals[i][k_vals.index(k)] = ssd / len(check_vals)

            if ssd < best_ssd:
                best_ssd = ssd
                best_m = m

    # solve for camera center
    Q = -1*m[:,:3]
    m4 = -1*m[:,3:4]
    Q_inv = np.linalg.inv(Q)
    C = -1*np.matmul(Q_inv, m4)

    print('######### BEST M #########')
    print(best_m)
    print('\n')

    print('######### RESIDUALS FOR EACH TRIAL #########')
    print(residuals)
    print('\n')

    print('######### CAMERA CENTER #########')
    print(C)
    print('\n')


def q2():
    print('######### QUESTION 2 #########')
    a = np.loadtxt('./input/pts2d-pic_a.txt')
    b = np.loadtxt('./input/pts2d-pic_b.txt')

    # generate the correspondence matrix
    y = gen_corr(a, b)

    # get the fundamental matrix
    f = compute_f(y)
    print('######### F GENERATED FROM LEAST SQUARES FUNCTION #########')
    print(f)
    print('\n')

    # decompose the funamdental matrix into one that has rank 2
    f = fix_f(f)
    print('######### RANK 2 F AFTER DECOMPOSING #########')
    print(f)
    print('\n')

    draw_lines(f, './input/pic_b.jpg', a, './output/ps3-2-c-2.png')
    draw_lines(np.transpose(f), './input/pic_a.jpg', b, './output/ps3-2-c-1.png')


def main():
    q1()
    q2()

if __name__ == "__main__":
    main()
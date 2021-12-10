import numpy as np
import cv2 as cv
import os
import matplotlib.pyplot as plt

def PCA_analysis(T, m):
    A = np.transpose(T)

    for column in A:
        column -= m

    if not os.path.exists('./output/ps6-1-c-1.png'):
        C = np.matmul(np.transpose(A), A)
        cv.imwrite('./output/ps6-1-c-1.png', C)

    B = np.matmul(A, np.transpose(A))
    w, v = np.linalg.eig(B)

    eig_C = np.matmul(np.transpose(A), v)
    D = np.transpose(eig_C)

    plot_rows = 2
    plot_cols = 4
    fig, axs = plt.subplots(plot_rows, plot_cols)

    count = 0
    for column in D:
        if count == plot_rows * plot_cols:
            break
        x = column.reshape((112, 92))

        row = int(count / plot_cols)
        col = int(count % plot_cols)

        axs[row, col].imshow(x, cmap='gray')
        axs[row, col].axis('off')
        count += 1

    plt.savefig('./output/ps6-1-c-2.png')
    plt.close()

    k = list(range(1, 321))
    v_k = []

    for val in w:
        v_k.append(val / sum(w))

    plt.bar(k, v_k)
    plt.title('Percentage of variance explained by eigenvalues')
    plt.xlabel('Eigenvalue number')
    plt.ylabel('Variance explained')
    plt.savefig('./output/ps6-1-d.png')

    total_var = 0
    var_threshold = 0.95

    for i in range(0, 320):
        total_var += (w[i] / sum(w))

        if total_var >= var_threshold:
            basis_num = i+1
            print(f'{basis_num} eigenvalues necessary to explain {var_threshold * 100}% of the variance.')
            break

    U = D[:basis_num][:]
    return np.transpose(U) # returning it this way so it can be used as normal



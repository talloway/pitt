import numpy as np

def disparity_ssd(L, R, disparity_cap=None):
    """Compute disparity map D(y, x) such that: L(y, x) = R(y, x + D(y, x))

    Params:
    L: Grayscale left image
    R: Grayscale right image, same size as L

    Returns: Disparity map, same size as L, R
    """

    rows = L.shape[0]
    cols = L.shape[1]

    D = np.zeros((rows, cols))

    win_size = 3 # pixel to check will be at center of window

    for r in range(0, rows):
        print(f'{r}')
        for c in range(0, cols):
            # create window for the pixel in L image
            window = np.zeros((win_size, win_size))
            offset = int(win_size / 2)

            for i in range(-offset, offset+1):
                for j in range(-offset, offset+1):
                    if (r+i) < 0 or (c+j) < 0 or (r+i) >= rows or (c+j) >= cols:
                        continue
                    window[i+offset][j+offset] = L[r+i][c+j]

            # scan through each pixel in same row of R and calculate SSD
            best_ssd = float('inf')
            best_disparity = float('inf')
            for c_2 in range(0, cols):
                # create patch for pixel in R image
                patch = np.zeros((win_size, win_size))

                for i in range(-offset, offset+1):
                    for j in range(-offset, offset+1):
                        if (r+i) < 0 or (c_2+j) < 0 or (r+i) >= rows or (c_2+j) >= cols:
                            continue
                        patch[i+offset][j+offset] = R[r+i][c_2+j]

                # subtract window and patch and then square to get ssd
                dif = window.ravel() - patch.ravel()
                ssd = np.dot(dif, dif)
                disparity = c_2 - c

                # make sure that points that haven't been moved are prioritized
                if disparity == 0 and ssd == 0:
                    best_ssd = 0
                    best_disparity = 0
                if ssd < best_ssd:
                    best_ssd = ssd
                    best_disparity = disparity

            # cap the best disparity in Question 1 so static points don't affect calculation
            if disparity_cap is not None and abs(best_disparity) >= disparity_cap:
                best_disparity = 0

            D[r][c] = best_disparity

    return D

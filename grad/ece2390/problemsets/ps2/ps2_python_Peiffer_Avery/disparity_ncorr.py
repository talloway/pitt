import numpy as np
import cv2

def disparity_ncorr(L, R, disparity_cap=None):
    """Compute disparity map D(y, x) such that: L(y, x) = R(y, x + D(y, x))

    Params:
    L: Grayscale left image
    R: Grayscale right image, same size as L

    Returns: Disparity map, same size as L, R
    """
    rows = L.shape[0]
    cols = L.shape[1]

    D = np.zeros((rows, cols))

    win_size = 11 # pixel to check will be at center of window

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

            res = cv2.matchTemplate(R.astype(np.uint8), window.astype(np.uint8),
                                    cv2.TM_CCOEFF_NORMED)
            min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(res)
            disparity = max_loc[0] + offset - c # trying max_loc[1] instead of max_loc[0]

            if disparity_cap is not None and abs(disparity) >= disparity_cap:
                disparity = 0

            D[r][c] = disparity

    return D
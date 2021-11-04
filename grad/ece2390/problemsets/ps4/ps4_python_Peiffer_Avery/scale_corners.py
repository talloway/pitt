import numpy as np

def scale_corners(corners):
    max = np.amax(corners)
    scaled_corners = corners * 255 / max

    return scaled_corners
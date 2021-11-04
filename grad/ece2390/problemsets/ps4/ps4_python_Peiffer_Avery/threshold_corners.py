import numpy as np

def threshold_corners(cornerness_scores):
    height, width = cornerness_scores.shape

    # Use threshold of 5 * average score to identify points as keypoints
    cornerness_average = cornerness_scores.sum() / (width * height)
    threshold = 5 * cornerness_average

    scores = np.zeros((height, width))
    bigger_than_neighbors = True

    # Perform non-max suppression
    for i in range(0, height):
        for j in range(0, width):
            bigger_than_neighbors = True
            if i == 0 or i == (height - 1) or j == 0 or j == (width - 1) or cornerness_scores[(i, j)] < threshold:
                bigger_than_neighbors = False

            for k in range(-1, 2):
                x_neighbor = j + k
                for l in range(-1, 2):
                    if k == 0 and l == 0:
                        continue
                    y_neighbor = i + l

                    if x_neighbor == width or y_neighbor == height:
                        continue

                    if cornerness_scores[(y_neighbor, x_neighbor)] > cornerness_scores[(i, j)]:
                        bigger_than_neighbors = False

            if bigger_than_neighbors:
                scores[(i, j)] = cornerness_scores[(i, j)]

    return scores
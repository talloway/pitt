import cv2 as cv
import numpy as np

from compute_gradients import compute_gradients
from compute_cornerness_score import compute_cornerness_score
from scale_corners import scale_corners
from threshold_corners import threshold_corners
from draw_corners import draw_corners
from draw_grad_or import draw_grad_or
from generate_keypoints import generate_keypoints
from get_SIFT_descriptors import get_SIFT_descriptors
from draw_putative_matches import draw_putative_matches

def q1():
    ## Part 1A: Computing gradients
    inputs = ['transA', 'simA']
    outputs = ['ps4-1-a-1', 'ps4-1-a-2']

    for input, output in zip(inputs, outputs):
        img = './input/' + input + '.jpg'
        out = './output/' + output + '.png'
        comb = compute_gradients(img)
        cv.imwrite(out, comb)

    ## Part 1B/1C: Harris corner detection
    inputs = ['transA', 'transB', 'simA', 'simB']
    outputs_1 = ['ps4-1-b-1', 'ps4-1-b-2', 'ps4-1-b-3', 'ps4-1-b-4']
    outputs_2 = ['ps4-1-c-1', 'ps4-1-c-2', 'ps4-1-c-3', 'ps4-1-c-4']
    all_corners = []

    for input, output1, output2 in zip(inputs, outputs_1, outputs_2):
        img = './input/' + input + '.jpg'
        out1 = './output/' + output1 + '.png'
        out2 = './output/' + output2 + '.png'

        corners = compute_cornerness_score(img)
        scaled_corners = scale_corners(corners)
        cv.imwrite(out2, scaled_corners)
        corners_t = threshold_corners(scaled_corners)
        draw_corners(corners_t, img, out2)

        temp_fname = './temp/' + input + '_tempcorners.csv'
        np.savetxt(temp_fname, corners_t, delimiter=',')

# RANSAC: Translational case
def q3a(matches, kA, kB):
    p = 0.99
    e = 0.5
    s = 2
    t = 100

    N = int(np.ceil(np.log(1 - p) / np.log(1 - (1 - e)**s)))

    best_consensus_set = 0
    best_offsetX = 0
    best_offsetY = 0

    for i in range(0, N):
        rand = np.random.randint(0, len(matches))

        a = kA[matches[rand].queryIdx].pt
        b = kB[matches[rand].trainIdx].pt

        offsetX = int(a[0] - b[0])
        offsetY = int(a[1] - b[1])

        model_ssd = np.sqrt(offsetX ** 2 + offsetY ** 2)
        consensus_set = 0

        for match in matches:
            test_a = kA[match.queryIdx].pt
            test_b = kB[match.trainIdx].pt

            b = [test_a[0] + offsetX, test_a[1] + offsetY]

            test_diff = [test_b[0] - b[0], test_b[1] - b[1]]

            test_ssd = np.sqrt(test_diff[0] ** 2 + test_diff[1] ** 2)

            if test_ssd < t:
                consensus_set += 1

        if consensus_set > best_consensus_set:
            best_consensus_set = consensus_set
            best_offsetX = offsetX
            best_offsetY = offsetY

    print(f'Translation vector: [{best_offsetX}, {best_offsetY}]')
    print(f'Best consensus set was {100 * best_consensus_set / len(matches):.2f}% of matches.')

    # Draw images with translation vectors on them
    img1 = cv.imread('./input/transA.jpg')
    img2 = cv.imread('./input/transB.jpg')

    height, width, channels = img1.shape
    comb = np.concatenate((img1, img2), axis=1)

    for match in matches:
        a = kA[match.queryIdx].pt
        a_x = int(a[0])
        a_y = int(a[1])

        b_x = int(a[0] + best_offsetX + width)
        b_y = int(a[1] + best_offsetY)

        comb = cv.line(comb, (a_x, a_y), (b_x, b_y), (0,0,255), 1)

    cv.imwrite('./output/ps4-3-a-1.png', comb)

# RANSAC: Similarity transform
def q3b(matches, kA, kB):
    p = 0.99
    e = 0.5
    s = 4
    t = 100

    N = int(np.ceil(np.log(1 - p) / np.log(1 - (1 - e)**s)))
    best_consensus_set = 0
    best_H = []

    for i in range(0, N):
        rand1 = np.random.randint(0, len(matches))
        rand2 = rand1

        while rand1 == rand2:
            rand2 = np.random.randint(0, len(matches))

        a1 = kA[matches[rand1].queryIdx].pt
        b1 = kB[matches[rand1].trainIdx].pt

        a2 = kA[matches[rand2].queryIdx].pt
        b2 = kB[matches[rand2].trainIdx].pt

        a = np.float32([a1, a2])
        b = np.float32([b1, b2])

        H = cv.estimateAffinePartial2D(a, b)
        H = np.array(H[0])
        consensus_set = 0

        for match in matches:
            test_a = kA[match.queryIdx].pt
            test_b = kB[match.trainIdx].pt

            a = np.array([test_a[0], test_a[1], 1])

            b = np.matmul(H, a)

            test_diff = [b[0] - test_b[0], b[1] - test_b[1]]
            test_ssd = np.sqrt(test_diff[0] ** 2 + test_diff[1] ** 2)

            if test_ssd < t:
                consensus_set += 1

        if consensus_set > best_consensus_set:
            best_consensus_set = consensus_set
            best_H = H

    print(f'Similarity transform matrix: {best_H}')
    print(f'Best consensus set was {100 * best_consensus_set / len(matches):.2f}% of matches.')

    # Draw images with transform vectors
    img1 = cv.imread('./input/simA.jpg')
    img2 = cv.imread('./input/simB.jpg')

    height, width, channels = img1.shape
    comb = np.concatenate((img1, img2), axis=1)

    for match in matches:
        a = kA[match.queryIdx].pt
        a_arr = ([a[0], a[1], 1])

        b = np.matmul(best_H, a_arr)

        a_x = int(a[0])
        a_y = int(a[1])
        b_x = int(b[0] + width)
        b_y = int(b[1])

        comb = cv.line(comb, (a_x, a_y), (b_x, b_y), (0,0,255), 1)

    cv.imwrite('./output/ps4-3-b-1.png', comb)


def q2():
    inputsA = ['transA', 'simA']
    inputsB = ['transB', 'simB']
    outputsA = ['ps4-2-a-1', 'ps4-2-a-2']
    outputsB = ['ps4-2-b-1', 'ps4-2-b-2']

    for inputA, inputB, outputA, outputB in zip(inputsA, inputsB, outputsA, outputsB):
        ## Part A: Drawing gradient orientation
        jpgA = './input/' + inputA + '.jpg'
        jpgB = './input/' + inputB + '.jpg'
        csvA = './temp/' + inputA + '_tempcorners.csv'
        csvB = './temp/' + inputB + '_tempcorners.csv'

        imgA = cv.imread(jpgA)
        imgB = cv.imread(jpgB)
        cornerA = np.genfromtxt(csvA, delimiter=',')
        cornerB = np.genfromtxt(csvB, delimiter=',')

        or1 = draw_grad_or(imgA, cornerA)
        or2 = draw_grad_or(imgB, cornerB)

        comb = np.concatenate((or1, or2), axis=1)

        output_fnameA = './output/' + outputA + '.png'
        cv.imwrite(output_fnameA, comb)

        ## Part B: Call SIFT descriptor code and find matches
        keypointsA = generate_keypoints(imgA, cornerA)
        keypointsB = generate_keypoints(imgB, cornerB)

        pointsA, dA = get_SIFT_descriptors(imgA, keypointsA)
        pointsB, dB = get_SIFT_descriptors(imgB, keypointsB)

        bfm = cv.BFMatcher()
        matches = bfm.match(dA, dB)

        imgA = cv.imread(jpgA)
        imgB = cv.imread(jpgB)
        output_fnameB = './output/' + outputB + '.png'

        draw_putative_matches(imgA, imgB, matches, keypointsA,
                              keypointsB, output_fnameB)

        if inputA == 'transA' and inputB == 'transB':
            q3a(matches, keypointsA, keypointsB)
        else:
            q3b(matches, keypointsA, keypointsB)

def main():
    q1()
    q2()

if __name__ == "__main__":
    main()
import numpy as np
import matplotlib.pyplot as plt
import cv2
import math
from scipy import ndimage
from scipy.io import loadmat
from PIL import Image, ImageDraw

# Part A: Image Responses with Filters
def part_a():
    image_size = 100

    images = ['cardinal1', 'cardinal2', 'leopard1', 'leopard2', 'panda1',
              'panda2']
    filter_bank = loadmat('filters.mat')['F']

    num_filters = len(filter_bank[0][0])

    for image in images:
        img = Image.open('images/' + image + '.jpg').convert('L') \
            .resize((image_size, image_size))
        img.save('images_gs/' + image + '_gs.jpg')

    for i in range(0, num_filters):
        filter = filter_bank[:, :, i]

        fig, axs = plt.subplots(2, 4)
        fig.tight_layout(pad=1.25)
        plt.title('Filter ' + str(i))

        axs[0, 0].imshow(filter)
        axs[0, 0].set_title('Filter')
        axs[0, 1].axis('off')

        for image in images:
            pixels = Image.open('images_gs/' + image + '_gs.jpg').getdata()
            pixels = np.reshape(pixels, (image_size, image_size))

            result = ndimage.convolve(pixels, filter)
            ind = images.index(image)

            if ind < 2:
                axs[0, 2 + ind].imshow(result)
                axs[0, 2 + ind].set_title(image + '.jpg')
            else:
                axs[1, ind - 2].imshow(result)
                axs[1, ind - 2].set_title(image + '.jpg')

        plt.savefig('part_a_results/filter_' + str(i))
        plt.close(fig)

# Part B: Image Description with Texture
def part_b(image, F):
    def computeTextureReprs(image, F):
        num_filters = len(F[0][0])
        pixels = Image.open(image).convert('L')
        width, height = pixels.size

        responses = np.zeros((height, width, num_filters))

        for i in range(0, num_filters):
            filter = F[:, :, i]
            result = ndimage.convolve(pixels, filter)
            responses[:, :, i] = result

        texture_repr_concat = np.zeros((height, width))
        texture_repr_mean = np.zeros((height, width))

        for i in range(0, height):
            for j in range(0, width):
                texture_repr_concat[i, j] = sum(responses[i, j, :])
                texture_repr_mean[i, j] = texture_repr_concat[i, j] / num_filters

        return [texture_repr_concat, texture_repr_mean]

    return computeTextureReprs(image, F)

# Part C: Hybrid Images
def part_c():
    images = ['woman_happy', 'woman_neutral']
    image_size = 512

    im1 = Image.open('images/' + images[0] + '.png').convert('L') \
        .resize((image_size, image_size))
    im2 = Image.open('images/' + images[1] + '.png').convert('L') \
        .resize((image_size, image_size))

    im1_blur = ndimage.gaussian_filter(im1, sigma=5)
    im2_blur = ndimage.gaussian_filter(im2, sigma=5)

    im2_detail = im2 - im2_blur
    hybrid = im1_blur + im2_detail

    Image.fromarray(hybrid).save('part_c_results/hybrid.png')

def part_d_e_f(image_path, means_path):
    # Part D: Feature Detection
    def extract_keypoints(image):
        k_constant = .05
        window_size = 5
        half_window_size = int(window_size / 2)

        # Preprocess and calculate horizontal and vertical gradients
        im = Image.open(image)
        im1 = im.convert('L')
        width, height = im1.size
        cornerness_scores = np.zeros((height, width))

        # Read in the image using OpenCV and use the Sobel filter
        # to compute the gradients because it filters out noise better
        # than just doing a simple Gaussian
        cv_test = cv2.imread(image)
        cv_test = cv2.cvtColor(cv_test, cv2.COLOR_BGR2GRAY)

        Ih = cv2.Sobel(cv_test, cv2.CV_64F, 1, 0, ksize=5)
        Iv = cv2.Sobel(cv_test, cv2.CV_64F, 0, 1, ksize=5)

        # Compute cornerness score for each pixel
        for i in range(0, height):
            for j in range(0, width):
                if i <= 2 or (height - i) <= 2 or j <= 2 or (width - j) <= 2:
                    cornerness_scores[i, j] = 0
                    continue
                M = np.zeros((2, 2))
                E = np.zeros((window_size, window_size))

                for k in range(-half_window_size, half_window_size + 1):
                    x_neighbor = j + k
                    for l in range(-half_window_size, half_window_size + 1):
                        if k == 0 and l == 0:
                            continue
                        y_neighbor = i + l

                        M[0, 0] += Ih[y_neighbor, x_neighbor] ** 2
                        M[0, 1] += Ih[y_neighbor, x_neighbor] * Iv[y_neighbor, x_neighbor]
                        M[1, 0] += Ih[y_neighbor, x_neighbor] * Iv[y_neighbor, x_neighbor]
                        M[1, 1] += Iv[y_neighbor, x_neighbor] ** 2

                        E[k + half_window_size, l + half_window_size] = abs(np.linalg.det(M) - k_constant * M.trace()**2)

                cornerness_scores[(i, j)] = np.max(E)

        # Use threshold of 5 * average score to identify points as keypoints
        cornerness_average = cornerness_scores.sum() / (width * height)
        threshold = 5 * cornerness_average

        x = np.array([])
        y = np.array([])
        scores = np.array([])
        bigger_than_neighbors = True

        # Perform non-max suppression and scale scores for later
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
                    x = np.append(x, j)
                    y = np.append(y, i)
                    scores = np.append(scores, cornerness_scores[(i, j)])

        max_score = np.amax(scores)
        scores = scores / max_score

        # Show image with corners circled, scaled by cornerness score
        draw = ImageDraw.Draw(im)

        count = 0
        for row, col in zip(x, y):
            eX, eY = int(20 * scores[count]), int(20 * scores[count])
            count += 1
            bbox = (row - eX/2, col - eY/2, row + eX/2, col + eY/2)
            draw.ellipse(bbox, outline='blue')

        # im.show()

        return x, y, Ih, Iv, scores

    # Part E: Feature Description
    def compute_features(x, y, Ih, Iv, scores, image):
        window_size = 5
        dimensionality = 8
        im = Image.open(image).convert('L')
        width, height = im.size
        im = np.array(im)

        features = np.zeros((len(scores), dimensionality))
        num_feature = 0

        for c, r, score in zip(x, y, scores):
            r = int(r)
            c = int(c)
            if r < window_size or (height - r) < (window_size + 1) or c < window_size or (width - c) < (window_size + 1):
                num_feature += 1
                continue

            # Compute gradient magnitude and angle for every pixel in 4x4
            # window around keypoint
            for wrow in range(-(window_size-1), window_size):
                for wcol in range(-(window_size-1), window_size):
                    if wrow == 0 and wcol == 0:
                        continue

                    wr = r + wrow
                    wc = c + wcol

                    vertical_gradient = im[wr+1][wc] - im[wr-1][wc]
                    horizontal_gradient = im[wr][wc+1] - im[wr][wc-1]

                    magnitude = math.sqrt(vertical_gradient ** 2 + horizontal_gradient ** 2)

                    if horizontal_gradient == 0:
                        theta = math.pi/2 if vertical_gradient > 0 else -math.pi/2
                    else:
                        theta = math.atan(vertical_gradient / horizontal_gradient)

                    # Organize and populate the SIFT histogram for 8 bins
                    if theta >= -math.pi/2 and theta < -3*math.pi/8:
                        features[num_feature][0] += magnitude
                    elif theta >= -3*math.pi/8 and theta < -math.pi/4:
                        features[num_feature][1] += magnitude
                    elif theta >= -math.pi/4 and theta < -math.pi/8:
                        features[num_feature][2] += magnitude
                    elif theta >= -math.pi/8 and theta < 0:
                        features[num_feature][3] += magnitude
                    elif theta >= 0 and theta < math.pi/8:
                        features[num_feature][4] += magnitude
                    elif theta >= math.pi/8 and theta < math.pi/4:
                        features[num_feature][5] += magnitude
                    elif theta >= math.pi/4 and theta < 3*math.pi/8:
                        features[num_feature][6] += magnitude
                    elif theta >= 3*math.pi/8 and theta <= math.pi/2:
                        features[num_feature][7] += magnitude

            # Normalize each descriptor to be of length 1
            # Then, clip any values above 0.2 to 0.2
            # Finally, normalize the descriptor again
            features[num_feature] /= sum(features[num_feature])
            for i, item in enumerate(features[num_feature]):
                if item > 0.2:
                    features[num_feature][i] = 0.2
            features[num_feature] /= sum(features[num_feature])

            num_feature += 1

        return features

    # Part F: Image Description with SIFT Bag-of-Words
    def computeBOWRepr(features, means_path):
        means = loadmat(means_path)['means']
        bow_repr = np.zeros(len(means))

        # For each feature, find the closest cluster center
        for row in features:
            mean_distances = np.zeros(len(means))

            for i, mean in enumerate(means):
                diffs = 0
                for r in range(0, 8):
                    diffs += (mean[r] - row[r]) ** 2
                distance = math.sqrt(diffs)
                mean_distances[i] = distance

            closest_cluster = np.argmin(mean_distances)
            bow_repr[closest_cluster] += 1

        # Normalize the histogram
        bow_repr /= sum(bow_repr)

        return bow_repr

    x, y, Ih, Iv, scores = extract_keypoints(image_path)
    features = compute_features(x, y, Ih, Iv, scores, image_path)
    bow_repr = computeBOWRepr(features, means_path)
    return bow_repr

# Part G: Comparison of Image Descriptors
def part_g():
    image_size = 100
    images = ['cardinal1', 'cardinal2', 'leopard1', 'leopard2', 'panda1',
              'panda2']
    filter_bank = loadmat('filters.mat')['F']
    means_path = 'means/means_k50.mat'
    texture_repr_concats = {}
    texture_repr_means = {}
    bow_reprs = {}

    # Compute the three image representations for each of the images
    for i, image in enumerate(images):
        img = Image.open('images/' + image + '.jpg').resize((image_size, image_size))
        image_path = 'images_100/' + image + '.jpg'
        img.save(image_path)

        li = part_b(image_path, filter_bank)
        texture_repr_concat = li[0]
        texture_repr_mean = li[1]
        bow_repr = part_d_e_f(image_path, means_path)

        texture_repr_concats[i] = texture_repr_concat
        texture_repr_means[i] = texture_repr_mean
        bow_reprs[i] = bow_repr

    # Compute average within class distance and average between class distance
    dicts = [texture_repr_concats, texture_repr_means, bow_reprs]
    ratios = {}

    for j, dict in enumerate(dicts):
        within_class_distance = np.zeros(3)
        between_class_distance = np.zeros(3)

        for i in range(0, len(within_class_distance)):
            within_class_distance[i] = np.sqrt(np.sum(np.square(dict[i] - dict[i+1])))

        between_class_distance[0] = np.sqrt(np.sum(np.square(dict[0] - dict[2])))
        between_class_distance[1] = np.sqrt(np.sum(np.square(dict[2] - dict[4])))
        between_class_distance[2] = np.sqrt(np.sum(np.square(dict[0] - dict[4])))

        ratios[j] = np.mean(within_class_distance) / np.mean(between_class_distance)

    print(ratios)
    return ratios

def main():
    # part_a()
    # part_b('images/cardinal1.jpg', loadmat('filters.mat')['F'])
    # part_c()
    # part_d_e_f()
    part_g()

if __name__ == "__main__":
    main()
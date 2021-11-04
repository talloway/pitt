import numpy as np
import cv2 as cv
import matplotlib.pyplot as plt


# COLOR PLANES
def color_planes():
    img1 = cv.imread('./output/ps0-1-a-1.png')

    img_blue,img_green,img_red = cv.split(img1)
    img1[:,:,0] = img_red
    img1[:,:,2] = img_blue

    cv.imwrite('./output/ps0-2-a-1.png', img1)
    cv.imwrite('./output/ps0-2-b-1.png', img_green)
    cv.imwrite('./output/ps0-2-c-1.png', img_red)

# REPLACEMENT PIXELS
def replace_pixels():
    img1 = cv.imread('./output/ps0-1-a-1.png')
    img_green = img1[:,:,1]

    r_min, r_max, c_min, c_max = int(img_green.shape[0] / 2 - 50), \
                                 int(img_green.shape[0] / 2 + 50), \
                                 int(img_green.shape[1] / 2 - 50), \
                                 int(img_green.shape[1] / 2 + 50)

    img2 = cv.imread('./output/ps0-1-a-2.png')
    img2_green = img2[:,:,1]
    r2_min, r2_max, c2_min, c2_max = int(img2_green.shape[0] / 2 - 50), \
                                     int(img2_green.shape[0] / 2 + 50), \
                                     int(img2_green.shape[1] / 2 - 50), \
                                     int(img2_green.shape[1] / 2 + 50)
    img2_green[r2_min:r2_max, c2_min:c2_max] = img_green[r_min:r_max, c_min:c_max]
    cv.imwrite('./output/ps0-3-a-1.png', img2_green)

# ARITHMETIC AND GEOMETRIC OPERATIONS
def arith_geo_operations():
    img1 = cv.imread('./output/ps0-1-a-1.png')
    img_green = img1[:,:,1]

    min = img_green.min()
    max = img_green.max()
    mean = img_green.mean()
    std = img_green.std()

    n, bins, patches = plt.hist(x=img_green.ravel(),
                                bins=[0,16,32,48,64,80,96,112,128,144,160,176,192,208,224,240,256],
                                color='#0504aa', alpha=0.7, rwidth=0.85)
    plt.grid(axis='y', alpha=0.75)
    plt.xlabel('Intensity of Green in Pixel')
    plt.ylabel('Frequency')
    plt.title('Green Channel Histogram for Image 1')
    plt.savefig('./output/ps0-4-b-1.png')
    plt.close()

    img_green = img_green - mean
    img_green = img_green / std
    img_green = img_green * 10
    img_green = img_green + mean

    img_green = img_green.astype(np.uint8)

    cv.imwrite('./output/ps0-4-c-1.png', img_green)

    n, bins, patches = plt.hist(x=img_green.ravel(),
                                bins=[0,16,32,48,64,80,96,112,128,144,160,176,192,208,224,240,256],
                                color='#0504aa', alpha=0.7, rwidth=0.85)
    plt.grid(axis='y', alpha=0.75)
    plt.xlabel('Intensity of Green in Pixel')
    plt.ylabel('New Frequency')
    plt.title('Normalized histogram for Image 1')
    plt.savefig('./output/ps0-4-d-1.png')
    plt.close()

    img_green = img1[:,:,1]
    m = np.float32([ [1, 0, -2], [0, 1, 0] ])
    img_left = cv.warpAffine(img_green, m, (img_green.shape[1], img_green.shape[0]))
    cv.imwrite('./output/ps0-4-e-1.png', img_left)

    img_diff = img_green - img_left
    cv.imwrite('./output/ps0-4-f-1.png', img_diff)

# NOISE
def noise():
    img1 = cv.imread('./output/ps0-1-a-1.png')
    img_green = img1[:,:,1]
    row,col = img_green.shape

    mean = 0
    sigma = 0.5
    gauss = np.random.normal(mean,sigma,(row,col))
    gauss = gauss.reshape(row,col)
    noisy = img_green + gauss
    noisy = noisy.astype(np.uint8)

    cv.imwrite('./output/ps0-5-a-1.png', noisy)

    n, bins, patches = plt.hist(x=noisy.ravel(),
                                bins=[0,16,32,48,64,80,96,112,128,144,160,176,192,208,224,240,256],
                                color='#0504aa', alpha=0.7, rwidth=0.85)
    plt.grid(axis='y', alpha=0.75)
    plt.xlabel('Intensity of Green in Pixel')
    plt.ylabel('Frequency')
    plt.title('Histogram for Image 1 with Gaussian noise')
    plt.savefig('./output/ps0-5-b-1.png')
    plt.close()

    img_blue = img1[:,:,0]
    noisy_b = img_blue + gauss
    noisy_b = noisy_b.astype(np.uint8)

    cv.imwrite('./output/ps0-5-c-1.png', noisy_b)

    median = cv.medianBlur(noisy, 5)
    cv.imwrite('./output/ps0-5-e-1.png', median)

    n, bins, patches = plt.hist(x=median.ravel(),
                                bins=[0,16,32,48,64,80,96,112,128,144,160,176,192,208,224,240,256],
                                color='#0504aa', alpha=0.7, rwidth=0.85)
    plt.grid(axis='y', alpha=0.75)
    plt.xlabel('Intensity of Green in Pixel')
    plt.ylabel('Frequency')
    plt.title('Histogram for Image 1 with Gaussian noise and median filter')
    plt.savefig('./output/ps0-5-e-2.png')
    plt.close()


    blur = cv.GaussianBlur(noisy,(5,5),0)
    cv.imwrite('./output/ps0-5-f-1.png', blur)

    n, bins, patches = plt.hist(x=blur.ravel(),
                                bins=[0,16,32,48,64,80,96,112,128,144,160,176,192,208,224,240,256],
                                color='#0504aa', alpha=0.7, rwidth=0.85)
    plt.grid(axis='y', alpha=0.75)
    plt.xlabel('Intensity of Green in Pixel')
    plt.ylabel('Frequency')
    plt.title('Histogram for Image 1 with Gaussian noise and Gaussian filter')
    plt.savefig('./output/ps0-5-f-2.png')
    plt.close()



def main():
    color_planes()
    replace_pixels()
    arith_geo_operations()
    noise()

if __name__ == "__main__":
    main()

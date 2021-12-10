import os
import numpy as np

from shutil import copyfile

num_subjects = 40
num_images = 10
count = 1

for i in range(1, num_subjects+1):
    path = './input/all/s' + str(i)
    os.chdir(path)

    # pick two random numbers and write those files to the test directory
    im_num_1 = np.random.randint(1, num_images+1)
    im_num_2 = im_num_1

    while im_num_2 == im_num_1:
        im_num_2 = np.random.randint(1, num_images+1)

    test_f_1 = str(im_num_1) + '.pgm'
    test_f_2 = str(im_num_2) + '.pgm'

    dir = '../../test/s' + str(i)
    os.mkdir(dir)

    path1 = dir + '/' + str(im_num_1) + '.pgm'
    path2 = dir + '/' + str(im_num_2) + '.pgm'

    copyfile(test_f_1, path1)
    copyfile(test_f_2, path2)

    # write the other 8 files to the train directory (need labels)
    for fname in os.listdir(os.getcwd()):
        if fname != test_f_1 and fname != test_f_2:
            dir = '../../train/'
            path = dir + str(count) + '-L' + str(i) + '.pgm'
            copyfile(fname, path)
            count += 1

    os.chdir('../../..')
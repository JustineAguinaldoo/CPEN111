clc;
clf;
clear all;
close all;

# The parrots.jpg image is on the same directory
# with the parrots.m octave file,
# is the reason why we are calling the filename only

parrot_image = imread('parrots.jpg'); # (a1) load the parrots image
# (a2) to display the parrot image
figure(1, 'name', 'Original Parrot Image'), imshow(parrot_image)

# (b) to examine the size of the parrots image, shown in command window
whos parrot_image

# (c) convert the class uint8 color image parrots to a grayscale image,
# with full intensity range gray-scale
# (d) to convert the true color image to a gray-scale image
conv2gray = rgb2gray(parrot_image);

# display the grayscale image of parrot
figure(2, 'name', 'Grayscale Parrot Image'), imshow(conv2gray)

# display the full intensity range gray-scale
conv2fullgray = rgb2gray(parrot_image);
figure(3, 'name', 'Full Intensity Grayscale Parrot Image'), imshow(conv2fullgray, [0 255])






clc;
clf;
close all;
clear all;
pkg load image; # importing the package

# The fruits.png image is on the same directory
# with the exercise1.m octave file,
# is the reason why we are calling the filename only

picture1 = imread('fruits.png');
pic1_info = imfinfo('fruits.png')
# To open and display the original image fruits.png
figure(1, 'name', 'Real Image'), imshow(picture1)

# To reduce the spatial resolution of the original image
# 0.25 is the 1/4 size of the original
picture2resize = imresize(picture1, 0.25);
imwrite(picture2resize, 'fruits2.png'); #
whos picture2resize
# To open and display the new image file fruits2.png,
# where it is reduced in size
figure(2, 'name', 'Reduced Size Image'), imshow('fruits2.png')
# To convert the reduced image into hsv
rgb2hsv = rgb2hsv(picture2resize);
imwrite(rgb2hsv, 'fruits3.png'); # saving the new file fruits3.png
# To open and display the reduced, converted image file to hsv
figure(3, 'name', 'Converted to HSV'), imshow('fruits3.png');

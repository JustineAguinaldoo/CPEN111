clc;
clf;
clear all;
close all;

# The nature.jpg image is on the same directory
# with the nature.m octave file,
# is the reason why we are calling the filename only

# (a) open the nature.jpg
nature_image = imread('nature.jpg');
nature2gray = rgb2gray(nature_image);

# (b) display the original nature.jpg as reference
figure(1, 'name', 'Original Nature Image'), imshow(nature_image)

# display the converted grayscale image
figure(2, 'name', 'Grayscale Nature Image'), imshow(nature2gray)

# to compare the original size/bytes of the nature.jpg,
# and the converted to grayscale image,
# shown in the command window is the difference in size/bytes
whos nature_image
whos nature2gray

# (c) assign image color that intensifies red,green, and blue,
image_red = nature_image; # red
image_red(:,:,2)=0;
image_red(:,:,3)=0;

image_green = nature_image; # green
image_green(:,:,1)=0;
image_green(:,:,3)=0;

image_blue = nature_image; # blue
image_blue(:,:,1)=0;
image_blue(:,:,2)=0;

# display each image in one window
figure(3, 'name', 'Intensified Red, Green, Blue Images'),
subplot (1,3,1), imshow(image_red), title('Intensified Red');
subplot (1,3,2), imshow(image_green), title('Intensified Green');
subplot (1,3,3), imshow(image_blue), title('Intensified Blue');

# (d) convert each image file extension to png
imwrite(nature_image, 'nature_image.png'); # original image
imwrite(nature2gray, 'nature2gray.png'); # grayscale image
imwrite(image_red, 'image_red.png'); # intensified red
imwrite(image_green, 'image_green.png'); # intensified green
imwrite(image_blue, 'image_blue.png'); # intensified blue

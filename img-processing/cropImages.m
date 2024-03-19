

%% Cropping an Image

clc, clear all, close all, format compact

pkg load image

img = imread("desktop.png");

img_raw = img;

imshow(img_raw);

###### CROP
img = img(90:300, 400:900, :);
imshow(img);

###### SAVE
##imwrite(img, "date.png");




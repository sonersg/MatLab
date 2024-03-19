

%% Raw Downsampling with Decimation

clc, clear all, close all, format compact

pkg load image

img = imread("desktop.png");

img_raw = img;

gry_img = rgb2gray(img);

figure, imshow(gry_img);

###### DOWNSAMPLING
img = gry_img(1:10:end, 1:10:end);
figure, imshow(img);

###### SAVE
##imwrite(img, "downsampled.png");




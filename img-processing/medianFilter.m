

%% Random Noise Filtering

clc, clear all, close all, format compact

pkg load image

img = imread("desktop.png");

img_raw = img;

gry_img = rgb2gray(img);

###### ADD RANDOM NOISE
img = im2double(gry_img); # unit8 to double
dims = size(gry_img);      # store size of image
noise = randn(dims)./10;   # generate random values
img = img + noise;         # add noise to image
##img = imnoise(img, "speckle", 0.01);
figure, imshowpair(gry_img, img, "montage");

###### MEDIAN FILTER
img = medfilt2(img);
figure, imshowpair(gry_img, img, "montage");




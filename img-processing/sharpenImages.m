

%% Sharpen an Image

clc, clear all, close all, format compact

pkg load image

img = imread("desktop.png");

img_raw = img;

gry_img = rgb2gray(img);

###### SHARPEN THE IMAGE
img = imsharpen(img, "Amount", 20, "Radius", 1);
figure, imshowpair(img_raw, img, "montage");



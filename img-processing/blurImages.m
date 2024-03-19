

%% Blur an Image with an Avarage Mask

clc, clear all, close all, format compact

pkg load image

img = imread("desktop.png");

img_raw = img;

gry_img = rgb2gray(img);

figure, imshowpair(img_raw, gry_img, "montage");

###### BLUR MASK
blur = fspecial("average", 17); # blur mask
img = imfilter(img, blur); # apply mask to img

figure, imshowpair(img_raw, img, "montage");



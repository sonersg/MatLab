

%% Thresholding and Image Binarize

clc, clear all, close all, format compact

pkg load image

img = imread("desktop.png");

img_raw = img;

gry_img = rgb2gray(img);

###### THRESHOLDING
##threshold = 0.8;
threshold = graythresh(gry_img);
BW = im2bw(gry_img, threshold); % imbinarize
figure, imshowpair(gry_img, BW, "montage");

###### DYNAMIC TITLE
title_str = strcat("Threshold set to: ", num2str(threshold));
figure, imshow(BW), pause(0.1);
title(title_str);




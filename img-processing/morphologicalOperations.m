

%% Morphological Operations

clc, clear all, close all, format compact

pkg load image

img = imread("desktop.png");

img_raw = img;

gry_img = rgb2gray(img);

###### THRESHOLDING
##threshold = 0.8;
threshold = graythresh(gry_img);
BW = im2bw(gry_img, threshold); % imbinarize
##figure, imshowpair(gry_img, BW, "montage");
img_thresh = BW;

###### MORPHOLOGICAL OPERATIONS
###### open-> all white px of that size r kept, rest black (erode, dilate)
###### open-> all black px of that size r kept, rest white (dilate, erode)

###### ISOLATE LANDMASSES
SE = strel ("disk", 10);
img = imclose(BW, SE);

SE = strel ("disk", 30);
img = imopen(BW, SE);

figure, imshowpair(img_thresh, img, "montage");




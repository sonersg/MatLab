%% deneme

clc, clear all, close all, format compact

%pkg load image

i = imread("flag.jpg");

iGray = rgb2gray(i);

%imshow(iGray);

%imwrite(iGray, "flag_gray.tif", "tiff")

%%

A = [ 1 2 3; 4 5 6; 7 8 9 ];

%figure, imshow(A);

figure, imshow(A, []);



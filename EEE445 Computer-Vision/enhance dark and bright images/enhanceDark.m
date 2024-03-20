

%% Enhance Dark Image

clc, clear all, close all, format compact

pkg load image

% Read the dark image
darkImage = imread("dark.jpg");

% Adjust contrast
A = darkImage * 5;

% Display the original and enhanced images
subplot(1, 2, 1);
imshow(darkImage);
title('Original Image');

subplot(1, 2, 2);
imshow(A);
title('Enhanced Image');




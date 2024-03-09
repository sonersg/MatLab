%% Intensity Image

clc, clear all, close all, format compact

pkg load image



row = 256;
col = 256;

img = zeros(row, col);

img(100:105, :) = 0.5;
img(:, 100:105) = 1;

figure, imshow(img);



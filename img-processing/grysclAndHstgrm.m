

%% Grayscale and Histogram Equalization

clc, clear all, close all, format compact

%pkg load image

img = imread("desktop.png"); % load image
%figure, imshow(img);        % show img on new figure

original_image = img;       % save original img
gry_img = rgb2gray(img);    % convert to grayscale
                            % required for histogram
%figure, imshow(gry_img);    % show img on new figure

%figure, imshowpair(original_image, gry_img, 'montage');

figure, imhist(gry_img);

figure, imhist(histeq(gry_img));

figure, imshow(histeq(gry_img));

figure, imshowpair(gry_img, histeq(gry_img), 'montage');







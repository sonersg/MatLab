

%% Enhance Dark Image

clc, clear all, close all, format compact

pkg load image

% Read the image
brightImage = imread("light.jpg");

original_img = brightImage;

[r, c, x] = size(brightImage);
percentage = 52;
thrshld = 100;


for i = 1:r
  for j = 1:c
    for k = 1:x

      if brightImage(i,j,k) > thrshld

##        rgb_ = brightImage(i,j,k) + percentage;
        brightImage(i,j,k) = 0;

      endif

    endfor
  endfor
endfor

figure, imshowpair(original_img, brightImage, "montage");

##brightImage(1:600,:,3) = 0;
##
##imshow(brightImage);



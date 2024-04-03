

%% Power Law - Gamma Correction Transformation
## s = c*r^y

clc, clear all, close all, format compact

pkg load image

% Read the input image
input_image = imread('light.jpg');

% Define the gamma parameter
gamma = 0.3; % You can adjust this value to control the degree of brightness adjustment
## s = c*r^y
## y < 1: It enhances the contrast and brightens the image.
## y > 1: It reduces the contrast and darkens the image.
## y = 1: It no change occurs.

% Perform power law transformation
output_image = imadjust(input_image, [], [], gamma);

% Display the original and transformed images
subplot(1, 2, 1);
imshow(input_image);
title('Original Image');

subplot(1, 2, 2);
imshow(output_image);
title('Power Law Transformed Image (Gamma corrected)');


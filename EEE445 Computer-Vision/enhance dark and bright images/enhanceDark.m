

%% Enhance Dark Image with Log Transformation

clc, clear all, close all, format compact

pkg load image

% Read the dark image
dark_image = imread('dark.jpg');

% Display the original dark image
subplot(1, 2, 1);
imshow(dark_image);
title('Original Dark Image');

% Perform log transformation
c = 1; % Scaling constant
log_transformed_image = c * log(1 + double(dark_image)); % Apply log transformation

% Normalize the intensity values to fit within the range [0, 255]
log_transformed_image = uint8((255 / max(log_transformed_image(:))) * log_transformed_image);

% Display the log-transformed image
subplot(1, 2, 2);
imshow(log_transformed_image);
title('Log Transformed Image');


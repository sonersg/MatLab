%% Homework1, page 11

clc, clear all, close all, format compact

%pkg load image



img = zeros(256);

img(:, 1:5) = 0.8;
img(:, 251:256) = 0.8;

img(1:5, :) = 0.8;
img(251:256, :) = 0.8;



img(5:87, 87:169) = 0.1;
img(5:87, 169:251) = 0.2;

img(87:169, 5:87) = 0.3;
img(87:169, 87:169) = 0.4;
img(87:169, 169:251) = 0.5;

img(169:251, 5:87) = 0.6;
img(169:251, 87:169) = 0.7;
img(169:251, 169:251) = 0.8;


figure, imshow(img);


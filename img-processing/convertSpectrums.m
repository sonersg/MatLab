

%% Convert Color Spectrums

clc, clear all, close all, format compact

##pkg load image

img = imread("desktop.png");

img_raw = img;

##figure, imshow(img_raw);



######## Split into RGB Channels

##[R,G,B] = imsplit(img_raw);

R = img_raw(:,:,1);
G = img_raw(:,:,2);
B = img_raw(:,:,3);

##figure, imshow(R), pause(0.5), title("Red");
##figure, imshow(G), pause(0.5), title("Green");
##figure, imshow(B), pause(0.5), title("Blue");



###### Recombine color channels into an image

##recombined = cat(3,R,G,B);
##figure, imshow(recombined), pause(0.5), title("Recombined");



###### Edit pixels values

R(:,:) = 0;

recombined = cat(3,R,G,B);
figure, imshow(recombined), pause(0.5), title("Recombined Without Red");



###### Hues, Saturations, Values

img = rgb2hsv(img_raw);
##[H,S,v] = imsplit(img);
H = img(:,:,1);
S = img(:,:,2);
V = img(:,:,3);

figure, imshow(img), pause(0.5), title("hsv");





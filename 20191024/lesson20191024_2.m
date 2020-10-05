clear all;
close all;

x = double(imread("cameraman.tif"));
h = 1/9*[1 1 1;1 1 1; 1 1 1]
yy = imfilter(x,h,'corr','symmetric')

figure;
imshow(uint8(yy))
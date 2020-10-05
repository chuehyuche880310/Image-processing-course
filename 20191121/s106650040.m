clear all;
close all;

f = imread('cameraman.tif');

F = fft2(f);
h = (1/9)*[2 3 2;1 -5 1;1 10 1]; 
% h = (1/9)*[1 1 1;1 1 1;1 1 1]; %Low pass
h_pad= zeros(256,256);

h_pad(1:3,1:3)=h;
H_pad = fft2(h_pad);
Y_1 = F.* H_pad;
y_1 = ifft2(Y_1);

h_back = ifft2(H_pad);
h_back_1 = h_back(1:3,1:3);

y_2 = imfilter(f,h_back_1);

SAD = sum(sum(abs(double(y_2)-y_1))); %SAD
figure;
subplot(1,2,1)
imshow(uint8(real(y_1)));
title('頻域點乘還原')
subplot(1,2,2)
imshow(uint8(real(y_2)));
title('時域相摺積')
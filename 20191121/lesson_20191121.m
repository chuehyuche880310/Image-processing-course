clear all;
close all;

f = imread('cameraman.tif');

F = fft2(f);

figure;
subplot(1,2,1)
imshow(uint8(f));
subplot(1,2,2)
mesh(abs(F))

%低通濾波器 的時域 conv h
h = (1/9)*[1 1 1;1 1 1;1 1 1]; %Low pass
% h2=(1/9)*[1 0 -1;2 0 -2;1 0 -1]; %High pass

figure;
subplot(1,2,1); imshow(h);
h_pad_zero = zeros(256,256);
h_pad_zero(1:3,1:3) = h;
H = fft2(h_pad_zero);
subplot(1,2,2);mesh(abs(H));

y=imfilter(double(f),h);
figure;
imshow(uint8(y));
%-------------------------------------
%頻譜濾波的方法   (點乘->方法2)
Y= H.*F
y = ifft2(Y);
figure; imshow(uint8(y));

%設計一個頻譜濾波器，大H，256*256 裡面的值 隨便設， 走方法二 就是把原信號的時域轉頻譜 .* H => Y 再轉ifft2 變 y 在劃出來。
%設計一個頻譜濾波器，大H，轉ifft2轉回小h(先轉再取3*3) 然後跟 x 做摺機，算出y 在劃出來，看看與 方法2的圖 是否有差別。
%(答案是:沒什麼差)

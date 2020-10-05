clear all;
close all;

f = imread('cameraman.tif');

F = fft2(f);

figure;
subplot(1,2,1)
imshow(uint8(f));
subplot(1,2,2)
mesh(abs(F))

%�C�q�o�i�� ���ɰ� conv h
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
%�W���o�i����k   (�I��->��k2)
Y= H.*F
y = ifft2(Y);
figure; imshow(uint8(y));

%�]�p�@���W���o�i���A�jH�A256*256 �̭����� �H�K�]�A ����k�G �N�O���H�����ɰ����W�� .* H => Y �A��ifft2 �� y �b���X�ӡC
%�]�p�@���W���o�i���A�jH�A��ifft2��^�ph(����A��3*3) �M��� x ���P���A��Xy �b���X�ӡA�ݬݻP ��k2���� �O�_���t�O�C
%(���׬O:�S����t)

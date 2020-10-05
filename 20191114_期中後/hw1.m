%����:
%�\�v100000�H�U���o��0 -->�o���W�A�C�W�q�L
clear all;
close all;
a = double(imread('cameraman.tif'));
A=fft2(a);
Ac=fftshift(A);
Ac_abs = abs(Ac);
figure;
mesh(abs(Ac));
title('original mesh');
% title('after fft shift. |freq|');
for i =1:256
    for j =1:256
        if (Ac_abs(i,j) < 100000 )
            Ac(i,j)=0;
        end
    end
end
figure; mesh(abs(Ac));
title('after filter');
Ac_ifft = ifft2(ifftshift(Ac));
figure;
imshow(uint8(Ac_ifft));
SAD_SUM  = sum(sum(abs(a-Ac_ifft)))



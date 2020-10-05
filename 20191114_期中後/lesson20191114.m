clear all
close all
% 
% ak = [3+4j,5-6j,7+8j,4-3j,5,7+9j,6+7j,9+8j]
ak= [1,2,7,4,11,6,7,8]
fft_ak = abs(fft(ak));

figure;
subplot(211);
stem(abs(ak))
title("original");
subplot(212);
stem(fft_ak);
title("fft");
%----------------------------------

photo=imread("Fig0303(a).tif");
figure;imshow("Fig0303(a).tif");

photo_fft = fft2(photo);
mesh(abs(photo_fft));
photo_back = ifft2(photo_fft)
error = abs(photo_back - double(photo));
error = sum(sum(error));
% figure;imshow(uint8(photo_back));
%-----------------------------------

photo_fft = fftshift(fft2(photo));
figure;
mesh(abs(photo_fft));
title("photo fft mesh")

photo_ifft = ifftshift(photo_fft);
figure;
mesh(abs(photo_ifft))
title("photo ifft mesh")

photo_ifft = ifft2(photo_ifft);

figure;
imshow(uint8(photo_ifft));
title("photo ifft後的原圖")
%------------------------------------

% x=234 - 280
% % y=255-256
% x=0-398
% y=261-498

for i = 1:398
    for j = 261:498
        
        photo_ifft(i,j) = 0;     
        
        
    end
end
figure;
imshow(uint8(photo_ifft));
title("photo filter後 ")
new = fftshift(fft2(photo_ifft));
figure;mesh(abs(new));
title("photo filter後的mesh ")












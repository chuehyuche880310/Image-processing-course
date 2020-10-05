clear all
close all

a = imread('cameraman.tif');
b = double(a);
figure;imshow(uint8(a));
a_fft2 = fftshift(fft2(b));

figure;
mesh(abs(a_fft2));

for i = 1:256
    for j = 1:256
        
        if b(i,j)>50     
              b(i,j) = 255;     
        end
        
        
    end
end


figure;
imshow(uint8(b));
new = fftshift(fft2(b));
figure;mesh(abs(new));


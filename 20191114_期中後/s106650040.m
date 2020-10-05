%第一個說明:
%功率100000以下的濾為0 -->濾高頻，低頻通過
clear all;
close all;
a = double(imread('cameraman.tif'));
A=fft2(a);
Ac=fftshift(A);
Ac_abs = abs(Ac);
figure;
subplot(131);
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
subplot(132); mesh(abs(Ac));
title('after filter');
Ac_ifft = ifft2(ifftshift(Ac));
subplot(133);
imshow(uint8(Ac_ifft));
SAD_SUM  = sum(sum(abs(a-Ac_ifft)))

%第二個說明:
%功率100000以上的濾為0 -->濾低頻，高頻通過
clear all;

a = double(imread('cameraman.tif'));
A=fft2(a);
Ac=fftshift(A);
Ac_abs = abs(Ac);
figure;
subplot(131);
mesh(abs(Ac));
title('original mesh');
% title('after fft shift. |freq|');
for i =1:256
    for j =1:256
        if (Ac_abs(i,j) > 100000 )
            Ac(i,j)=0;
        end
    end
end
subplot(132); mesh(abs(Ac));
title('after filter');
Ac_ifft = ifft2(ifftshift(Ac));
subplot(133);
imshow(uint8(Ac_ifft));
SAD_SUM  = sum(sum(abs(a-Ac_ifft)))

%第三個說明
%功率100000以上的-50000 ->故使他有點偏高頻，然後與原圖相甚不遠，所以他的SAD比較小
clear all;

a = double(imread('cameraman.tif'));
A=fft2(a);
Ac=fftshift(A);
Ac_abs = abs(Ac);
figure;
subplot(131);
mesh(abs(Ac));
title('original mesh');
% title('after fft shift. |freq|');
for i =1:256
    for j =1:256
        if (Ac_abs(i,j) > 100000 )
            
           Ac(i,j)=Ac(i,j)-50000;
   
        end
    end
end
subplot(132); mesh(abs(Ac));
title('after filter');
Ac_ifft = ifft2(ifftshift(Ac));
subplot(133);
imshow(uint8(Ac_ifft));
SAD_SUM  = sum(sum(abs(a-Ac_ifft)))


%第四個說明
%功率100000以上的+50000，故使他有點偏低頻，然後與原圖相甚不遠，所以他的SAD比較小
clear all;

a = double(imread('cameraman.tif'));
A=fft2(a);
Ac=fftshift(A);
Ac_abs = abs(Ac);
figure;
subplot(131);
mesh(abs(Ac));
title('original mesh');
% title('after fft shift. |freq|');
for i =1:256
    for j =1:256
        if (Ac_abs(i,j) < 100000 )
            
           Ac(i,j)=Ac(i,j)+50000;
   
        end
    end
end
subplot(132); mesh(abs(Ac));
title('after filter');
Ac_ifft = ifft2(ifftshift(Ac));
subplot(133);
imshow(uint8(Ac_ifft));
SAD_SUM  = sum(sum(abs(a-Ac_ifft)))



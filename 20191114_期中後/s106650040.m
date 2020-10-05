%�Ĥ@�ӻ���:
%�\�v100000�H�U���o��0 -->�o���W�A�C�W�q�L
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

%�ĤG�ӻ���:
%�\�v100000�H�W���o��0 -->�o�C�W�A���W�q�L
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

%�ĤT�ӻ���
%�\�v100000�H�W��-50000 ->�G�ϥL���I�����W�A�M��P��Ϭ۬Ƥ����A�ҥH�L��SAD����p
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


%�ĥ|�ӻ���
%�\�v100000�H�W��+50000�A�G�ϥL���I���C�W�A�M��P��Ϭ۬Ƥ����A�ҥH�L��SAD����p
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



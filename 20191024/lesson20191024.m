clear all;
close all;

X = double(imread("cameraman.tif"));
H = [1/9 1/9 1/9 ;1/9 1/9 1/9 ; 1/9 1/9 1/9];

for i=1:256-2
    for j=1:256-2
        
       Y(i,j)= sum(sum(X(i:i+2,j:j+2) .* H));
        
    end
end


H1 = 1/8*[-1 -1 -1;-1 8 -1;-1 -1 -1]; %��t������ %���W�o�i�� �]���ܤƤj���a��N�O���W 
                               %�z�L�o�ӷ|�Ⱚ�W�]�N�O��t�d�U�A���S�ƻ��ܤƪ�*�󤧫�|����0�A�h�O�¦�h��!

for i=1:256-2
    for j=1:256-2
        
       Y1(i,j)= sum(sum(X(i:i+2,j:j+2) .* H1));
        
    end
end

%TRY BY MYSELF
H2 = 1/9*[-1 -1 -1;-1 8 -1;-1 -1 -1];
H3 = 1/9*[1 0 -1;2 0 -2;1 0 -1];
for i=1:256-2
    for j=1:256-2
        
       Y2(i,j)= sum(sum(X(i:i+2,j:j+2) .* H3));
        
    end
end


figure;
mesh(Y1)

% figure;
% imshow(uint8(Y))
% 
figure;
imshow(uint8(Y2))


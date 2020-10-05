clear all;
close all;

X = double(imread("cameraman.tif"));
H = [1/9 1/9 1/9 ;1/9 1/9 1/9 ; 1/9 1/9 1/9];

for i=1:256-2
    for j=1:256-2
        
       Y(i,j)= sum(sum(X(i:i+2,j:j+2) .* H));
        
    end
end


H1 = 1/8*[-1 -1 -1;-1 8 -1;-1 -1 -1]; %邊緣偵測器 %高頻濾波器 因為變化大的地方就是高頻 
                               %透過這個會把高頻也就是邊緣留下，都沒甚麼變化的*於之後會接近0，則是黑色去掉!

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


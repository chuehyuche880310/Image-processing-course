%{ 
1. 題目 
把cameraman的右腳用輪廓偵測器並把8調成100

%}

%{ 
2. 用到的概念
(1)畫圖技巧
(2)for迴圈
(3)讀圖、運用圖形
%}

%{
3. 解答
(此題目的可讀性已經被周信廷同學確認過)

%}
%上括號那行不能有字


% 程式要可執行。
% 有多個小題要印在ｃｏｍｍａｎｄ　ｗｉｎｄｏｗ中，（不加分號的意思）
% 有幾小題，就有幾行沒有分號


clear all;
close all;

X = double(imread("cameraman.tif"));
H = 1/9*[-1 -1 -1;-1 100 -1; -1 -1 -1]
%H = 1/9*[-1 1 -1 ;-1 1 -1 ; -1 1 -1];

for i=1:256-2
    for j=1:256-2

        if((j>62 && j<85) && (i>224 && i<255))
            
            Y(i,j)= sum(sum(X(i:i+2,j:j+2) .* H));
        else
            Y(i,j) = X(i,j);
            
        end
        
    end
end

figure;
imshow(uint8(Y))
close all
clear all

% A= imread("cameraman.tif");
% figure; imshow(A);


% B=imresize(A,2);
% figure;imshow(B);


% C=imresize(A,2,'bilinear');
% figure;imshow(C);
% 
% D=imresize(A,0.5,'bicubic')
% figure;imshow(D);

left =imread("car_left.tif");
right=imread("car_right.tif");

figure;imshow(left);
figure;imshow(right);


temp = left(:,48)';



for i = 1:690
    for j =1:459
        error(j,i)=abs(temp(j)-right(j,i));        
    end
end

error_sum = sum(error(:,1:690))

[small_col_value,small_col] = min(error_sum);


% newnew=[right_cut left];
% figure;imshow(uint8(newnew));
right_cut = right(:,1:248);
new = zeros(459,248+690);
new(:,1:248) = right_cut;
new(:,249:891) = left(:,48:690);

figure; imshow(uint8(new));
 







clear all
close all
 
% scaling (double size) (try other factor)
T=[2 0 0;     %放大2倍
   0 2 0;
   0 0 1];
 

A=imread('cameraman.tif');
clear A_new;

for i=1:size(A,1)                      
    for j=1:size(A,2)
        
        orig_coord=[i j];
        new_coord=[orig_coord 1]*T;
       
        A_new(round(new_coord(1)),round(new_coord(2)))=A(i,j);
    end
end
 
figure; imshow(A)
figure; imshow(A_new)

k=1;
for x=-2:0.5:2              %曲線公式
   
    
    if(-1<=x) && (x<=1)
        
        y(k)=1.5*(abs(x)^3)-2.5*abs(x)^2+1;
        
    elseif ((-2<=x) && (x<-1)) ||((1<x) && (x<=2))
        
        y(k)=-0.5*abs(x)^3+2.5*abs(x)^2-4*abs(x)+2;
    end
     k=k+1;
end
figure;plot(y)

% %%
% h=[1/4 1/2 1/4];            %正交化公式
 
A_new=double(A_new);
 
for k=1:size(A_new,1)               %水平
    B_new(k,:)=conv(A_new(k,:),y);    
end
figure;imshow(uint8(B_new))
 
 
 
for k=1:size(B_new,1)               %垂直
    C_new(:,k)=conv(B_new(:,k),y);    
end
 
 
figure;imshow(uint8(C_new))
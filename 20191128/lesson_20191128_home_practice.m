clear all
close all
 
 theta=30*pi/180;
T=[cos(theta) -sin(theta) 0;
   sin(theta) cos(theta) 0;
   0 0 1];
% routine
A=imread('cameraman.tif');
clear A_new;

x_min = 0;
y_min = 0;
for i=1:size(A,1)
    for j=1:size(A,2)
        
        orig_coord=[i j];
        new_coord_1=[orig_coord 1]*T;
        new_coord=new_coord_1(1:2);
        
        x = round(new_coord(1));
        y = round(new_coord(2));
        
        if x < x_min
            x_min = x
        end
        
        if y < y_min
            y_min = y      
        end
        
        A_new(x+abs(x_min)+1,y+abs(y_min)+1) = A(i,j);
%         A_new(x+300,y+300) = A(i,j);

    end
end
 
figure; imshow(A)
figure; imshow(A_new)

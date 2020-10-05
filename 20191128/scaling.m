clear all
close all


T=[2 0 0;
   0 2 0;
   0 0 1];

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
%         A_new(x,y) = A(i,j);

        

        
%         A_new(x+300,y+300) = A(i,j);

    end
end
 figure; imshow(A_new)


h=[1/4 1/2 1/4];

        for i = 1:size(A_new,1)
            B_new(i,:) = conv(A_new(i,:),h) ;
        end
        
        for j = 1:size(B_new,1)
            C_new(:,j) = conv(B_new(:,j),h) ;
        end
 
figure; imshow(A)
figure; imshow(uint8(C_new *5))%乘倍數是因為用內差的，亮暗度要調整
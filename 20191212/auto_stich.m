close all
clear all

left =imread("car_left.tif");
right=imread("car_right.tif");

figure;imshow(left);
figure;imshow(right);

left = double(left);
right= double(right);

for i= 1:690
    A = left(:,i);
    for j =1:690
        B = right(:,j);
        error(i,j)=sum(abs(A-B)); 
    end
end

error_min = error(1,1);
for i =1:690
    for j =1:690
   
        if(error(i,j) < error_min)
            error_min = error(i,j);
            I = i;
            J = j;
        end 
    end
end

E=left(:,I:690);
figure;imshow(uint8(E));title('E');
F=right(:,1:J);
figure;imshow(uint8(F));title('F');
car_new=[F E];



figure;imshow(uint8(car_new));title('show');



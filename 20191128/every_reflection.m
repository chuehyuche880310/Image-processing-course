clear all
close all
% vertical reflection 
T=[-1 0 0; 
   0 1 0;
   0 0 1];
% horizontal reflection 
T=[1 0 0; 
   0 -1 0;
   0 0 1];
% %horizontal+vertical reflection
% T=[-1 0 0; 
%    0 -1 0;
%    0 0 1];

A=imread('cameraman.tif');
x_min=0;
y_min=0;
for i=1:size(A,1)
for j=1:size(A,2)

NewLocation = [i, j,1]*T;
x = round(NewLocation(1));
y = round(NewLocation(2));
if x < x_min
   x_min = x;
end
if y < y_min
  y_min = y;
end
A_new(x+abs(x_min)+1,y+abs(y_min)+1) = A(i,j);
end
end

for i=1:size(A,1)
for j=1:size(A,2)

NewLocation = [i, j,1]*T;
x = round(NewLocation(1));
y = round(NewLocation(2));
A_new(x+abs(x_min)+1,y+abs(y_min)+1) = A(i,j);

end
end

figure; imshow(A_new)
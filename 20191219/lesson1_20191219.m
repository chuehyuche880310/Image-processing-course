close all;
clear all;

basis8 = [1 -1 0 0 0 0 0 0 ];
basis7 = [0 0 1 -1 0 0 0 0 ];
basis6 = [0 0 0 0 1 -1 0 0 ];
basis5 = [0 0 0 0 0 0 1 -1];
basis4 = [1 1 -1 -1 0 0 0 0];
basis3 = [0 0 0 0 1 1 -1 -1];
basis2 = [1 1 1 1 -1 -1 -1 -1];
basis1 = [1 1 1 1 1 1 1 1];


x=[1 2 3 4 3 2 2 2];
%找出訊號的每個小波係數X(k),k=1~8;
figure;stem(x);

%最原始定義:第一個版本
%1.傅立葉轉換大X的動作 就是小波求內積的過程，(係數)。
%--推倒內積結果->X(k)=(basisk*(內積)x[n])/(basisk*(內積)basisk);
X(8) = (x*basis8')/(basis8*basis8');
X(7) = (x*basis7')/(basis7*basis7');
X(6) = (x*basis6')/(basis6*basis6');
X(5) = (x*basis5')/(basis5*basis5');
X(4) = (x*basis4')/(basis4*basis4');
X(3) = (x*basis3')/(basis3*basis3');
X(2) = (x*basis2')/(basis2*basis2');
X(1) = (x*basis1')/(basis1*basis1');

figure; stem(X);



%2.小波反轉換->有大X後，求小x的動作，也就是小波線性相加的結果
%--x[n]=X(1)basis1+X(2)*basis2+X(3)*basis3+....+X(8)*basis8
%--算回去看看是否與當初x[n]相同

x_new=X(1)*basis1+X(2)*basis2+X(3)*basis3+X(4)*basis4+
      X(5)*basis5+X(6)*basis6+X(7)*basis7+X(8)*basis8;

figure;stem(x_new);

error=sum(abs(x_new-x))

%第二個版本:用矩陣完成
%1.轉成大X
X_new  = zeros(8,1);

basis_array = zeros(8,8)
basis_array(1,:) = basis1;
basis_array(2,:) = basis2;
basis_array(3,:) = basis3;
basis_array(4,:) = basis4;
basis_array(5,:) = basis5;
basis_array(6,:) = basis6;
basis_array(7,:) = basis7;
basis_array(8,:) = basis8;


for i = 1:8

    self(i) = (basis_array(i,:)*basis_array(i,:)')

end

X_new = basis_array * x'
X_new = X_new./self'

%第二個版本:用矩陣完成
%2.轉成小x
x_new = basis_array'*X'

%第三個版本:多層次快速小波轉換(haar)
%1.轉成大X

% X_newnew=zeros(1,16);
% for i = 1:8
% 
% X_newnew(1)=x(i)+X_newnew(1);   
% X_newnew(2)=
% end
% X_newnew(1)=X_newnew(1)/8;







clear all;
close all;

s= [1 3 5 7 ];
t = s*2 %每個元素都乘2
y = s+9 %每個元素都加九
a = [2 4 6 8 ];
b = a.*s  %點乘 為 一個一個乘
bb = a ./ s %點除
c = [1 2 3 4]*[5 6 7 8]' %沒有點 就是矩陣相乘 ex: 1x4 * 4x1
%--------------陣列取值--------
t = [3 7 9 11];
t(3)
t([1 3]) %取多數值


y = cos(0)
y = cos(pi*1)
y= cos(pi*2)
y = cos(pi*[1 2])
x = [1:0.1:4]
y = cos((pi/2)*x)
%figure;plot(x,y); grid on;
%figure;stem(x,y); grid on;
%------------指數----------------

y = 2^3
y= 2.^[2 3]
y = exp(3)
y = exp([0:1:50])  %y => 1x51

%------------對數----------------
x = 10
y = log(x) % ln(x) 以e為底 = log(x) in matlab
y = log10(x) %log以10為底 = log10(x) in matlab

%----------Convolution--------------

n = [1:0.1:5];
b = [1 2 3 4]
c = [5 6 7 8]
yy = exp(n)
xx = sin((pi/2) * n)
figure; plot(yy)
figure; plot(xx)
figure; plot(yy,xx)
figure; stem(yy,xx)

%---------左右串接-------

c = [1 2 3 4];
b =[5 6 7 8];
d = [c b] %or-> d = [c,b]

%--------畫圖技巧-------
figure; plot(sin(pi/2 * [1:0.1:4])); hold on
plot(cos(pi/2 * [1:0.1:4])); hold off

figure;
plot(sin(pi*[0:0.1:10]),'k:diamond');
hold on
plot(cos(pi*[0:0.1:10]),'r-square');
hold off
legend("第一個訊號sin",'第二個訊號cos')%描述不同訊號的文字

%------畫好幾個視窗subplot--------

x = 0:0.1:4*pi;
figure;
subplot(2,2,1);plot(x,sin(x));
subplot(2,2,2);plot(x,cos(x));
subplot(2,2,3);plot(x,sin(x) .* exp(-x/5));
subplot(2,2,4);plot(x,x.^2);

%-------------BAR----------------
figure;bar(sin(x));
%--------------------------------

a = [1 2 3 4 ; 5 6 7 8 ; 9 10 11 12] 

a(2,3)
a(3,1:2)
a(end,1:2)
a(2:3,1)
a(2:3,1:4)
a(2:end,1:end)
a(:,:)
a([1 3],:)
a(2,3) = 5
a(:,2) = []
b = a(3,:)
%----------------轉置---------------------

a = a'
d =[1 2 3 4 ; 9 10 11 12];
e = [1 6 9 4 ;5 6 7 8]
f =[d e] %左右串接
g = [d;e]%上下串接
h = [a [4 3 2]'] %新增行
i = [a;[4 3 2]] %新增列

a = [1 2 3 4;5 6 7 8;9 10 11 12]
b = fliplr(a)  %左右顛倒
c = flipud(a)  %上下顛倒

%--------------常用特殊矩陣------------------
%做影像處理，可能要先空一個矩陣出來 ->zeros / ones
a = zeros(5,5)

% .*向量點相乘   ./向量點相除  ->大小要一樣

%觀測每個點(以後常用到)
for i =1:3
    for j =1:4
        A(i,j)
    end
end




 





clear all %清掉記憶體workspace
close all%關掉所有圖(視窗)


x=87;
y=2;

for z=1:3
   b=y^z;
   disp(b)
end

a =[ 1 2 3 4 5 6 7 8];
b = [1:100]
c = 1:100 %有冒號不用括號
d =1:0.5:10 %以0.5為公差
e = 100:-1:1  ;
length(e)
size(e)
mean(e)
var(e)  %變異數(為0 = 裡面都一樣)
[k g] = min(e)%找出e陣列裡最小的值丟給k 最小的值的位置丟給g
[kk gg] = max(e)
a(1,2)
%%%
matrix = [5 2 7 8 9];
%[sort_matrix sort_matrix_index] = sort(matrix) %從小排到大
[sort_matrix sort_matrix_index] = sort(matrix,'descend') %從大排到小

%practice------------------------
figure; %強制執行畫一張圖出來
plot (matrix)
figure; %強制執行畫一張圖出來
stem(matrix)

x = [1.5 3.5 5.5 7.5]
y = [2 4 6 8]
figure;
plot(x,y)
grid on;
xlabel('陣列')
ylabel('大小')
title('練習plot功能')
axis([1 4 2 8])


%畫出一張圖，x軸是 2,4,6,8,10 y軸的值則是x軸的三次方 並且畫出離散的圖(xlabel = age,ylabel = candy_account,title = candy_distribution)






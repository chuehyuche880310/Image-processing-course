%畫出一張圖，x軸是 2~10 公差為2(由小到大)， y軸的值則是10~2 公差為2(由大到小)
%並且畫出離散and連線的圖(xlabel = age,ylabel = candy_account,title = candy_distribution)

x = 2:2:10
y = 10:-2:2


figure;
stem(x,y)
grid on;
xlabel('age')
ylabel('candy_account')
title('candy_distribution')

figure;
plot(x,y)
grid on;
xlabel('age')
ylabel('candy_account')
title('candy_distribution')

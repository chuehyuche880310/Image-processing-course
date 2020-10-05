%{   題號 4.畫一個彩虹，包括六種顏色=紅橙黃綠藍紫  %}

clear all;
close all;

x = [-3:0.1:3]
y = -(x.^2) 
figure;
plot(x,y,'color',[1 0 0],'linewidth',4)
hold on;
plot(x,y-0.1,'color',[1 0.5 0],'linewidth',4)
plot(x,y-0.2,'color',[1 1 0],'linewidth',4)
plot(x,y-0.3,'color',[0 1 1],'linewidth',4)
plot(x,y-0.4,'color',[0 0 1],'linewidth',4)
plot(x,y-0.5,'color',[1 0 1],'linewidth',4)
hold off;

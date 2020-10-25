clear all;
clc;
%load accidents hwydata   % load data
%cost =load('.\cost_function.txt');
data10 =load('.\data_10m.txt');
data30 =load('.\data_30m.txt');
data45 =load('.\data_45m.txt');
data60 =load('.\data_60m.txt');
data130 =load('.\data_130m.txt');

data10_ = data10';
data30_ = data30'; data30_ = data30_(1,1:87);
data45_ = data45'; data45_ = data45_(1,1:87);
data60_ = data60'; data60_ = data60_(1,1:87);
data130_ = data130'; data130_ = data130_(1,1:87);
t=1:1:87;

% - * o
% 蓝色：“b”绿色：“g”红色：“r”蓝绿：“c”紫红：“m”黄色：“y”黑色：“k”
% 实线：“-”点线：“:”点划线：“-.”虚线：“--”
plot(t,data10_,'--g');
hold on;
plot(t,data30_,':r');
hold on;
plot(t,data45_,'-.b');
hold on;
plot(t,data130_,'-k');
grid on;
xlabel('Frame sequence')
ylabel('Number of matching points')
title('Distance influence')
legend('20m','60m','90m','130m')

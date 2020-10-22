close all
clc
load accidents hwydata   % load data
%cost =load('.\cost_function.txt');
data2 =importdata('.\cost_function.txt',',')
roll = data2(:,1);
pitch = data2(:,2);
yaw = data2(:,3);
cost =data2(:,4);
% roll_initial = find(roll==0);
% yaw_initial = find(abs(yaw-pi/2)<0.0001)
% j=1;
% for i=1:length(roll_initial)
%     choosen = find(yaw_initial==roll_initial(i));
%     if length(choosen)>0
%     choosen_pitch(j) = choosen;
%     j=j+1;
%     end
% end
% temp = cost(choosen_pitch);
% select_pitch_index = find(temp==min(temp));
% 
% standard=10
% for i=1:length(cost)
%     if(cost(i)<standard)
%         standard=cost(i)
%     end
% end
% find(cost==standard)
% roll(1477)
% yaw(1477)
% cost
% (1477)
A=[ 0,-1.57080000000000,1.57080000000000,9.31540000000000;
    0,-1.56905000000000,1.56905000000000,9.06119000000000;
    0,-1.57254000000000,1.56381000000000,8.97991000000000;
    0,-1.56731000000000,1.56905000000000,8.77732000000000;
    0,-1.57080000000000,1.57429000000000,8.63766000000000;
    0,-1.57429000000000,1.57778000000000,8.58020000000000;
    0,-1.56556000000000,1.56381000000000,8.31409000000000;
    0,-1.57603000000000,1.56556000000000,8.24473000000000;
    0,-1.57603000000000,1.58476000000000,8.12460000000000;
    0,-1.57603000000000,1.56032000000000,8.09252000000000;
    -0.00174533000000000,-1.57603000000000,1.58650000000000,7.97040000000000;
    -0.00174533000000000,-1.58127000000000,1.58476000000000,7.61060000000000;
    0.00349066000000000,-1.57603000000000,1.58476000000000,7.87409000000000;
    0.00349066000000000,-1.57603000000000,1.58650000000000,7.81612000000000;
    0.00349066000000000,-1.57778000000000,1.58650000000000,7.67281000000000;
    -0.00174533000000000,-1.58127000000000,1.58476000000000,7.61060000000000;
    3.1285,-1.5652,-1.5301,1.7587;
    3.1285,-1.5588,-1.5205,2.0491;
    3.1317,-1.5844,-1.5269,2.1651]
subplot(1,2,1);
scatter3(roll,pitch,yaw,10,cost,'filled') %绘制彩点
%patch('XData',[A(:,1); NaN],'YData',[A(:,2); NaN], 'ZData',[A(:,3); NaN],'CData',[A(:,4); NaN],'facecolor','none','edgecolor','flat');
hold on;
xlabel('roll')
ylabel('yaw')
zlabel('pitch')
cb = colorbar;   % create and label the colorbar
cb.Label.String = 'cost(distance)';

subplot(1,2,2);
plot3(A(:,1),A(:,2),A(:,3),'r','LineWidth',2);
hold on;
%

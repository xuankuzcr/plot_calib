clc
load accidents hwydata   % load data
cost =load('.\1.txt');
data2 =importdata('.\2.txt',',')
Zthelta = data2(:,1);
Ythelta = data2(:,2);
Xthelta = data2(:,3);
cost=cost(:,1);
%filename = '.\2.txt';
%[data1,data2,data3,data4]=textscan(filename,'%n%n%n%n');
A=[3.1285, -1.5844, -1.5301,1;
3.1285,-1.5844,-1.5109,2;
];                         

long = -hwydata(:,2);                              % longitude data
lat = hwydata(:,3);                                % latitude data
rural = 100 - hwydata(:,17);                       % percent rural data
fatalities = hwydata(:,11);                        % fatalities data

scatter3(Xthelta ,Ythelta,Zthelta,20,cost,'filled')    % draw the scatter plot
patch('XData',[data2(:,1); NaN],'YData',[data2(:,2); NaN], 'ZData',[data2(:,3); NaN],'CData',[A(:,4); NaN],'facecolor','none','edgecolor','flat');
hold on;
ax = gca;
ax.XDir = 'reverse';
view(-31,14)
xlabel('Xtheltae')
ylabel('Ythelta')
zlabel('Zthelta')

cb = colorbar;   % create and label the colorbar
cb.Label.String = 'cost(distance)';

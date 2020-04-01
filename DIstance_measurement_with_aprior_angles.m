clear; close all; clc;

load('Ant2_two_antennas.mat')
load('Ant1_two_antennas.mat')

% alpha1 = single(alpha1(28:300));
% alpha2 = single(alpha2(28:300));
% rssi_1 = single(rssi_1(28:300));
% rssi_2 = single(rssi_2(28:300));
% 
% d = 0.21;
% r1 = abs(d*sin((90-alpha2)*pi/180)./sin((90-alpha1)*pi/180+(90-alpha2)*pi/180));
% r2 = abs(d*sin((90-alpha1)*pi/180)./sin((90-alpha1)*pi/180+(90-alpha2)*pi/180));
% disp(['СКО alpha1 = ' num2str(std(alpha1)) ' градусов'])
% disp(['СКО alpha2 = ' num2str(std(alpha2)) ' градусов'])
% disp(['СКО RSSI_1 = ' num2str(std(rssi_1)) ' дБ'])
% disp(['СКО RSSI_2 = ' num2str(std(rssi_2)) ' дБ'])
% disp(['СКО R_1 = ' num2str(std(r1)) ' м'])
% disp(['Среднее значение R_1 = ' num2str(mean(r1)) ' м'])
% disp(['СКО R_2 = ' num2str(std(r2)) ' м'])
% disp(['Среднее значение R_2 = ' num2str(mean(r2)) ' м'])
% close all













alpha1 = alpha1(1:end-1);

alpha1 = single(alpha1)*pi/180;
alpha2 = single(alpha2)*pi/180;

d = 0.28;

X = (cot(alpha1)+cot(alpha2))./(cot(alpha2)-cot(alpha1))*d/2;
Y = tan(pi/2 - alpha1).*(X-d/2);

R = sqrt(X.^2+Y.^2);
plot(R)
histogram(R(1:300))
disp(num2str(mean(R(1:300))))

clear; close all; clc;

load('R.mat')
figure('units', 'normalized', 'outerposition', [0 0 1 1])
subplot(2,1,1)
plot(R)
title('���������� �� Slave')
xlabel('t, �������')
ylabel('R, �', 'rotation', 0)
ylim([0 200e-3])
xlim([1 length(R)])
grid on
subplot(2,1,2)
histogram(R)
title('����������� ������������� ���������')
xlabel('R, �')

disp(['��� R = ' num2str(std(R)) ' �'])
disp(['��������� R = ' num2str(var(R)) ' �^2'])
disp(['������� R = ' num2str(mean(R)) ' �'])
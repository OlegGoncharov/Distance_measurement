clear; close all; clc;

load('R.mat')
figure('units', 'normalized', 'outerposition', [0 0 1 1])
subplot(2,1,1)
plot(R)
title('Расстояние до Slave')
xlabel('t, отсчеты')
ylabel('R, м', 'rotation', 0)
ylim([0 200e-3])
xlim([1 length(R)])
grid on
subplot(2,1,2)
histogram(R)
title('Гистограмма распределения дальности')
xlabel('R, м')

disp(['СКО R = ' num2str(std(R)) ' м'])
disp(['Дисперсия R = ' num2str(var(R)) ' м^2'])
disp(['Среднее R = ' num2str(mean(R)) ' м'])
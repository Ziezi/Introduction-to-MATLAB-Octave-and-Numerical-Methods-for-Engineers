% Script comparing  [Y] = MyCubicSplineFlat(x, y, X) and [Y] = MyCubicSpline(x, y, X).
% Author: Chris B. Kirov
% Date: 26.09.2017  
clc
clear
close all

%x = [0, 0.1, 0.15, 0.35, 0.6, 0.7, 0.95, 1];
%y = [1, 0.8187, 0.7408, 0.4966, 0.3012, 0.2466, 0.1496, 0.1353];

x = [0,1,2,3,4];
y = [0,0,1,0,0];

%X = linspace(0, 1, 100);

X = linspace(0, 4, 100);
Y = Chapter14Exercise2 (x, y, X);

subplot(1, 2, 1)
plot(X, Y, 'b', x, y, 'ro')
title('Cubic Spline Interpolation ')
axis([0  4 -0.4 1])
xlabel('x')
ylabel('y')
legend('Interpolation', 'Data', 'location', 'south')

Y2 = Chapter14Exercise5 (x, y, X);
subplot(1, 2, 2)
plot(X, Y2, 'b', x, y, 'ro')
title('Cubic Spline Flat Interpolation ')
axis([0  4 -0.4 1])
xlabel('x')
ylabel('y')
legend('Interpolation', 'Data', 'location', 'south')
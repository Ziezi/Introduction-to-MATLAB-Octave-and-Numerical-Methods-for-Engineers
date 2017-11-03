% Script applying [Y] = MyCubicSpline(x, y, X).
% Author: Chris B. Kirov
% Date: 26.09.2017  
clc
clear
close all

x = [0,1,2];                                                            % define end points that specify intervals for the polynomials.
y = [1,3,2];                                                            % 3 points imply 2 polynomials: S1 and S2.

xi = 1.5;                                                                 % interpolate yi for the following x.

Chapter14Exercise2 (x, y, xi)

x2 = [0, 0.1, 0.15, 0.35, 0.6, 0.7, 0.95, 1];
y2 = [1, 0.8187, 0.7408, 0.4966, 0.3012, 0.2466, 0.1496, 0.1353];

X = linspace(0, 1, 100);
Y = Chapter14Exercise2 (x2, y2, X);

plot(X, Y, 'b', x2, y2, 'ro')
title('Cubic Spline Interpolation ')
xlabel('x')
ylabel('y')
legend('Interpolation', 'Data')

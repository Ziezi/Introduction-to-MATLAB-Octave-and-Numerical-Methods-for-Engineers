% Script applying [Y] = myNearestNeighbor (x, y, X).
% Author: Chris B. Kirov
% Date: 26.09.2017  
clc
clear
close all

x  = [0, 0.1, 0.15, 0.35, 0.6, 0.7, 0.95, 1];
y  = [1, 0.8187, 0.7408, 0.4966, 0.3012, 0.2466, 0.1496, 0.1353];

X = linspace(0, 1, 100);
Y = Chapter14Exercise3 (x, y, X);

plot(X, Y, 'b', x, y, 'ro')
title('Nearest Neighbour Interpolation ')
xlabel('x')
ylabel('y')
legend('Interpolation', 'Data')
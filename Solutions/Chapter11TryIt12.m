% Script showing 3D graphs using surf and contour.
% Author: Chris B. Kirov
% Date: 14.09.2017 
clc
clear
close all

iBeg = -5;
iStep = 0.2;
iEnd = 5; 

x = iBeg : iStep : iEnd;
y = iBeg : iStep : iEnd;

[X, Y] = meshgrid(x, y);                                      % Build 2D grid by multiplying vectors x and y into matrices.

Z = sin(X) .* cos(Y);                                           % Evaluate Z(x, y) on the 2D grid and store the values in matrix Z.

rowsNum = 1;
columnsNum = 2;
currentNumber = 1;

subplot(rowsNum , columnsNum, currentNumber)
surf(X, Y, Z)                                                          % create a surface plot.
title('Surface Plot using surf')
xlabel('x')
ylabel('y')
zlabel('z')

currentNumber = currentNumber + 1;
subplot(rowsNum , columnsNum, currentNumber)
contour(X, Y, Z)                                                   % create a countour plot.
title('Surface Plot using contour')
xlabel('x')
ylabel('y')
zlabel('z')
 





% Script applying [Y] = myLagrange(x,y,X).
% Author: Chris B. Kirov
% Date: 27.09.2017  
clc
clear
close all

x = [0,1,2,3,4];
y = [2,1,3,5,1];
X = linspace(0, 4, 100);

hold on
plot(x, y, 'ro')
plot( X, Chapter14Exercise9(x,y, X) )
xlabel('x')
ylabel('y')
title('Lagrange Interpolation of Data Points.')
legend('Data', 'Interpolation')
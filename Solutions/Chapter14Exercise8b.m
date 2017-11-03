% Script applying [Y] =myDCubicSpline (x, y, X, D).
% Author: Chris B. Kirov
% Date: 27.09.2017  
clc
clear
close all

x = [0,1,2,3,4];
y = [0,0,1,0,0];
X = linspace(0, 4, 100);

subplot(2, 2, 1)
plot(x, y, 'ro',  X, Chapter14Exercise8 (x, y, X, 0) )
xlabel('x')
ylabel('y')
title('Slope at end poinds 0.')
subplot(2, 2, 2)
plot(x, y, 'ro',  X, Chapter14Exercise8 (x, y, X, 1) )
xlabel('x')
ylabel('y')
title('Slope at end poinds 1.')
subplot(2, 2, 3)
plot(x, y, 'ro',  X, Chapter14Exercise8 (x, y, X, -1) )
xlabel('x')
ylabel('y')
title('Slope at end poinds -1.')
subplot(2, 2, 4)
plot(x, y, 'ro',  X, Chapter14Exercise8 (x, y, X, 4) )
xlabel('x')
ylabel('y')
title('Slope at end poinds 4.')
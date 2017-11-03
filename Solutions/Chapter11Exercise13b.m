% Script applying [] = mySurfacePlotter(F, x, y, option).
% Author: Chris B. Kirov
% Date: 16.09.2017  
clc
clear
close all

F = @(x,y) cos(y) .* sin(exp(x));
x = -1 : 0.1 : 1;
y = -2 : 0.2 : 2;

option = 'surf';
Chapter11Exercise13(F, x, y, option);

disp(sprintf('Press a key to continue...'))
pause;

option = 'contour';
Chapter11Exercise13(F, x, y, option);
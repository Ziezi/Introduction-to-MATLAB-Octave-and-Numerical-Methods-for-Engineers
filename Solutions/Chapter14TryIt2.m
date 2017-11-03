% Script showing Cubic Spline Interpolation using built-in functions.
% Author: Chris B. Kirov
% Date: 23.09.2017  
clc
clear
close all

X = [0,1,2];                                                           % data set used for the cubic spline interpolation
Y = [1,3,2];                                                           % 3 points => 2 intervals => 2 cubic polynomials connected at the middle point (x= 1, y = 3).

x = linspace(0, 2, 100);                                        % generate data set to be interpolated by the found cubic polynomials. 

y = interp1(X, Y, x, 'cubic');                                % get 2 cubic poly from X and Y and evaluate each of them at proper interval of x to get y.

hold on                                                                   % display result.
plot(x, y);
plot(X, Y, 'ro')
title('Cubic Spline Interpolation.')
xlabel('x')
ylabel('y')
% Script applying [alpha, beta] = myExpFit (x,y).
% Author: Chris B. Kirov
% Date: 23.09.2017  
clc
clear
close all

% generate independent variable data.
x = linspace(0.001, 1, 1000);

% generate dependent variable data, contaminated with error.
error = 0.25 * randn(size(x));
y = 2 * exp(-0.5 * x) + error;

% \hat{y}(x) = alpha e^{beta * x}.  
[alpha, beta] = Chapter13Exercise3(x, y)

% expected values: a = 2.0 +/- 0.25 and b = -0.5 +/- 0.25.

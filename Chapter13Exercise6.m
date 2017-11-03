% Script applying [alpha, beta] = myExpRegression (x,y), same as Chapter13Exercise3(x,y).
% Author: Chris B. Kirov
% Date: 23.09.2017  
clc
clear
close all

x = linspace(0.001, 1, 1000);                              % generate independend variable data.
noise = 0.25 * randn( size(x) ) ;
y = ( 2 * exp(-0.5 * x) ) + noise;                         % generate dependent variable data contaminated with noise [0, 0.25].

[alpha, beta] = Chapter13Exercise3(x, y)          % model the data using: y = alpha * exp(beta * x).

approx = alpha * exp(beta* x);                            % consrtuct the approximation.

plot(x, y, 'b.', x, approx, 'r', 'LineWidth', 3)         % plot the data and the approximation.
title('Least Squares Regression for Exponential Model.')
xlabel('x')
ylabel('y')
legend('Data',  'Regression')

abs_path = 'D:\\Matlab Projects\\Intro to MATLAB - Octave\\';
filename = sprintf('%sChapter13Exercise6.pdf', abs_path);
print(filename)
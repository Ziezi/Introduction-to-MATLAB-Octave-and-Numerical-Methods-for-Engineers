% Script applying [beta] = myLinRegression (f, x, y), which is same as Chapter13Exercise2(f, x, y).
% Author: Chris B. Kirov
% Date: 23.09.2017  
clc
clear
close all

x = linspace(0, 2*pi, 1000);                                % generate independent variable data.
y = 3 * sin(x) - (2 * cos(x) )+ randn(size(x));   % generate dependent variable data contaminated with noise [0, 1].

f = {@sin, @cos};                                                % define the basic functions of the estimator.
beta = Chapter13Exercise2 (f, x, y)                    % apply linear least-squares regression. [Beta] = myLSParams (f, x, y)

approx = beta(1) * f{1}(x) + beta(2) * f{2}(x); % construct the approximation.

plot(x, y, 'b.', x, approx, 'r', 'LineWidth', 3)         % plot the data and the approximation.
title('Least Squares Regression')
xlabel('x')
ylabel('y')
legend('Data', 'Regression')

abs_path = 'D:\\Matlab Projects\\Intro to MATLAB - Octave\\';
filename = sprintf('%sChapter13Exercise5.pdf', abs_path);
print(filename);

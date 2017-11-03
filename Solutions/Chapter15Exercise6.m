% Script showing 3rd order Taylor approximation of cosh(x) as: (e^x + e^{-x}) / 2, expanded around a = 0.
% Author: Chris B. Kirov
% Date: 29.09.2017  
clc
clear
close all

f = @(x) cosh(x);                                                  % Define function handler to the original function.

x = linspace(0, 2, 100);                                        % Generate an input data set.

N = 3;                                                                    % Specify approximation accuracy - 3rd order.

% coshx = (e^x + e^{-x}) / 2; Chapter15Exercise4(x, N) is an Nth order approximation of e^x, around a = 0.
approx = (Chapter15Exercise4(x, N) + Chapter15Exercise4(-x, N)) / 2; 

plot(x, f(x), 'b', x, approx, 'r')
xlabel('x')
ylabel('y')
legend( sprintf('Real: %s', func2str(f) ), sprintf('%d order Tylor approximation around: %d.', N, 0) ) 
title('Taylor Series Approximation of cosh(x).')
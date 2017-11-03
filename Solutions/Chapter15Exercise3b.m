% Script comparing the values of a function and its Taylor approximation.
% Author: Chris B. Kirov
% Date: 29.09.2017  
clc
clear
close all

f = @(x) exp(x.^2);                                              % Define function handler to the original function.

x = linspace(-2.5, 2.5, 100);                                % Generate an input data set.

N = 7;                                                                     % Approximation accuracy: 7th order, i.e. up ot the sum of the 7th term in Taylor expansion.

plot(x, f(x), 'b', x, Chapter15Exercise3(x, N), 'r')
xlabel('x')
ylabel('y')
legend('e^x^2', sprintf('%d order Tylor approximation around: %d.', N, 0) ) 

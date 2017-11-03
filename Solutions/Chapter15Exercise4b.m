% Script comparing the values of a function and its Taylor approximation.
% Author: Chris B. Kirov
% Date: 29.09.2017  
clc
clear
close all

f = @(x) exp(x);                                                    % Define function handler to the original function.

x = linspace(0, 5, 100);                                        % Generate an input data set.

N = 7;                                                                    % Specify approximation accuracy: 7th order.

plot(x, f(x), 'b', x, Chapter15Exercise4(x, N), 'r')
xlabel('x')
ylabel('y')
legend('Analytic: e^x', sprintf('%d order Tylor approximation around: %d.', N, 0) ) 
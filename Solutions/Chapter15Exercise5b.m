% Script comparing the errors of Taylor approximations of 
% the function: f(x) = sin(x) * cos(x) as sum of product and product of sum.
% Author: Chris B. Kirov
% Date: 29.09.2017  
clc
clear
close all

f = @(x) sin(x) .* cos(x);                                    % Define function handler to the original function.

x = linspace(-pi, pi, 100);                                    % Generate an input data set.

N = 4;                                                                    % Specify approximation accuracy: 4th order.

abs_err1 = abs( f(pi/2) - Chapter15Exercise5sc(pi/2, N) ) % Error of sum of product.
abs_err2sumThenM = abs( f(pi/2) - Chapter15Exercise5s(pi/2, N) .* Chapter15Exercise5c(pi/2, N) ) % Error of product of sums.

s(1) = subplot(2,1,1);
plot(x, f(x), 'b', x, Chapter15Exercise5sc(x, N), 'r')
xlabel('x')
ylabel('y')
axis([-3 3 -4 4])
grid on
title( s(1), sprintf('Sum sin(x)cos(x). Abs Error = %f', abs_err1) )
legend('Analytic', 'Approximation', 'location', 'south')

s(2) = subplot(2,1,2);
plot(x, f(x), 'b', x, Chapter15Exercise5s(x, N) .* Chapter15Exercise5c(x, N), 'g')
xlabel('x')
ylabel('y')
axis([-3 3 -4 4])
grid on
title( s(2), sprintf('Sum sin(x) and cos(x) and then multiply. Abs error = %f',  abs_err2sumThenM) )
legend('Analytic', 'Approximation', 'location', 'south')
 
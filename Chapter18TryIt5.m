% Script demonstrating approximation of a Cumulative Integral using built-in functions.
% Author: Chris B. Kirov
% Date: 09.10.2017  
clc
clear
close all

h = 0.01;
x = 0 : h : pi;
f = sin(x);
F_exact = -cos(x);
F_approx = cumtrapz(x, f);

plot(x, F_exact, x, F_approx);
grid on
axis tight
title('Cumulative Integral Approximation: F(x) = \int_0^{x} sin(y) dy')
xlabel('x')
ylabel('f(x)')
legend('Exact with offsset', 'Approximation', 'Location', 'north')
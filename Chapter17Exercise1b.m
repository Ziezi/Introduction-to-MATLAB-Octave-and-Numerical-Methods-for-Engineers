% Script applying [df, X] = myDerCalc (f, a, b, N, option).
% Author: Chris B. Kirov
% Date: 05.10.2017  
clc
clear
close all

x = linspace(0, 2*pi, 100);
exact_derivative = cos(x);

f = @(x) sin(x);
a = 0;
b = 2*pi;
N = 10;

[dyf, Xf] = Chapter17Exercise1(f, a, b, N, 'forward');
[dyb, Xb] = Chapter17Exercise1(f, a, b, N, 'backward');
[dyc, Xc] = Chapter17Exercise1(f, a, b, N, 'central');

plot(x, exact_derivative, Xf, dyf, Xb, dyb,  Xc, dyc)
title('Analytic and Numerical Derivatives of sin(x).')
xlabel('x')
ylabel('y')
legend('analytic', 'forward', 'backward', 'central')
grid on


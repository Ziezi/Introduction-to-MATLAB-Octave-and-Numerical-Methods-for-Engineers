% Script demonstrating Integration Approximation using Simpson's Rule.
% Author: Chris B. Kirov
% Date: 09.10.2017  
clc
clear
close all

format long 

a = 0;
b = pi;
n = 11;
h = (b - a) / (n - 1);
x = linspace(a, b, n);
f = sin(x);

I_simp = (h / 3) * ( f(1) + 2 * sum( f(1 : 2 : n - 2) ) + 4 * sum( f (2 : 2: n - 1) ) + f(end) )
error_s = ( -cos(b) - (-cos(a)) ) - I_simp
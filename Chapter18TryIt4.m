% Script comparing Built-in vs Custom Trapezoidal Rule implementation
% for approximating Integrals of functions.
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

I_trapzb = trapz(f, x)
I_trapz = (h/2) * (f(1) + 2*sum( f(2 : end - 1) ) + f(end))

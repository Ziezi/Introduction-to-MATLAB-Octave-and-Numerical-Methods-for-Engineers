% Script demonstrating approximation of Integrals using built-in functions.
% Author: Chris B. Kirov
% Date: 09.10.2017  
clc
clear
close all

format long

a = 0;
b = pi;
f = @(x) sin(x);

I_quadb = quad(f, a, b)
error_q = ( -cos(b) - (-cos(a)) ) - I_quadb
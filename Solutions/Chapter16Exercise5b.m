% Script applying [R, E] = myNewton (f, df, x0, tol)
% Author: Chris B. Kirov
% Date: 04.10.2017
clc
clear
close all

format long

f = @(x) x^2 - 2;
df = @(x) 2*x;
x0 = 1;
tolerance = 1e-5;

[R, E] = Chapter16Exercise5(f, df, x0, tolerance)

f2 = @(x) sin(x) - cos(x);
df2 = @(x) sin(x) + cos(x);

[R, E] = Chapter16Exercise5(f2, df2, x0, tolerance)


% Script applying [R, E] = myBisection (f, a, b, tol).
% Author: Chris B. Kirov
% Date: 04.10.2017
clc
clear
close all

f1 = @(x) x.^2 - 2;
low = 0;
high = 2;
tolerance =   1e-1;
[R, E] = Chapter16Exercise4(f1, low, high, tolerance)

f2 = @(x) sin(x) - cos(x);
tolerance = 1e-2;
[R, E] = Chapter16Exercise4(f2, low, high, tolerance)


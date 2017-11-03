% Script showing Function Root Finding via Bisection Method.
% Author: Chris B. Kirov
% Date: 29.09.2017  
clc
clear
close all

format long

R = sqrt(2)                                                             % Caclulate the root of 2 using built in function.
f = @(x) x^2 - 2;                                                  % Calcualte the square root of 2 as a root to the folllowing equation.

a = 0;                                                                      % Define an interval that bounds a region with a root.
b = 2;
tolerance = 0.1;                                                     % Define Approximation Error Tolerance.
r1 = Chapter16TryIt3(f, a, b, tolerance)

tolerance = 0.01;
r2 = Chapter16TryIt3(f, a, b, tolerance)

f(r1)                                                                        % Confirm root validity by substitution.
f(r2) 





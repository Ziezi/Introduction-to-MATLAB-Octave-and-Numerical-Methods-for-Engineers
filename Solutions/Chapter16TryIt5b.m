% Script demonstrating [R] = myNewton (f, dx, x0, tol).
% Author: Chris B. Kirov
% Date: 29.09.2017  
clc
clear
close all

format long

f = @(x) x^2 - 2;
df = @(x) 2 * x;
initialGuess = 1.5;
errorTolerance = 1e-6;

R = Chapter16TryIt5(f, df, initialGuess, errorTolerance)

sqrt(2)
 
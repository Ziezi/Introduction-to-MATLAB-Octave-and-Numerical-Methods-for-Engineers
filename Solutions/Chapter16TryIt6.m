% Script showing limitations of Newton-Raphson method.
% In particular derivative of a function that evaluates close to 0.
% Author: Chris B. Kirov
% Date: 02.10.2017  
clc
clear
close all

f = @(x) x.^3 + 3*x.^2 - 2*x - 5;
df = @(x) 3*x.^2 + 6*x - 2;

x0 = 0.29;                                                              % Initial guess.
f(x0)
df(x0)                                                                     % As derivative at x0 = 0.29, df(x0) -> 0 => the error at x1 is very large.
f(x0) / df(x0)

x1 = x0 - f(x0) / df(x0)                                         % Newton's step.




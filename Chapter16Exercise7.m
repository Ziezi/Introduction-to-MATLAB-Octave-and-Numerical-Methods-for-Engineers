% Script finding a value for which the Newton step of a function oscillates indefinitely.
% Author: Chris B. Kirov
% Date: 04.10.2017
clc
clear
close all

f = @(x) x - (x.^2 +1) .* atan(x);
F = @(x) f(x) + x;
 
interval = [0.0001, 2];

val = fzero(F, interval)

% result is x0 = 1.3917
% plot(linspace(1, 2, 100), F(linspace(1, 2, 100)))

f1 = @(x) atan(x);
df1 = @(x) 1 ./ (x.^2 + 1);
x0 = val;                                                                 % value for which Newton's step oscillates between: x0, and -x0.
tol = 1e-3;

Chapter16Exercise5(f1, df1, x0, tol);                % [R, E] = myNewton (f, df, x0, tol)
% unsuppress and observe x0. (till round off error accumulates resulting in overflow.)
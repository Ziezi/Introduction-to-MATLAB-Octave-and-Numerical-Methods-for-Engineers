% Script showing limitations of Newton-Raphson method.
% In particular, the instability of convergence leading to unintended root, away from the initial guess.
% Author: Chris B. Kirov
% Date: 02.10.2017  
clc
clear
close all

f = @(x) x.^3 + 100*x.^2 -  x + 100;                % The polynomial has roots at x1 = 1 and x2 = 100
df = @(x) 3*x.^2 + 200*x - 1;

x0 = 0;                                                                    % Initial guess.

f(x0)
df(x0)   
f(x0) / df(x0)                                                         % Newton's step will give the second root x2, which is much farther than the initial guess.

x1 = x0 - f(x0) / df(x0)                                         % Newton's step.
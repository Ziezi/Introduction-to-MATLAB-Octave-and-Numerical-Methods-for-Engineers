% Script demonstrating integral approximation using Trapezoid Rule.
% Author: Chris B. Kirov
% Date: 09.10.2017  
clc
clear
close all

format long
a = 0;                                                                      % specify interval of integration.
b = pi;
n = 11;                                                                    % specify grid size.
h = (b - a) / (n - 1);                                                % calculate grid spacing.
x = linspace(a, b, n);                                             % create 1D grid.
f = sin(x);                                                               % discretize: evaluate function at grid points.

% calculate the approximation of integral sin(x) from 0 to pi.
I_trap = (h / 2) * ( f(1) + ( 2 * sum( f(2 : end - 1) ) ) + f(end) )

I_exact =  -cos(b) - ( -cos(a) )                             % exact integral.

approx_error = I_exact - I_trap                           % approximation error.
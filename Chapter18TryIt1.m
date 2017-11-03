% Script demonstrating Numerical Integration Methods: Riemann, Midpoint Method.
% Approximate the integral of sin(x) in [a, b].
% Author: Chris B. Kirov
% Date: 09.10.2017  
clc
clear
close all

a = 0;                                                                      % define integration interval.
b = pi;

n = 11;                                                                    % define size of 1D grid.
h = (b - a) / (n - 1);                                                % calculate grid spacing.
x = linspace(a, b, n);                                             % generate 1D grid.

f = sin(x);                                                               % evaluate integrand function on 1D grid.

I_riemannL = h * sum( f(1 : n - 1) )                   % Approximate integral via left Riemann Integral.
error_rL = ( -cos(b) - (-cos(a)) ) - I_riemannL

I_riemannR = h * sum( f(2 : n) )                         % Approximate integral via right Riemann Integral.
error_rR = ( -cos(b) - (-cos(a)) ) - I_riemannR

yi = sin( ( x(1 : n - 1) + x(2 : n) ) / 2 );               % Approximate integral via Midpoint Method.
I_mid = h * sum( yi )
error_m = ( -cos(b) - (-cos(a)) ) - I_mid

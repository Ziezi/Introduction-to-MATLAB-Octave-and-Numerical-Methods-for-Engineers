% Script demonstrating built-in ODE solvers and their approximation error.
% Author: Chris B. Kirov
% Date: 31.10.2017
clc; clear; close all;

% Consider the ODE \frac{dS(t)}{dt} = -S, with initial value S(0) = 1. 
F = @(t, S) -S;

% Approximation in the interval [0, 1].
[T, S] = ode45(F, [0, 1], 1);

% Exact solution S(t) = e^(t).
exact_solution = exp(-T);

plot(T, S, 'LineWidth', 2)
xlabel('t')
ylabel('S(t)')
title('Approximation to Solution of Simple ODE.')
grid on
axis tight

figure
approx_error = S - exact_solution;
plot(T, approx_error, 'LineWidth', 2)
grid on
xlabel('t')
ylabel('S(t) - exp(-t)')
title('Approximation Error from ode45.')
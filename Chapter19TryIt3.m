% Script demonstrating built-in ODE solvers and their approximation error.
% Author: Chris B. Kirov
% Date: 25.10.2017
clc; clear; close all;

F = @(t, S) cos(t);                                               % Integrand: cos(t)
[T, S] = ode45(F, [0, pi], 0);                               % Interval of integration: [0, pi]; Initial condition: t = 0.
plot(T, S, 'LineWidth', 2);
grid on 
axis tight
xlabel('t')
ylabel('S(t)')
title('Approximation to Solution of Simple ODE.')
figure

exact_solution = sin(T);                                      % \int_0^pi{cos(t)} dt = sin(pi) - sin(0).
approx_error = S - exact_solution;                    % Approximation Error at every point of integration.
plot(T, approx_error, 'LineWidth', 2)
grid on 
axis tight
xlabel('t')
ylabel('S(t) - sin(t)')
title('Approximation Error from ode45.')
 

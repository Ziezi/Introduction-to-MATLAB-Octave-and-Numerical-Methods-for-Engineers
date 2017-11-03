% Script demonstrating built-in ODE solver: ode45.
% Author: Chris B. Kirov
% Date: 31.10.2017
clc; clear; close all;

% Consider the ODE described by: \frac{dS(t)}{dt}  = \begin{matrix} 0 & t^2 \\ -t & 0 \end{matrix} S(t).
F = @(t, S) [0, t^2; -t, 0] * S;

% Approximate over the interval [0,1], with initial condition: S_0 = \begin{matrix} 1 \\ 1 \end{matrix}.
[T, S] = ode45(F, [0, 10], [1; 1]);

% Plot the phase space: (x(t), y(t)).
plot(S(:, 1), S(:, 2))
axis tight
axis equal
grid on
xlabel('x')
ylabel('y')
title('Phase space of ODE.')

figure

plot(T, S)
axis tight
axis equal
grid on
xlabel('t')
ylabel('S(t)')
title('Solution to ODE.')


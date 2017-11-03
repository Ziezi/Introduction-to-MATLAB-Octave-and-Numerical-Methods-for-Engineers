% Script comparing approximation and analytic solution to the Logistis Equation.
% Author: Chris B. Kirov
% Date: 01.11.2017
clc; clear; close all;

dP = Chapter19Exercise1(0, 10, 1.1, 15)          % test myLogisticEquation(t, P, r, K)

% Set integration paremeters.
t0 = 0;                                                                    % time integration interval.
tf = 20; 
P0 = 10;                                                                % initial population.
r = 1.1;                                                                   % growth rate.
K = 20;                                                                  % max population size.
t = 0: 0.01: 20;                                                     % 1D grid with spacing 0.01.
[T, P]  = ode45(@Chapter19Exercise1, [t0, tf], P0, r, K);
exact_solution = ( K * P0 * exp(r*t) ) ./ ( K + P0 * (exp(r*t) - 1) );

plot(T, P, t, exact_solution)
title('Numerical and Analytic Solution of Logistic Equation')
xlabel('Time')
ylabel('Population')
legend('Numerical Solution', 'Exact Solution')
grid on
axis tight
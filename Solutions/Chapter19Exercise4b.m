% Script applying [T, S] = myForwardEuler (dS, tSpan, S0)
% and comparing it to ode45 and the exact solution.
% Author: Chris B. Kirov
% Date: 02.11.2017
clc; clear; close all;

% Define F(t, S(t)) and the initial conditions for the ODE.
dS = @(t, S) t * exp(-S);
tSpan = linspace(0, 1, 10);
S0 = 1;

% Integrate using myForwardEuler.
[Teuler, Seuler] = Chapter19Exercise4(dS, tSpan, S0);
Teuler'
Seuler'
 
 % Integrate using built-in function.
[Tode, Sode] = ode45(dS, tSpan, S0);

% Calculate the exact solution.
t = linspace(0, 1, 1000);
exact_solution = @(t) log(exp(S0) + ( t.^2 - t(1)^2 ) / 2); 

% Draw and compare the 2 methods to the exact solution.
plot(Teuler, Seuler, 'g', Tode, Sode, 'b', t, exact_solution(t), 'r')
title('Numerical Solutions for an ODE.')
xlabel('t')
ylabel('S(t)')
legend('Forward Euler', 'ode45', 'Exact Solution')



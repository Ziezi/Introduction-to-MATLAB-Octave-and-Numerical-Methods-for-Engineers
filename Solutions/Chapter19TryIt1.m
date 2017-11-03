% Script demonstrating Euler Approximation for Exponential Function.
% Author: Chris B. Kirov
% Date: 24.10.2017   
clc; close; clear all;

% Define parameters.                                      
F = @(t, S) exp(-t);                                              % define differential equation.
h = 0.1;                                                                   % grid spacing. For spacing h/10, the approximation approaches the exact solution.
t = 0 : h : 1;                                                           % 1D grid within [0, 1].
f0 = -1;                                                                   % initial condition.

% Apply Explicit Euler Formula.
f = f0;                                                                     % initialise solution.

for j = 1 : length(t) - 1
  f(j+1) = f(j) + h*F( t(j), F(j) );                         % Euler step.  
end  

% Plot approximate and exact solution.
plot(t, f, 'b--', t, -exp(-t), 'g')
title('Approximate and Exact Solution for simple ODE.')
xlabel('t')
ylabel('f(t)')
grid on
axis tight
legend('Approximate', 'Exact')


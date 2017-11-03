% Script demonstrating Numerical Stability of ODEs Integration schemes.
% Author: Chris B. Kirov
% Date: 25.10.2017
clc; clear; close all;

% Define parameters.
h = 0.1;                                                                  % grid spacing.
t = 0 : h : 5;                                                           % 1D grid within [0,5].
w = 4;                                                                     % w = g / l, where T = 2 * pi * sqrt(g/L) and  f = 1/T; g = 9.81 [m/s^2]. l = 2.45 [m].
S0 = [1 ; 0];                                                          % initial conditions: theta = 1 [rad] (57.29 deg), d(theta)/dt = 0 [rad/s]. 

M_E = [1, h; -w^2 * h, 1];                                  % Explicit Euler Method.
M_I = inv( [1, -h; w^2 * h, 1] );                         % Implicit Euler Method.
M_T = inv( [1, -h / 2; w^2 * h / 2, 1] ) * [1, h / 2; -w^2 * h / 2, 1]; % Trapezoidal Method. 

% Integrate
S_E = S0';                                                             % Initialise.
S_I = S0';
S_T = S0'; 

for j = 1 : length(t) - 1
  
  S_E( j+1, : ) = [ M_E * S_E( j, : )' ]';            % column vector = Matrix * row vector.
  S_I( j+1, : ) = [ M_I * S_I( j, : )' ]';
  S_T( j+1, : ) = [ M_T * S_T( j, : )' ]';
  
end  

% Plot solutions representing Pendulum Position.
plot(t, S_E(:, 1), 'b-.', t, S_I(:, 1), 'g*', t, S_T(:, 1), 'r--.', t, cos(w*t), 'k' )
axis([0 5 -3 3])
grid on
title('Integration Schemes solving ODE describing Pendulum motion.')
xlabel('t')
ylabel('\Theta (t)')
legend('Explicit', 'Implicit', 'Trapezoidal', 'Exact' )
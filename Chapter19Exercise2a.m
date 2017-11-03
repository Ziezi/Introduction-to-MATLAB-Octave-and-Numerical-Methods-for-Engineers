% Function: [T, X, Y, Z] = myLorenzSolver(tSpan, s0, sigma, rho, beta)

function [T, X, Y, Z] = Chapter19Exercise2a (tSpan, s0, sigma, rho, beta)
% Objective: Solve the Lorenz Equation using ode45.
% Input:
%   tSpan - 1x2 array of doubles - time interval [t0, tf].
%   s0 - 3x1 array of doubles - 3D coordiantes of initial position.
%   sigma, rho, beta - 1x1 positive doubles - parameters of the Lorenz System.
% Output:
%   T - 1xN array of doubles - time - output parameter of ode45.
%   X, Y, Z - 1xN array of doubles - 3D coordiantes at time T_i - output parameter of ode45.
% Author: Chris B. Kirov
% Date: 01.11.2017

  [T, S] = ode45(@Chapter19Exercise2, tSpan, s0, sigma, rho, beta);
  
  X = S(:, 1); Y = S(:, 2); Z = S(:, 3);
  
end  
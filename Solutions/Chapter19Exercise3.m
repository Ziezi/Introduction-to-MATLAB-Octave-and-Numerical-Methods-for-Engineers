% Function: myMSD (t, S0, m , c, k)

function [dS] = Chapter19Exercise3 (t, S0, m , c , k)
% Objective: Represent Mass-Spring-Damper system
% by reducing the order of the ODE describing it.
% Input: 
%   t - 1x1 scalar - time.
%   S0 - 2x1 column vector - initial displacement and velocity.
%   m - 1x1 scalar - mass of object.
%   c - 1x1 scalar - damping coefficient.
%   k - 1x1 scalar - spring stiffness coefficient.
% Output:
%   dS - 2x1 column vector - displacement and velocity after time t.
% Author: Chris B. Kirov
% Date: 01.11.2017

  dS = [0, 1; -k/m, -c/m] * S0;  
  
end
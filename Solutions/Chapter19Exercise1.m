% Function: myLogisticEq [dP] = (t, P, r, K)

function [dP] = Chapter19Exercise1 (t, P, r, K)
% Objective: Represent Logistic Equation.
% Input:
%   t - 1x1 double - dummy parameter.
%   P - 1x1 double - current population.
%   r - 1x1 double - growth rate.
%   K - 1x1 double - carrying capacity. (maximum population size)
% Output:
%   dP - change in population.
% Author: Chris B. Kirov
% Date: 01.11.2017

  dP =  r * P * ( 1 - P/K);
  
end  
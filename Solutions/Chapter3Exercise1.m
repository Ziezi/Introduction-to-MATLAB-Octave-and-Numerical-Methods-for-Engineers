% Function [y] = mySinh(x)

function [y] = Chapter3Exercise1(x)
% Objective: Calculate sinh(x).
% Input:  
%   x - 1x1 double - angle in radians.   
% Output:
%   y - 1x1 double hyperbolic sine of x.
% Author: Chris B. Kirov
% Date: 26.08.2017
    
  y = (exp(x) - exp(-x)) / 2.0;
    
end  
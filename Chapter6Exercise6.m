% Function [G] = myGoldenRatio(n)

function [G] = Chapter6Exercise6 (n)
% Objective: Calculate the Golden Ratio from 
% the continued fraction: G(n) = 1 + 1 / G(n -1), with G(1) = 1; 
% Input:
%   n - 1x1 integer - n-th term in the continuous fraction.
% Output:
%   G - 1x1 double - an approximation of the golden ratio.
% Author: Chris B. Kirov
% Date: 01.09.2017    
    
  if n == 1
    G = 1;
  else 
    G = 1 + (1 / Chapter6Exercise6(n - 1) );
  end
  
end  
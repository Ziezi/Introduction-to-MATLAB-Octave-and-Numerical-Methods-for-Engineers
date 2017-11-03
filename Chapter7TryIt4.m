% Function [out] = myDivideByTwo(n)

function [out] = Chapter7TryIt4(n)
% Objective: Find number of possible division by 2
% or n epxressed as 2^out and estimate complexity.
% Input:
%   n - 1x1 positive integer.
% Ouput:
%   out - 1x1 integer - such that n = 2^out.
% Estimated Compexity:  O(n) - linear.
% Author: Chris B. Kirov
% Date: 07.09.2017        

  out = 0;  
  
  while n > 1
    
    n = n / 2;
    out = out + 1;
    
  end  
  
end
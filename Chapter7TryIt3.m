% Function [F] = myFibRec(n)

function [F] = Chapter7TryIt3(n)
% Objective: Estimate the compexity of n-th Fibonacci using recursive implementation.  
% Input:
%   n - 1x1 positive integer.
% Ouput:
%   F -  n-th Fibonacci number.
% Estimated Compexity: O(2^n) - exponential.
% Author: Chris B. Kirov
% Date: 07.09.2017        

  if n <= 2
    F = 1; 
  else
    F = Chapter7TryIt3(n - 1) + Chapter7TryIt3(n - 2);
  end 
  
end  
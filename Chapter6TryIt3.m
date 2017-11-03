% Function [F] = myIterFib(n)

function [F] = Chapter6TryIt3(n)
% Objective: Calculate the n-th Fibonacci number iteratively.  
% Input:
%   n - 1x1 positive integer - n-th Fibonacci.
% Output:
%   F -  n-th Fibonacci.
% Author: Chris B. Kirov
% Date: 31.08.2017    
  
  F = ones(1, n);
  
  for i = 3 : n
    F(i) = F(i - 1) + F(i - 2);  
  end  
    
  F = F(n);
end  
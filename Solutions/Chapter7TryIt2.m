% Function [F] = myFibIter(n)

function [F] = Chapter7TryIt2(n)
% Objective: calculate n-th Fibonacci using iterative implementation (with memoization?).  
% Input:
%   n - 1x1 positive integer.
% Ouput:
%   F -  n-th Fibonacci number.
% Estimated Compexity:  O(n) - linear.
% Author: Chris B. Kirov
% Date: 07.09.2017      

  F = [1, 1];
  
  for i = 3 : n
    F(i) = F(i - 1) + F(i - 2);  
  end  

  F = F(end);
  
end 


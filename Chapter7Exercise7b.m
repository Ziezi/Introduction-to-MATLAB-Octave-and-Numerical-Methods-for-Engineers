% Function [F] = myFibIter2(n)

function [F] = Chapter7Exercise7b (n)
% Objective: Calculate n-th Fibonacci number iteratively expanding an array on each iteration.
% Input:
%   n - 1x1 a positive integer n.
% Ouput:
%   F - n-th Fibonacci number.  
% Author: Chris B. Kirov
% Date: 07.09.2017      

  F = [1, 1];
  
  for i = 3 : n
    F = [F, F(end) + F(end - 1)];  
  end  
  
  F = F(end);
  
end  
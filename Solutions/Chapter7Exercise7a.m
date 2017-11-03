% Function [F] = myFibIter1(n)

function [F] = Chapter7Exercise7a (n)
% Objective: Calculate n-th Fibonacci number iteratively using predefined size array.  
% Input:
%   n - 1x1 a positive integer n.
% Ouput:
%   F - n-th Fibonacci number.
% Author: Chris B. Kirov
% Date: 07.09.2017        

  F = zeros(1, n);
  F(1, [1, 2]) = 1;
  
  for i = 3 : n
    F(i) = F(i - 1) + F(i - 2);  
  end  
  
  F = F(end);
  
end  
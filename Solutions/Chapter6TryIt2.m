% Function [out] = myRecFib(n)

function [out] = Chapter6TryIt2(n)
% Objective: Calculate the n-th Fibonacci number recursively.
% Input:
%   n - 1x1 positive integer.
% Output:
%   out -  n-th Fibonacci number.
% Author: Chris B. Kirov
% Date: 30.08.2017  
  
  if (n == 1)
    out = 1;  
  elseif (n == 2)
    out = 1;
  else
    out = Chapter6TryIt2(n - 1) + Chapter6TryIt2(n - 2);
  end    
    
end  
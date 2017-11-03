% Funciton [out] = myRecFactorial(n)

function [out] = Chapter6TryIt1(n)
% Objective: Calculate n factorial, n!, recursively.  
% Input:
%   n - 1x1 positive integer - n-th factorial.
% Output:
%   out - n! calculated recursively.
% Author: Chris B. Kirov
% Date: 30.08.2017      
    
  if (n == 1)                                                            % base case.
    out = 1; 
  else                                                                       % recursive step.
    out = n * Chapter6TryIt1(n-1);    
  end 
    
end
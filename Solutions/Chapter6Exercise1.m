% Function [S] = mySum(A)

function [S] = Chapter6Exercise1(A)
% Objective: Sum of array elements.   
% Input:
%   A - 1xN array of doubles.
% Output:
%   S - 1x1 double - sum of array elements.
% Author: Chris B. Kirov
% Date: 31.08.2017        

  S = 0;  
    
  for i = 1 : length(A)
    S = S + A(i);  
  end  
    
end
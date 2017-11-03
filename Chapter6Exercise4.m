% Function [N] = myNChooseK (n, k)

function [c] = Chapter6Exercise4 (n, k) 
% Objective: Calculate combinations of k elements out of set containing n.
% from the recurrence relation: C(n, k) = C(n - 1, k - 1) + C(n - 1, k), with C(j, j) = 1 and C(n, 0) = 1.
% Input:
%   n - 1x1 integer - number of total elements.
%   k - 1x1 integer - number of chosen elements. 
% Output:
%   c - 1x1 integer - number of combinations of k elements out of n elements.  
% Author: Chris B. Kirov
% Date: 31.08.2017
    
  if (k == 0) || (n == k)
    c = 1;
  else
    c = Chapter6Exercise4(n - 1, k - 1) + Chapter6Exercise4(n - 1, k);
  end    
  
end 
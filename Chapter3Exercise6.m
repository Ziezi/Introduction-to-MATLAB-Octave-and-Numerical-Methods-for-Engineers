% Function [N] = myOdds(A)

function [N] = Chapter3Exercise6(A)
% Objective: Find numbe of odd values in an array.
% Input:          
%   A -1xN array of integers.
% Output:              
%   N - 1x1 integer - number of odd values in A.  
% Author: Chris B. Kirov
% Date: 26.08.2017          
    
  n = A( (mod(A, 2) ~= 0) );                                % construct an array of odds
    
  N = length(n);                                                     % count the number of odds in A
end  
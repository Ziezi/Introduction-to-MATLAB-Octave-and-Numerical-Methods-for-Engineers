% Function [M] = myCheckerBoard(n)

function [M] = Chapter3Exercise2(n)
% Objective: Create a matrix filled with 1's 
% in checker board pattern.
% Input:  
%   n - 1x1 integer - size of square matrix.
% Output:
%   M -  NxN matrix of alternating 1's and 0's, starting with 1. 
% Author: Chris B. Kirov
% Date: 26.08.2017
    
  M = toeplitz(mod(1 : n, 2)); 
    
end


% Function [out] = myTwos(m, n)

function [out] = Chapter3Exercise7(m,n)
% Objective: Create a matrix filled with 2's.
% Input:            
%   m, n - 1x1 doubles - dimensions of a matrix.
% Output:      
%   out - MxN matrix containing only values of 2.
% Author: Chris B. Kirov
% Date: 26.08.2017        
     
  scale_factor = 2;
  out = ones(m,n) * scale_factor;  
end  
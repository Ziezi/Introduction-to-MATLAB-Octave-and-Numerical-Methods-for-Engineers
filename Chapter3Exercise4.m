% Function [M1, M2] = mySplitMatrix(M)

function [M1, M2] = Chapter3Exercise4(M)
% Objective: Split a matrix into two column-wise.
% Input:      
%   M - MxN matrix. 
% Output:      
%   M1, M2 - MxK matrices, where K = N/2.
% Author: Chris B. Kirov
% Date: 26.08.2017    
    
  k = 0;
  s = size(M, 2);
    
  if (mod(s, 2) == 0)
      k = s / 2;          
  else
      k = floor(s / 2) + 1; % integer division
  end  
    
  M1 = M(:, 1 : k);
  M2 = M(:, k + 1 : end);
end  
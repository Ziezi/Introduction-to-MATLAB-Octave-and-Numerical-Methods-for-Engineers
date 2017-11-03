% Function [M] = myMax(A)

function [M] = Chapter5Exercise2(A)
% Objective: write custom function to find max element in array of doubles. 
% Input:
%   A - 1xN array of doubles.
% Output:
%   M - max array element. 
% Author: Chris B. Kirov
% Date: 29.08.2017     

  assert(numel(A) > 0, 'Chapter5Exercise2::Invalid Argument::Empty Array!')
  
  currentMax = realmin('double');
    
  for i = 1 : numel(A);
    
    if  A(i) > currentMax 
      
      currentMax = A(i);  
      
    end  
    
  end
    
  M = currentMax; 
  
end  
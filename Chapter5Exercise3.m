% Function [M] = myNMax(A, N)

function [M] = Chapter5Exercise3(A, N)
% Objective: Find the M largest array elements.   
% Input:
%   A - 1xN array of doubles.
%   N - 1x1 integer.
% Output:
%   M - 1xM array of the M largest elements in A.
% Author: Chris B. Kirov
% Date: 29.08.2017     
 
    for i = 1 : N 
      
        [val, index] = max(A);
            
        M(i) = val;
       
        A(index) = [];  
        
    end
    
end  
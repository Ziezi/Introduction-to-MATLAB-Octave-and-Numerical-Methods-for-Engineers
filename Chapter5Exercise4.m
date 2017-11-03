% Function [M] = myTrigOddEven(A)

function [M] = Chapter5Exercise4(A)
% Objective: Create a matrix, M, with values equal to sin( A(i,j) ), if value at A(i,j) - even or cos( A(i,j) ), if odd.  
% Input:
%   A - MxN array of positive integers.
% Output:
%   M -  MxN array - with values equal to sin(A(i,j)) evaluate on even values of A(i,j),  and cos(A(i,j)) for odd.  
% Author: Chris B. Kirov
% Date: 29.08.2017         
    
    for i = 1 : size(A, 1);
        for j = 1 : size(A, 2);
          
            if (mod( A(i, j), 2 ) == 0)
                M(i, j) = sin( A(i, j) );
            else
                M(i, j) = cos( A(i, j) );
            end 
            
        end
    end  
    
end  

% To test: Generate a 5x5 01010 matrix 
% A = Chapter3Exercise2(5)  
% B = Chapter5Exercise4(A)
% Function [Q] = myTrigOddEven(M)

function [Q] = Chapter5Exercise12(M)
% Objective: Create a matrix, Q, where if M(i,j) - even, Q(i,j) = sin( pi / M(i, j) ); cos( pi / M(i, j) ) otherwise.     
% Input:
%   M - KxJ array of positive integers.
% Output:
%   Q -  KxJ matrix, where even element is replaced
% with sin(pi / M(i, j)) in Q and odd with cos(pi / M(i, j)).
% Author: Chris B. Kirov
% Date: 30.08.2017      
 
    for i = 1 : size(M, 1)
        for j = 1 : size(M, 2)
          
            if mod(M(i,j), 2) == 0
                Q(i, j) = cos(pi / M(i, j));  
            else      
                Q(i, j) = sin(pi / M(i, j));
            end
            
        end  
    end  
    
end  
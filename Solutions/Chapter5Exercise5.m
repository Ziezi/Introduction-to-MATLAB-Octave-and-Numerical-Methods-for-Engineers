% Function [M] = myMatMult(P,Q)

function [M] = Chapter5Exercise5(P, Q)
% Objective: Implement matrix multiplication.   
% Input:
%   P, Q - NxK and KxM double matrices. 
% Output:
%   M -  NxM double matrix - product of P and Q. 
% Author: Chris B. Kirov
% Date: 29.08.2017     
    
    for i = 1 : size(P, 2)
        for j = 1 : size(Q, 1)
          
            ithRow = P(i, :);
            jthCol = Q(:, j);
            
            M(i, j) = dotProduct(ithRow, jthCol);  
            
        end
    end
    
end  

function [s] = dotProduct(row, column)
% Input:
%   row - NxK vector of doubles.
%   column - KxM vectors of doubles. 
% Output:
%   s - 1x1 double - dot product of the vectors.
    s = 0; 
    
    for i = 1 : length(row)
        s = s + row(i) * column(i);    
    end
    
end  
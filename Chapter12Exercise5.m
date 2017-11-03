% Function [D] = myRecDec(M)

function [d] = Chapter12Exercise5 (M)
% Objective: Calculate determinant of a matrix
% using recursive Cramer's Rule of expanding into minors.
% Input:
%   M -NxN matrix of doubles.
% Output:
%   d - determinant of M.
% Complexity: O(n!).
% Author: Chris B. Kirov
% Date: 20.09.2017  

  if size(M) == 2                                                   % base case
     d = det2x2Minor(M);                                     % calculate the trivial 2x2 case.
   else
     d = 0;                                                                 % initialise determinant (sum of minors) to 0.
      
     for i = 1 : size(M, 2)                                       % iteration (sum) over recursive calls (minors).
       minor = M([2 : end], [1 : (i -1), (i + 1) : end] );  % exclude 1 row and i-th column.  

       d = d +  (-1)^(i - 1) * M(1, i) * Chapter12Exercise5(minor); % sum over all minors. 
     end  
     
   end 
   
end

function [d] = det2x2Minor(M)
% Input:
%   M - 2x2 matrix.
% Output:
%   d - determinant of M.

  d = M(1, 1) * M(2,2) - M(1,2) * M (2,1);  
  
end  
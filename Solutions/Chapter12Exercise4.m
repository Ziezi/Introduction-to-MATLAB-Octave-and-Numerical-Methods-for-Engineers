% Function [B] = myMakeLinInd (A)

function [B] = Chapter12Exercise4 (A)
% Objective: Find linear independent columns. (basis) of a matrix.  
% Input:
%   A - MxN matrix.
% Output:
%   B - KxN a matrix consisted of the K linearly independent columns of A.
% Author: Chris B. Kirov
% Date: 19.09.2017  
  
  % get row-reduced echelon form: R, then the
  % pivots are on the columns that form the basis of A.
  [R, indx] = rref(A);
  
  %  (column space) dim(\mathbb{C}(A)) = dim(\mathbb{R}(A)) = rank(A)  
  B = A(:, indx); 
end  
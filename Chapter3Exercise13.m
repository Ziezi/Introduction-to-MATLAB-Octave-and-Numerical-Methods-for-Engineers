%Function [indices] = myWithinTolerance(A, a, tol)

function [I] = Chapter3Exercise13(A, a, eps)
% Objective: Find indexes of elements within array that satisfy: |A[i] - a| < eps.   
% Input:    
%   A - 1xN array of doubles
%   a - 1x1 double - test value
%   eps - 1x1 double - threshold determining ordering of doubles.
% Output:    
%   I - 1xM array of indices of A's values satisfying: |A[i] - a| < eps.
% Author: Chris B. Kirov
% Date: 26.08.2017      

  I = find(abs(A - a) < eps); 
end  

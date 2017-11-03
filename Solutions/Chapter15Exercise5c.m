% Function [approx] = myCos (X, n)

function [T] = Chapter15Exercise5c (X, n)
% Objective: Approximation of  cos(x) by Taylor Series Expansion.  
% Input:
%   X - vector of doubles.
%   n - a positive integer.
% Output:
%   T - vector doubles holding the values of: cos(x).
%   approximated by the first: N terms of the Taylor expansion around: x.
% Author: Chris B. Kirov
% Date: 29.09.2017  
 
  T = zeros(1, numel(X));
  
  for k = 0 : n
    
    T = T +  ( (-1)^k * X.^(2*k) ) / ( factorial(2*k) );
    
  end  
     
end
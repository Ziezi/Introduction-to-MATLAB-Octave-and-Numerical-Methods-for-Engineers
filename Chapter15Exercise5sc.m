% Function [approx] = mySinCos (X, n)

function [T] = Chapter15Exercise5sc (X, n)
% Objective: Approximation of  sin(x) * cos(x) by Taylor Series Expansion.  
% Input:
%   X - vector of doubles.
%   n - a positive integer.
% Output:
%   T - vector doubles holding the values of: sin(x) * cos(x).
%   approximated by the first: N terms of the Taylor expansion around: x.
% Author: Chris B. Kirov
% Date: 29.09.2017  
 
  T = zeros(1, numel(X));
  
  for k = 0 : n
    
    T = T +  (  (-1)^k * (2^(2*k) ) * X.^(2*k + 1) ) / ( factorial(2*k + 1) );
    
  end  
     
end
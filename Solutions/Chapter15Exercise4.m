% Function [approx] = myExp (X, n)

function [T] = Chapter15Exercise4 (X, n)
% Objective: Function e^{x} approximation through Taylor Series Expansion.    
% Input:
%   X - vector of doubles.
%   n - a positive integer.
% Output:
%   T - vector doubles holding the values of: e^{x}.
%   approximated by the first: N terms of the Taylor expansion around: x.
% Author: Chris B. Kirov
% Date: 29.09.2017  
 
  T = zeros(1, numel(X));
  
  for k = 0 : n
    
    T = T +  ( X.^k ) / ( factorial(k) );
    
  end  
     
end
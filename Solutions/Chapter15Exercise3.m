% Function [approx] = myDoubleExp (X, n)

function [T] = Chapter15Exercise3 (X, n)
% Objective:  Function e^{x^2} approximation through Taylor Series Expansion
% Input:
%   X - vector of doubles.
%   n - a positive integer.
% Output:
%   T - vector doubles holding the values of: e^{x^2} 
%   approximated by the first n terms of the Taylor expansion around: x.
% Author: Chris B. Kirov
% Date: 29.09.2017  
 
  T = zeros(1, numel(X));
  
  for k = 0 : n
    
    T = T +  ( X.^(2 * k) ) / ( factorial(k) );
    
  end  
     
end
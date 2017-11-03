% Function [D] = myPolyDerMat (p)

function [D] = Chapter12Exercise7 (p)
% Objective: Calculate derivative of a polynomial.
% (differentiating / integrating of polynomials is a linear transformation.)
% Input:
%   p - 1xN array of doubles - coefficients of a polynomial.
% Output:
%   D -  (N-1)x(N-1) matrix of doubles - Dp = dp, where dp - vector of coefficients of derivative of the polynomial.
% Complexity: O(n).
% Author: Chris B. Kirov
% Date: 20.09.2017  
  
  len = numel(p) - 1;                                             % constant term is discarded.
  D = zeros(1, len);
 % diagonal matrix with the powers of the terms of the polynomial on the main diagonal (zero for the constant term).
  for i = 1 : len                                                       % multiply each coefficient by it's index (power of term) .
     D(i) =  p(i) * (len - i + 1) ;
  end 
   
   D = D';                                                               % transpose to vector column.
end  
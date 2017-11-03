% Function [Y] = myLagrange(x, y, X)

function [Y] = Chapter14Exercise9 (x, y, X)
% Objective: Lagrange Polynomial Interpolation. 
% Input:
%   x, y - 1xN same size ordered data coordinates to construct Lagrange Polynomial.
%   X - 1xM ordered data coordinates for interpolation. 
% Output:
%   Y - interpolated points, pairs of X using a Lagrange Polynomial.
% Author: Chris B. Kirov
% Date: 27.09.2017  

  Y = zeros(1, numel(X));

  for i = 1 : numel(y)
    
    Y = Y + y(i) .* LagrangeBasisPolynomials(x, X)(i, :);
    
  end    
   
end  

function [L] = LagrangeBasisPolynomials (x, X)
% Input:
%   x - data points to construct Lagrange Basis Polynomials.
%   X - points to be interpolated.
% Output:
%   L - NxM matrix containing Lagrange Basis Polynomials evaluated at each point in X.
% Author: Chris B. Kirov
% Date: 27.09.2017  

  L = ones(numel(x), numel(X));
  
  for i = 1 : numel(x)
    
    for j = 1 : numel(x)
    
      if j == i
        continue  
      else
        L(i, :) = L(i, :) .* ( X - x(j) )  /  ( x(i) - x(j) );
      end  
   
    end    
  
  end
  
end  
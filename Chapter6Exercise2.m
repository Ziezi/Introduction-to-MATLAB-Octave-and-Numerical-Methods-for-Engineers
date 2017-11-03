% Function [y] = myChebysgevPoly1(n, x)

function [Y] = Chapter6Exercise2 (n, X)
% Objective: Obtain T_n(x) (n-th Chebyshev polynomial of 1st kind) from the recurrence relation: T_n(x) = 2*x*T_n-1(x) + T_n-2(x), with: T_0 = 1, T_1 = x.   
% Input:
%   n - 1x1 integer - order of Chebyshev polynomial of 1st kind.
%   X - 1xN array of doubles - range of points.
% Output:
%   Y - 1xN array of doubles - values of the n-th Chebyshev polynomial of 1st kind, evaluated at each X.
% Author: Chris B. Kirov
% Date: 31.08.2017
 
  if n == 0
    Y = ones( 1, numel(X) );  
  elseif n == 1  
    Y = X;   
  else
    Y = 2 .* X .* Chapter6Exercise2(n - 1, X) - Chapter6Exercise2(n - 2, X);
  end
  
end  
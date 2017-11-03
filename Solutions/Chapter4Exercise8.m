% Function [nRoots, r] = myNRoots(a, b, c)

function [nRoots, r] = Chapter4Exercise8(a, b, c)
% Objective: Find the roots of a quadratic equation over \mathcal{C}.  
% Input:
%   a,b,c - 1x1 doubles: coefficients of quadratic equation.
% Output:
%   nRoots - number of roots; sign indicates type: + real, - complex.
%   r - 1xN - root(s) value, N = 1 or 2.
% Author: Chris B. Kirov
% Date: 29.08.2017  
  
  discriminant = b^2 - 4 * a * c;
  
  if discriminant > 0                                              % two real roots.
    
    nRoots = 2;
    r(1) = (-b + sqrt(discriminant)) / (2.0 * a);
    r(2) = (-b - sqrt(discriminant)) / (2.0 * a);
    
  elseif discriminant == 0                                    % one real root.
    
    nRoots = 1;
    r(1) = -b / (2.0 * a);
    
  elseif discriminant < 0                                       % pair of complex conjugated roots.
    
    nRoots = -2;
    r(1) = (-b + sqrt(discriminant)) / (2.0 * a);
    r(2) = (-b - sqrt(discriminant)) / (2.0 * a);
    
  end
    
end  
% Function [R] = myBisection (f, a, b, tol)

function [R] = Chapter16TryIt3 (f, a, b, tol)
% Objective: Find root of f in [a,b] with accuracy
% up to: tol using the Bysection Method.  
% Input:
%   f - function handler.
%   a, b - interval in which f changes sign.
%   tol - Approximation Error Tolerance under which a solution is valid.
% Output:
%   R - root of f.
% Author: Chris B. Kirov
% Date: 29.09.2017  

  if sign(f(a)) == sign(f(b))
    error( sprintf('The scalars %f and %f does not bound a root.', a, b) )
  end  
  
  m = (a + b) / 2;                                                    % Get inverval midpoint.

  if abs(f(m)) < tol                                                 % Check success criterion. (Base case)
    R = m;                                                                % m is an root approximation of f, within < tol.
  elseif sign(f(m)) == sign(f(a))
    R= Chapter16TryIt3 (f, m, b, tol);                  % Recursive call with upper half of curr interval.     
  elseif sign(f(m)) == sign(f(b)) 
    R = Chapter16TryIt3 (f, a, m, tol);                 % Recursive call with lower half of curr interval.       
  end 
  
end  
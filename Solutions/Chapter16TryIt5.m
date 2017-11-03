% Function [R] = myNewton (f, dx, x0, tol)

function [R] = Chapter16TryIt5 (f, df, x0, tol)
% Objective: Find root of f around x0 with 
% accuracy up to: tol, using the Newton-Raphson Method.  
% Input:
%   f - function handler to f(x).
%   dx - function handler to df(x).
%   x0 - initial guess.
%   tol - Approximation Error Tolerance for upto which R is a root of f.
% Output:
%   R - root of f.
% Author: Chris B. Kirov
% Date: 29.09.2017  
  
  if abs( f(x0) ) < tol
    R = x0;    
  else
    xi = x0 - f(x0) / df(x0);                                    % i-th Newton step.
    R = Chapter16TryIt5 (f, df,  xi, tol);   
  end
  
end  
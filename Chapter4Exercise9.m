% Function [h] = mySplitFunction(f, g, a, b, x)

function [h] = Chapter4Exercise9(f, g, a, b, x)
% Objective: Define a piecewise function according to: f(x) if x <= a; g(x) if x >= b, and 0 otherwise. 
% Input:
%   f,g - function handles.
%   a, b - 1x1 doubles - defining the three intervals of the function.
%   x - 1x1 double: point for which the function to be evaluated.
% Output:
%   h - value of the function at point x.  
% Author: Chris B. Kirov
% Date: 29.08.2017  
  
  if x <= a                                                                % h(x) = f(x), if x <= a.
    h = f(x);
  elseif x >= b                                                        % h(x) = g(x), if x >= b.
    h = g(x);
  else                                                                       % h(x) = 0, if x in (a, b)
    h = 0;
  end 
    
end  
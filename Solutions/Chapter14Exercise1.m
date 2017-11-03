% Function [Y] = myLinInterp (x, y, X).

function [Y] = Chapter14Exercise1 (x, y, X)
% Objective: Linear Interpolation.  
% Input:
%   x, y - same size 1xN vectors of ordered data sets used for constucting the estimation linear function.  
%   X - 1xM vector of ordered values to be interpolated.
% Output:
%   Y - 1xM vector of results of interpolation. Pairs of values in X.
% Author: Chris B. Kirov
% Date: 26.09.2017  

  len = numel(X);
  Y = NaN(1, len);

  for i = 1 : len 
    
     [i1, i2] = FindInterpolationInterval( x, X(i) );
     
     Y(i) = LinearlyInterpolate( x(i1), y(i1), x(i2), y(i2), X(i) );
     
  end
    
end  

function [y] = LinearlyInterpolate(x1, y1, x2, y2,  x)
% Input;
%   x1, x2, y1, y2 - two consecutive points from the data set
%   x - value to be interpolated, such that x1=< x =< x2.
% Output:
%   y - result of interpolation - constructed line from first 4 parameters is evaulated at x.

  y = y1 + ( ( (y2- y1)  * (x - x1) ) / (x2 - x1) );     
end  

function [i1, i2] = FindInterpolationInterval(data, target)
% Input:
%   data - 1xN vector of ordered data set.
%   target - point for which: data(i1) < target < data(i2), (1).
% Output;
%   i1, i2 - indexes of elements in: data satisfying (1).
  
  index = find(data >= target, 1); 
  
  if index < 2
    index = 2;  
  end  
 
  i2 = index(end);        %  such that: x(i1) < X(i) < x(i2)
  i1 = i2 - 1;
 
end  


 
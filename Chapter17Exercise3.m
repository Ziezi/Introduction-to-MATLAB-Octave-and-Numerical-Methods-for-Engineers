% Function [dy, X] = myNumDiffwSmoothing (x, y, n)

function [dy, X] = Chapter17Exercise3(x, y, n)
% Objective: Smooth function values from a 1D grid
% and use them to approximate function derivative. 
% Input:
%  x - 1D (possinly unevenly spaced) grid. 
%  y - data contaminated with noise.
%  n - positive scalar determining number neigbouring points for smoothing using: ySmooth=mean(y(i - n, i + n)).
% Output:
%  dy - approximation of derivative of smoothed data from y.
%   X - x values corresponding to dy.
% Author: Chris B. Kirov
% Date: 06.10.2017  

  x_smooth = x(1 + n : n : end - n);
  y_smooth = smoothData (x, y, n);
  
  X = x_smooth(2 : end - 1);
  
  h = ( X(end) - X(1) ) / (numel(X) - 1);
  
  dy = central_difference(y_smooth, h);
  
end  

function [s] = smoothData (x, y, n)
% Input:
%   x - 1D (possinly unevenly spaced) grid. 
%   y - data contaminated with noise.
%   n - positive scalar determining number neigbouring points for smoothing: ySmooth = mean ( y(i - n, i + n
% Output:
%   s - smoothed values from y, averaged to the mean of their neigbouring points.

  len = numel(y);
  discrete = 1 + n : n : len - n; 
  
  for k = 1 : numel(discrete)
    
    i = discrete(k);
    s(1 + end) = mean( y(i - n : i + n) );  
    
  end  
 
end  

function [dy] = central_difference(y, h)
% Input:
%   y - function evaluated at grid with step h. 
% Output:
%   dy - derivative approximation using ( x(i + 1) - x(i - 1) ) / 2h.
 
  len = numel(y);
  dy = NaN( 1, len - 2);
 
  for i = 2 : len - 1                                                 % first and last point lost
    dy(i - 1) = ( y(i + 1) - y(i - 1) ) / (2 * h);      
  end    
  
end  
% Function [df, X] = myDerCalc (f, a, b, N, option)

function [df, X] = Chapter17Exercise1 (f, a, b, N, option)
% Objective: Implement forward, central and backward Finite Difference Method
% for approximating derivative of a function evaluated on 1D grid of size N within [a, b].
% Input:
%   f - function handler.
%   a, b - lower and upper bound of an interval in the range of f.
%   N - number (>10) of evenly spaced points in [a, b].
%   option - string specifying finite difference method: forward, central or backward.
% Output:  
%   df - vector containing first derivative approximations of f evaluated as differences on points within [a,b].
%   X - vector of same size as df containing the points in [a,b] for which df is valid: forward - last point, 
%   central - first and last, backward - first point are not valid.
% Author: Chris B. Kirov
% Date: 06.10.2017  

  if N < 10
    error('Chapter17Exercise1::Invalid Argument::N<10!')  
  end  

  h = (b - a) / (N - 1);                                             % calculate 1D grid spacing.
  x = a : h : b;                                                          % generate 1D grid within [a, b].
  y = f(x);                                                                % discretize: evaluate function at grid.
  
  switch (option)
    case 'forward'
      df  = forward_difference(y, h);  
      X = x(1 : end - 1);
    case 'central'
      df  = central_difference(y, h);  
      X = x(2 : end - 1);
    case 'backward'
      df  = backward_difference(y, h); 
      X = x(2 : end); 
    otherwise
       df = NaN(1, numel(y));
       X = zeros(1, numel(y));
      error('Chapter17Exercise1::Invalid Argument::No such option!')
  end
  
end  

function [dy] = forward_difference(y, h)
% Input:
%   y - function evaluated at grid with step h. 
% Output:
%   dy - derivative approximation using ( x(i+1) - x(i) ) / h.
 
  len = numel(y);
  dy = NaN( 1, len - 1);
  
  for i = 1 : len - 1                                                 % last point lost
    dy(i) = ( y(i + 1) - y(i) ) / h;      
  end    
  
end  

function [dy] = backward_difference(y, h)
% Input:
%   y - function evaluated at grid with step h. 
% Output:
%   dy - derivative approximation using ( x(i) - x(i - 1) ) / h.
 
  len = numel(y);
  dy = NaN( 1, len - 1 );
  
  for i = 2 : len                                                       % first point lost
    dy(i - 1) = ( y(i) - y(i - 1) ) / h;      
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
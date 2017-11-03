% Function [I] = myPolyInt (x, y)

function [I] = Chapter18Exercise2(x, y)
% Objective: Implement Simpson's Method: Interpolate the input sample using Lagrange Polynomial
% and Return Approximation of the area under the curve in the interval [x_1, x_n].
% Input:
%   x - 1xN array of doubles - independent variable.
%   y - 1xN array of doubles - dependent variable.
% Output:
%   I - Integral Approximation of the function specified by x, y.
% Author: Chris B. Kirov
% Date: 19.10.2017  

  N = numel(x) * 100;                                          % grid size.
  X = linspace(x(1), x(end), N);                          % 1D grid.  
  Y = Chapter14Exercise9(x,y, X);                    % consrtuct a Lagrange Polynomial from x and y and Interpolate values for X.  
  
  h = ( X(end) - X(1) ) / (N - 1);                         % calculate grid spacing.                               
  I = simpsonMethod(Y, h);                                 % approximate integral using Simpson's Method.
  
end  

function [I] = simpsonMethod(F, h)
% Input:
%   F - integrand function evaluated at 1D grid.
%   h - grid spacing.
% Output:  
%   I - Simpson's Rule intergal approximation.
  
  if mod(numel(F) , 2) ~= 0
    error('Chapter18Exercise1::Invalid Argument::Simpson''s Method requires even number of intervals!')  
  end  
  
  I = h/3 * ( F(1) +  2*sum( F(1 : 2: end - 2) ) + 4*sum( F(2 : 2 : end - 1) ) + F(end) );  
  
end  
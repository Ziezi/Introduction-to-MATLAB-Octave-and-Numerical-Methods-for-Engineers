% Function [] = myPolyPlotter(n, X)

function [ ] = Chapter11Exercise9(n, X)
% Objective: Plot polynomials of various degrees.  
% Input:
%   n - 1x1 positive integer - n-th degree.
%   X - 1xN array of doubles - points of evaluation.
% Output:
%   - Plots of polynomials up to n-th power over the values of X on the same graph.
% Author: Chris B. Kirov
% Date: 16.09.2017  
  hold on;  
  
  for k = 1 : n
    poly = @(x) x.^k;
  
    plot(X, poly(X));   
  end
  
  hold off;
  title(sprintf('Polynomials up to degree %d.', n));
  xlabel('x');
  ylabel('y');
  grid on;

end 
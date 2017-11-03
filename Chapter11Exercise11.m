% Function [ ] =  myFern(n)

function [ ] = Chapter11Exercise11 (n)
% Objective: Draw Barnsley Fern.  
% Input:
%   n - 1x1 positive integer - number of points.
% Output:
%   - Plot of Barnsley Fern.    
% Author: Chris B. Kirov
% Date: 16.09.2017  

  if n <= 0
    error('Chapter11Exercise11::Invalid Input::n <= 0')   
  end 
  
  [X, Y] = getCoordinates(n);  
  
  plot(X, Y, 'b.', 'markersize', 8);
  title( sprintf('Barnleys Fern with %d iterations.', n) );
  axis off
  
end 

function [X, Y] = getCoordinates (n)
% Objective: Generate coordinates for Barnsley Fern
% using chaos game method.
% Input: 
%   n - 1x1 positive integer - number of random points in [0,1].   
% Output:
%   X, Y - 1xN arrays of doubles - coordinates of Barnsley Fern.
% Complexity: O(n).

  X = zeros(1, n);
  Y = zeros(1, n);
  
  for i = 2 : 1 : n
    
    p = rand(1, 1);
 
    if p <= 0.01
      
      X(i) = 0;
      Y(i) = 0.16 * Y(i - 1);
      
    elseif p > 0.01 && p <= 0.08
      
       X(i) = 0.2 * X(i - 1) - 0.26 * Y(i - 1);
       Y(i) = 0.23 * X(i - 1) + 0.22 * Y(i - 1) + 1.6;    
       
    elseif p > 0.08 && p <= 0.15
       
       X(i) = -0.15 * X(i - 1) + 0.28 * Y(i - 1);
       Y(i) = 0.26 * X(i - 1) + 0.24 * Y(i - 1) + 0.44;
       
    elseif p > 0.15 
       
       X(i) = 0.85 * X(i - 1) + 0.04 * Y(i - 1);
       Y(i) = -0.04 * X(i - 1) + 0.85 * Y(i - 1) + 1.6;
    end 
    
  end 

end 
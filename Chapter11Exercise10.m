% Function [ ] = mySierpinski (n)

function [ ] = Chapter11Exercise10 (n)
% Objective: Plot vertcies of Sierpinski Triangle. 
% Input:
%   n - 1x1 positive integer - number of random points.
% Output:
%   - Plot of vertcies Sierpinski Triangle.
% Complexity: O(n).
% Author: Chris B. Kirov
% Date: 16.09.2017  

  if n <= 0
    error('Chapter11Exercise11::Invalid Input::n <= 0 !')  
  end 

  [X, Y] = getCoordinates(n);
  
  plot(X, Y, 'b.', 'markersize', 12);
  title( sprintf('Serpinski Triangle using Chaos Game, %d points.', n) );
  
end  

function [X, Y] = getCoordinates(n)
% Objective:  Generate vertices of Sierpinski Triangel using chaos game method.  
% Input:
%   n - 1x1 positive integer - number of random coordinates.
% Output:
%   X, Y - 1xN double arraYs - X and Y coordinates of triangle vertices.
% Complexity: O(n).

  X = zeros(1, n);                                                    % allocate coordinate arrays.
  Y = zeros(1, n);
  
  X(1) = 0;                                                               % define outermost verteces of the triangle
  Y(1) = 0;
 
  X(2) = 0.5;  
  Y(2) = sqrt(2) / 2;
  
  X(3) = 1;  
  Y(3) = 0;
  
  for i = 4 : n
    
    p = rand(1, 1);                                                   % generate a random number in (0,1)
    
    kX = 0;
    kY = 0;
    
    if p < 0.33                                                          % Pi+1 midpoint between Pi and P1
       kX = 1; 
       kY = 1;
      
    elseif p >= 0.33 && p <= 0.66                       % Pi+1 midpoint between Pi and P2
       kX = 2; 
       kY = 2;
      
    elseif p > 0.66                                                   % Pi+1 midpoint between Pi and P3
       kX = 3; 
       kY = 3;
      
    end
    
    X(i) = ( X(kX) + X(i - 1) ) / 2;                        % calculate and store Pi+1
    Y(i) = ( Y(kY) + Y(i - 1) ) / 2;
    
  end  

end  
% Function [] = myPolygon(n)

function [] = Chapter11Exercise7 (n)
% Objective: Plot a n-side regular polygon.  
% Input:
%   n - 1x1 positive integer, n >= 3 - sides of polygon.
% Output:
%   - plot of regular polygon with n sides.  
% Author: Chris B. Kirov
% Date: 16.09.2017 

  [X, Y] = getCoordinates(n);

  plot(X, Y);  
  title(sprintf('My regular polygon with %d sides.', n));
  xlabel('x');
  ylabel('y');
  
end

function [X, Y] = getCoordinates(n)
% Objective: Genererates coodrinates of regular polygons.
% Input:
%   n - 1x1 a positive integer, n >= 3, side number.
% Ouput:
%   X, Y - 1xN arrays with pair of coordinates of regular polygon. 
% Complexity: O(n).

  X = zeros(1, n);
  Y = zeros(1, n);
 
  x = 0;                                                                    % center coodrinates
  y = 0;
  r = 1;                                                                    % radius
  
  X(1) = x;                                                              % coordinate first vertex of polygon
  Y(1) = y + r;                                                        % one-radius above the center
  
  angle = 360 / n;                                                   % each interior angle of equiangular n-gon.
  
  for i = 2 : n                                                          % rotate first vertex at multiple of the angle to get next.
    [X(i), Y(i)] =  rotatePoint( x, y, angle * (i  - 1), X(1), Y(1) );  
  end                                                                        
  
  X(end + 1) = X(1);                                            % connect last to first vertex.
  Y(end + 1) = Y(1); 
end  

function [x, y] = rotatePoint(pivotX, pivotY, angle, pointX, pointY)
% Objective: Rotate a point counterclockwise around a pivot.   
% Input:
%   pivotX, pivotY - pivot coordinates.
%   pointX, pointY - initial point coordinates.
%   angle - the angle of rotation in radians.
% Output:
%   x, y - final point after rotation.

  rad = angle * pi / 180;                                        % convert degrees to radians.

  x = cos(rad) * (pointX - pivotX) - sin(rad) * (pointY - pivotY) + pivotX;
  
  y = sin(rad) * (pointX - pivotX) + cos(rad) * (pointY - pivotY) + pivotY; 
  
end  















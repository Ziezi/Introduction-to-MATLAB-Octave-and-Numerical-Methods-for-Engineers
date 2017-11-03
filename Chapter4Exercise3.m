% Function [S] = myInsidePolygon(polygon, point)

function [S] = Chapter4Exercise3(polygon, point)
% Objective: Find whether a point is inside, outside or on the boundary of a regular polygon.
% Input:
%   polygon - 1xN struct array with fields: x and y, 1x1 doubles - 2D coordinates of regular polygon.
%   point - 1x1 struct object containing a 2D test coordinate; 
% Output:
%   S - string containing information of the relative position between test point and polygon.
% Author: Chris B. Kirov
% Date: 29.08.2017       
    
  if (isOutside(polygon, point))
    S = 'outside';
  elseif (isOnBoundary(polygon, point))
    S = 'border'; 
  elseif (isInside(polygon, point))
    S = 'inside';
  else 
    error('Some of the algorithms contains an error!');
  end
  
end  

function [bool] = isOutside(polygon, point)
% Input:
%   polygon - 1xN struct array containing 2D coordinates of regular polygon.
%   point - 1x1 struct object containing a 2D test coordinate; 
% Output:  
%   bool - true if test point outside; otherwise false.
  
  [minx, i1] = min([polygon.x]);
  [miny, i2] = min([polygon.y]);
  
  [maxx, i3] = max([polygon.x]);
  [maxy, i4] = max([polygon.y]);
  
  if (point.x < minx || point.x > maxx || point.y < miny || point.y > maxy)
    bool = true;  
  else 
    bool = false;
  end 
  
end  

function [bool] = isOnBoundary(polygon, point)
% Input:
%   polygon - 1xN struct array containing 2D coordinates of regular polygon.
%   point - 1x1 struct object containing a 2D test coordinate; 
% Output:  
%   bool - true if test point outside; otherwise false.
 
  for i = 1 : length(polygon) - 1                           % build polygon edges.
    v1 = makeVector(polygon(i+1), polygon(i));
    v2 = makeVector(polygon(i), point);              % build a line from test point and current vertex.
    v3 = makeVector(polygon(i+1), point);
        
    d = det([v1; v2]);                                              
        
    if (d == 0)                                                          % is the test point on polygon edge.
      n1 = norm(v1);
      n2 = norm(v2);
      n3 = norm(v3);
            
      if (n2 <= n1 && n3 <= n1)                          % is the test point inbetween two vertices.
        bool = true;
        return;
      end 
            
    end 
        
  end 

  bool = false;    
end

function [bool] = isInside(p, t)
% Input:
%   p - 1xN struct array containing 2D coordinates of regular polygon.
%   t - 1x1 struct object containing a 2D test coordinate; 
% Output:  
%   bool - true is test point inside the polygon; otherwise false.  
% Based on Jordan Curve Theorem,
% from: https://wrf.ecse.rpi.edu//Research/Short_Notes/pnpoly.html#The C Code
    
  size = length(p) - 1;
  bool = false;
    
  for i = 1 : size;
    if ( ( (p(i).y  > t.y) != (p(i+1).y > t.y) ) && ( t.x < (p(i+1).x - p(i).x) * (t.y - p(i).y) / (p(i+1).y - p(i).y) + p(i).x) ) 
      bool = ~bool; 
    end 
  end 
  
end  

function [v] = makeVector(point1, point2)
% Input:
%   point1, point2 - 1x1 struct objects containing 2D coordinates.
% Output:    
%   v - 1x1 struct object holdgin the coordinates of a vector.

  x = point2.x - point1.x;
  y = point2.y - point1.y;
  
  v = [x, y];
end  
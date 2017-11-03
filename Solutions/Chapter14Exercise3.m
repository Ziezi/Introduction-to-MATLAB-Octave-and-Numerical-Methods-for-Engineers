% Function [Y] = myNearestNeighbor (x, y, X).
 
function [Y] = Chapter14Exercise3 (x, y, X)
% Objective: Nearest Neighbor Interpolation.  
% Input:
%   x, y - same size 1xN vectors of data points.
%   X - points to be interpolated.
%  Output:
%   Y - points obtained via Nearest Neigbour interpolation.
% Author: Chris B. Kirov
% Date: 26.09.2017  
  len = numel(X);
  Y = NaN(1, len);

  for i = 1 : len
    
    index = findNearestNeighbour(x, X(i));
    
    Y(i) = interpolateByNearestNeigbour( y(index) );
    
  end    
  
end

function [Y] = interpolateByNearestNeigbour(y)
% Input:
%   x, y - same size 1xN vectors of data points.
%   X - point to be interpolated.
%  Output:
%   Y - point obtained via Nearest Neigbour interpolation.

  Y = y;  

end


function [index] = findNearestNeighbour(data, target)
% Input:
%   x - 1xN vector holding the independente variable values.
%   X - points to be interpolated.
%  Output:
%   index - index of value in vector x, closest to X.

  [value, index] = min( abs( data - target ) );
  
end  
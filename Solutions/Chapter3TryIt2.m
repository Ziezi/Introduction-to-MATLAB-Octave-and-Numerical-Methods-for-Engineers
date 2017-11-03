% Function [D] = myDistanceXYZ(x,y,z)

function [D] = Chapter3TryIt2(x,y,z)
% Objective: Calculate all the distances between 3 coordinates.  
% Input:  
%   x,y,z - three 1x1 doubles - 3D coordinates.
% Output:
%   D - 1x3 dobule array containing the distances:
%   D(1) - distance between x and y  
%   D(2) - distance between x and z
%   D(3) - distance between y and z
% Author: Chris B. Kirov
% Date: 26.08.2017
    
  D(1) = myDist(x,y);
  D(2) = myDist(x,z);
  D(3) = myDist(y,z);
end 

function [D] = myDist(a,b)
% Input:
%   a, b - two 1x1 doubles - coordinates.
% Output:
%   D - 1x1 double - distance between a and b.
    
  D = sqrt((a(1) - b(1))^2 + (a(2) - b(2))^2);
end
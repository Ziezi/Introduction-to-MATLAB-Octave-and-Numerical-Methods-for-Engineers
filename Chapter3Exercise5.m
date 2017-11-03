% Function [S,V] = myCylinder(r, h)

function [S, V] = Chapter3Exercise5(r, h)
% Objective: Calculate cylinder area and volume.  
% Input:        
%   r - 1x1 double - cylinder radius.
%   h - 1x1 double - cylinder height.
% Output:          
%   S - 1x1 double - cylinder surface area
%   V - 1x1 double - cylinder volume.
% Author: Chris B. Kirov
% Date: 26.08.2017        
    
  S = cylinderArea(r,h);
  V = cylinderVolume(r,h);  
end 

function [S] = cylinderArea(r, h)
  S = 2* pi * (r^2) + 2 * pi * r * h;  
end

function [V] = cylinderVolume(r, h)
  V = pi * (r^2) * h;   
end  
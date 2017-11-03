% Function [ ] = myParametricPlotter(f, g, t)

function [ ] = Chapter11Exercise12 (f, g, t)
% Objective: Plot a 3D parametric curve.
% Input:
%  f, g - function handlers.
%  t - parameter points.
% Output:
%   - Draws the curve (f(t), g(t), t) in a 3D plot.
% Author: Chris B. Kirov
% Date: 16.09.2017    
 
  plot3(f(t), g(t), t);
  title('My parametric plotter.');  
  xlabel('x');
  ylabel('y');
  zlabel('t');
  
end  
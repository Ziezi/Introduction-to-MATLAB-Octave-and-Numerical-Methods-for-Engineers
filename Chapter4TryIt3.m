% Function [out] = myCircCalc(r, calc)

function [out] = Chapter4TryIt3(r, calc)
% Objective: Calculate area or circumference of circle based on argument value .  
% Input:  
%   r - 1x1 dobule - radius of a circle 
%   calc - 1xN string - calculation command.
% Output:
%   out - area or circumference of circle.
% Author: Chris B. Kirov
% Date: 27.08.2017     
   
  if strcmp(calc, 'area')
      out = pi * r.^2;  
  elseif strcmp(calc, 'circumference') 
      out = 2 * pi * r;
  end   
    
end
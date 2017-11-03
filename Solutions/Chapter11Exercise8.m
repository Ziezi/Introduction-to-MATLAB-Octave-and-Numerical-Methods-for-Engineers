% Function [ ] = myFunPlotter(f, x)

function [ ] = Chapter11Exercise8(f, x)
% Objective: Use func2str to display a function formula on a plot.
% Input:
%   f - function handler.
%   x - 1xN array of doubles.
% Output:
%   - Dispalys a plot of f over the valaues of x.
% Author: Chris B. Kirov
% Date: 16.09.2017  

  plot(x, f(x));
  title(sprintf('Plot of %s.', func2str(f)));
  xlabel('x');
  ylabel('y');  
  
end 
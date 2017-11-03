% Function [ ] = mySurfacePlotter(F, x, y, option)

function [] = Chapter11Exercise13 (F, x, y, option)
% Objective: Plot contour or surf.  
% Input:
%   F - handle to two variable function F(x, y)
%   x, y - 1xN arrays of doubles.
%   option - 1xN string - speficy plot: 'surf', 'contour'.
% Output:
%    - draws 3D surface plot out of the F(x,y), with type depending on: option. 
% Author: Chris B. Kirov
% Date: 16.09.2017  
  
  [X, Y] = meshgrid(x, y);                                    % Generate a grid out of copied x and y.
  
  if strcmp(option, 'surf')
    
    surf( X, Y, F(X, Y) );   
    title( sprintf( 'Surface plot of function: %s.', func2str(F) ) );
    xlabel('x');
    ylabel('y');
    zlabel('z');
    
  elseif strcmp(option, 'contour')
    
    contour(X, Y, F(X, Y));
    title( sprintf( 'Contour plot of function: %s.', func2str(F) ) );
    xlabel('x');
    ylabel('y');
    zlabel('z');
    
  else
    error('Chapter11Exercise12::No such option!'); 
  end  
  
end  
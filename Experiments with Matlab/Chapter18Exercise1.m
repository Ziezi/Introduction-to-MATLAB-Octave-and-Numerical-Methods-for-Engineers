% 
clc; clear; close all;

% A relation parameter. Try other values.
% Experiment with omega slightly greater than one.
for omega = 1.0268 : 0.00001 : 1.0269
  
  %Create a two dimensional grid.
  m = 21;
  [x,y] = ndgrid(-1 : 2 / (m - 1) : 1);

  % The water drop function from waterwave.
  U = exp( -5*(x.^2 + y.^2) );

  % Surf plot of the function
  clf
  shg
  h = surf(x, y, U); 
  axis off 
  ax = axis;

  % Colormap
  c = (37 : 100)'; 
  cyan = [0*c, c, c]/100; 
  colormap(cyan) 
  pause(1)

  % Indices in the four compass directions.
  n = [2 : m, m];
  e = n;
  s = [1, 1 : m-1];
  w = s;

  % Relax. 
  % Repeatedly replace grid values by relaxed average of four neighbors.
  tfinal = 500; 

  for t = 1 : tfinal 
  
    U = (1 - omega)*U + omega*( U(n, :) + U(:, e) + U(s, :) + U(:, w) ) / 4; 
  
    set(h, 'zdata', U); 
    axis(ax) 
  
    drawnow 
  
  end
 
end 

function [ ] = MandelbrotSets (n, pixels)
% Objective: 
%   Draw Mandelbrot Set.
% Input:
%   n - 1x1 integer - number of iterations.
%   p - 1x1 integer - number of pixels in one dimension.
% Output:
%   A plot of a Mandelbrot Set.
% Author: Chris B. Kirov
% Date: 21.11.2017 

  aspect_ratio = 3/4;                                             %  proportional relationship between image width and height.                                   

  xBeg = -2.5;
  xEnd = 1.5;
  x = linspace(xBeg, xEnd, pixels);
  
  yBeg = -1.5;
  yEnd = 1.5;
  y = linspace(yBeg, yEnd, round( aspect_ratio * pixels) );
  
  [Re, Im] = meshgrid(x, y);                                 % cartesian product of x and y.
  
  C = Re + j * Im;                                                  % 2D grid over the Complex plane.
   
  M = zeros( round( aspect_ratio * pixels),  pixels);% store Mandelbrot Set image. 
  
  Z = M;                                                                  % initialize the map.
  
  for i = 1 : n
    
    Z = Z .* Z + C;                                                 % perform mapping onto itself.
    M = M + ( abs( Z ) > 2 );                                 % add only finite value.      
  
  end   
  
  imagesc(M);                                                        % draw an image where the colours are determined by the values of the matrix.
  % colormap('gray')
  axis on
  xlabel('Re')
  ylabel('Im')
  title('The Mandelbrot Set')

end  
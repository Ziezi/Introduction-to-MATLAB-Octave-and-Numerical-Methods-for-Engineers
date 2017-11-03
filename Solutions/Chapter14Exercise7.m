% Function [ ] = myInterpPlotter (x, y, X, option)

function [ ] = Chapter14Exercise7 (x, y, X, option)
% Objective: Plot interpolated data using method specified by argument value.  
% Input:
%   x, y - 1xN same size ordered data coordinates to construct N-1 Cubic polynomials.
%   X - 1xM ordered data coordinates for interpolation.
%   option - string specifying one of following interpolation methods: 'linear', 'spline', 'nearest'. 
% Output:
%   Plot of the interplolated data using a method specified by the last parameter.
% Author: Chris B. Kirov
% Date: 27.09.2017  

  Y = NaN(1, numel(X));
  titleLable = '';
  
  switch (option)
    case 'linear'
      Y = Chapter14Exercise1 (x, y, X); 
      titleLable = 'Linear';
    case 'spline'
      Y = Chapter14Exercise2 (x, y, X);
      titleLable = 'Cubic Spline';  
    case 'nearest'
      Y = Chapter14Exercise3 (x, y, X);  
      titleLable = 'Nearest Neighbour';  
    otherwise
       error('Chapter14Exercise7::Invalid Input Argument::No such option!');    
  end     
  
  plot(X, Y, 'color', 'b', x, y, 'ro')
  title( sprintf( '%s Interpolation using MY code.', titleLable ) )
  xlabel('x')
  ylabel('y')
  legend('Interpolation', 'Data Points', 'location', 'northeast')
  
end  
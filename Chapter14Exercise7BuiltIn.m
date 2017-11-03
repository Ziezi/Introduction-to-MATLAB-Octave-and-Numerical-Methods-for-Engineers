% Function [ ] = myInterpPlotter (x, y, X, option) using interp1()

function [ ] = Chapter14Exercise7BuiltIn (x, y, X, option)
% Objective: Plot interpolated data using method specified by argument value. Use built-in functions.
% Input:
%   x, y - 1xN same size ordered data coordinates to construct N-1 Cubic polynomials.
%   X - 1xM ordered data coordinates for interpolation.
%   option - string specifying one of following interpolation methods: 'linear', 'spline', 'nearest'. 
% Output:
%   Plot of the interplolated data using a method specified by last parameter.
% Author: Chris B. Kirov
% Date: 27.09.2017  

  Y = NaN(1, numel(X));
  titleLable = '';
  
  Y =  interp1(x, y, X, option);
  
  switch (option)
    case 'linear'
      titleLable = 'Linear';
    case 'spline'
      titleLable = 'Cubic Spline';  
    case 'nearest'
      titleLable = 'Nearest Neighbour';  
    otherwise
       error('Chapter14Exercise7::Invalid Input Argument::No such option!');    
  end     
  
  plot(X, Y, 'color', 'b', x, y, 'ro')
  title( sprintf( '%s Interpolation using interp1.', titleLable ) )
  xlabel('x')
  ylabel('y')
  legend('Interpolation', 'Data Points', 'location', 'northeast')
  
end  
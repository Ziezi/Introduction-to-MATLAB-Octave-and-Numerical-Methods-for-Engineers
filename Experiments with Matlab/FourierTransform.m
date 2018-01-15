
function [ft] = FourierTransform (X, n)
% Objective: 
%   Apply Discrete Fourier Transform on the points stored in x.
% Input: 
%   X -1xM - complex vector - data points.
%   n- 1x1 - integer - spectum discretised in n equidistant frequencies.
% Output:
%   ft - 1xn compex vector - f(i) is the number quantifying the "amount of" i-th frequency in the points in X.
% Author: Chris B. Kirov
% Date: 08..11.2017
  
  points_number= numel(X);
  ft = zeros(1, n);
  sum = 0;
  
  for f = 1 : n 
    
    for p = 1 : points_number  
         
       sum = sum + x( p ) * exp( -2*pi*j*(p - 1)*(f - 1) / N );
         
    end
     
     ft( f ) = sum;
     sum = 0;
    
  end  
 
end  
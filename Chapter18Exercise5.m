% Function [An, Bn] = myFourierCoeff (f, n)

function [An, Bn] = Chapter18Exercise5 (f, n)
% Objective:
%   Calculate the coefficients of the n-th term in Fourier Series.
% Input:
%   f - function handler - 2pi periodic function.  
%   n - 1x1 integer - n-th term in Fourier Series.
% Output:
%   An - coefficient.
%   Bn - coefficient.
% Author: Chris B. Kirov
% Date: 20.10.2017   
 
  f1 = @(x) f(x) * cos(n * x); 
  An = (1/pi) * quad(f1, -pi, pi);
  
  f2 = @(x) f(x) * sin(n * x);
  Bn = (1/pi) * quad(f2, -pi, pi);
  
end  
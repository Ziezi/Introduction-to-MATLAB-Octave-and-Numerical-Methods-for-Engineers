% Function [I] = myNumInt(f, a, b, n, option)

function [I] = Chapter18Exercise4 (f, a, b, n, option)
% Objective: Numerically Approximate the Integral of a function.
% Input:
%   f - function handle to integrand.
%   a, b - doubles defining the interval of integration.
%   N - number of subintervals used in the approximation.
%   option - one of 3 strings: 'trap', 'simp' or 'rect' - approximation method. 
% Output:
%   I - numerically evaluated integral of f over [a,b] on 1D grid with N points, 
%   using the method specified by: option.
% Author: Chris B. Kirov
% Date: 19.10.2017   

  f0 = 0;                                                                  % constant of integration.
  I = Chapter18Exercise1 (f, f0, a, b, n, option);
end  
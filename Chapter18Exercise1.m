% Function [I] = myIntCalc(f, f0, a, b, N, option)

function [I] = Chapter18Exercise1 (f, f0, a, b, N, option)
% Objective: Numerically Approximate the Integral of a function.
% Input:
%   f - function handle to integrand.
%   f0 - initial condition passing the value of f(0). 
%   a, b - doubles defining the interval of integration.
%   N - number of subintervals used in the approximation.
%   option - one of 3 strings: 'trap', 'simp' or 'rect' - approximation method. 
% Output:
%   I - numerically evaluated integral of f over [a,b] on 1D grid with N points, 
%   with initial condition f(0) = f0, using the method specified by: option.
% Author: Chris B. Kirov
% Date: 09.10.2017  

  I = NaN;                                                              % inintialize to NaN.
  h = (b - a) / (N - 1);                                             % calculate grid spacing.
  x = linspace(a, b, N);                                          % generate 1D grid.
  F = f(x);                                                               % evaluate the integrand on grid.

  switch option
    
    case 'rect'
      
      I = riemannIntegral(F, h);
      
    case 'trap'
      
      I = trapezoidRule (F, h);
     
    case 'simp'
    
      I = simpsonMethod(F, h);
       
    otherwise 
    
      error('Chapter18Exercise1::Invalid Argument::No such option!')
      
  end   
  
  I = I + f0;
    
end  

function [I] = riemannIntegral(F, h)
% Input:
%   F - integrand function evaluated at 1D grid.
%   h - grid spacing.
% Output:  
%   I - Right Riemann intergal approximation.
   
  % I = h * sum( F(1 : end - 1) );  
  I = h * sum( F(2 : end) );  
  
end

function [I] = trapezoidRule (F, h)
% Input:
%   F - integrand function evaluated at 1D grid.
%   h - grid spacing.
% Output:  
%   I - Trapezoid Rule intergal approximation.
  
  I = (h/2) * ( F(1) + 2* sum( F(2 : end - 1) ) + F(end) );  
  
end

function [I] = simpsonMethod(F, h)
% Input:
%   F - integrand function evaluated at 1D grid.
%   h - grid spacing.
% Output:  
%   I - Simpson's Rule intergal approximation.
  
  if mod( numel(F), 2 ) == 0
    error('Chapter18Exercise1::Invalid Argument::Simpson''s Method requires even number of intervals!')  
  end  
  
  I = (h/3) * ( F(1) +  2*sum( F(1 : 2: end - 2) ) + 4*sum( F(2 : 2 : end - 1) ) + F(end) );  
  
end  
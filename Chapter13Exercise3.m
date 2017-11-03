% Function [alpha, beta] = myExpFit (x,y)

function [alpha, beta] = Chapter13Exercise3(x, y)
% Objective: Least Square Regression with linearized exponential functions.  
% Input:
%  x, y -1xM column vectors - independent and dependent variable values. 
% Output:
%   alpha, beta 1x1 doubles - parameters of the exponential estimation function: \hat{y}(x) = alpha e^{beta * x}.  
% Author: Chris B. Kirov
% Date: 23.09.2017  

  basicFunctions = { @(x) x.^0, @(x) x };         % linearization on the estimation function: log{y(x)} =  beta * x  + log(alpha).

  b = Chapter13Exercise2 (basicFunctions, x, log(y)); % log(y)  - linearization.
  alpha = exp( b(1) );                                             % exp(a) - reverse linearization.
  beta = b(2);
  
end  
% Function [R] = myNthRoot (x, N, tol)

function [R] = Chapter16Exercise1 (x, N, tol)
% Objective: Approximate the N-th root of x using the Newton-Raphson method.  
% Input:
%   x, N - positive scalars.
%   tol - Approximation Error Tolerance.
% Output:
%   R - n-th root of N. 
% Author: Chris B. Kirov
% Date: 03.10.2017  

  R = NaN;

  f = @(y) y.^N - x;
  df = @(y) N * y.^(N - 1);
  x0 = x / N;                                                           % Initial guess.
  
  limit = 10000;                                                     % Iteration limit.
  i = 0;                                                                     % Iteration counter.
  
  while (true)                                                         % do-while 
    
    xi = x0 - f(x0) / df(x0);
    x0 = xi;    
    i = i + 1;
    
    if ( abs(f(x0)) < tol ) or ( i > limit )                % error metric |f(xi)|.
      
      R = xi;
      return;  
      
    end   
 
  end    
   
end  
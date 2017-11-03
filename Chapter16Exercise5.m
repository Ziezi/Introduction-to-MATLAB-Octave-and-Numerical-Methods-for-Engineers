% Function [R, E] = myNewton (f, df, x0, tol)

function [R, E] = Chapter16Exercise5 (f, df, x0, tol)
% Objective: Store successive root approximations and errors
% of f around x0 using the Newton-Raphson method.  
% Input:
%   f - function handler to f(x).
%   df - function handler to the first detivative of f(x).
%   x0 - initial estimation of the root.
%   tol - approximation error tolerance.
% Output:
%   R, E - arrays storing the successive approximations and errors of the root of f.
% Author: Chris B. Kirov
% Date: 04.10.2017
 
  R(1 + end) = x0;
  E(1 + end) = abs( f( R(end) ) );  
  limit  = 1000;
  i = 1;

  while i < limit
  
    R(1 + end) = x0 - ( f(x0) / df(x0) );
    E(1 + end) = abs( f( R(end) ) );  
    
    if E(end) < tol
      return;       
    end      
    
    x0 = R(end);
    i = i +1;
    
  end    

end  
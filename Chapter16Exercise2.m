% Function [X] = myFixedPoints (f, g, tol, maxiter)

function [X] = Chapter16Exercise2 (f, g, tol, maxIter)
% Objective: Find interval of values where f(x) == g(x) 
% using the Bisection Method with error metric: |F(m)| < tol.
% Input:
%   f, g - function handlers.
%   tol - Approximation Error Tolerance.
%   maxIter - positive scalar, iteration limit.
% Output:
%   X - scalars for which f(X) == g(X).   
% Author: Chris B. Kirov
% Date: 03.10.2017

  X = [ ];
  
  F = @(x) f(x) - g(x);                                           % We search value where f(x) == g(x) as a root of F(x).
  
 [a, b] = initialBracketGuess(F, 0);                    % Search interval where F(a) < 0 and F(b) > 0.

  i  = 1;
  
  while i < maxIter

    m = (a + b) / 2;
   
    if  abs( F(m) ) < tol   
       
      X = m;
      return;
      
    elseif sign(F(m)) == sign(F(a))
      a = m;  
    else 
      b = m;
    end
    
    i = i + 1;
    
  end     
  
end  

function [a,b] = initialBracketGuess(f, initial)
% Objective: Find two values for which f(a) > 0 and f(b) < 0
% by successive doubling of the interval around point: initial.
% Input:
%   f - function hander.  
%   initial - point around which we seek two values with opposite signs.
% Output:   
%   a,b - values such that f(a) < 0 and f(b) > 0. 

  a = NaN;
  b = NaN;
  
  iBeg = initial - 1;
  iEnd = initial + 1;
  limit = log2( realmax('double') );
  i = 1;

  while i < limit
    
    if ( f( iBeg) < 0 ) & ( f( iEnd) > 0 )
      
      a = iBeg;
      b = iEnd;
      return; 
      
    elseif f( iBeg) > 0
      
        iBeg =  iBeg  - 2*  iBeg;  
        
    else   
        
       iEnd = iEnd + 2 * iEnd;
       
    end    
    
    i = i + 1;
    
  end
  
end  
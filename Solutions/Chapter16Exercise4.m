% Function [R, E] = myBisection (f, a, b, tol)

function [R, E] = Chapter16Exercise4 (f, a, b, tol)
% Objective: Show root approximation and error 
% in each successive step in finding root of f in [a,b]
% using the Bysection Method.   
% Input:
%   f - function handler.
%   a, b - doubles such that a < b and f(a) . f(b) < 0. 
%   tol - approximation error tolerans.
% Output:
%   R, E - arrays storing the successive approximations and errors of the root of f.
% Author: Chris B. Kirov
% Date: 04.10.2017

  n = ceil (log2( (b - a) / tol ));                             % max iterations needed to converge to a root to within a certain tolerance.
  
  R = NaN(1, n);
  E = NaN(1, n);
  
  limit = n + 1;
  i = 1;
  
  while i < limit 
    
    R(i) = (a + b) / 2;
    E(i) = abs( f( R(i) ) );
    
    if  E(i) < tol
      R(isnan(R)) = [ ];                                           % if convegence before limit
      E(isnan(E)) = [ ];                                            % remove excessive preallocated space at end.
      return; 
      
    else if sign( f( R(i) ) ) == sign( f(a) ) 
      a = R(i);  
    else
      b = R(i);  
    end  
     
    i = i +1;
     
  end    
  
end 
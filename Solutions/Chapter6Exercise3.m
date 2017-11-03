% Function [A] = myAckermann(m, n), till m=3 and n=4

function [A] = Chapter6Exercise3(m, n)
% Objective: Obtain Ackerman function from the recurrence relation:
% A(x,y) = A(x - 1, A(x, y - 1)), with A(0,y) = y + 1 and A(x, 0) = A(x - 1, 1).  
% Input:
%   m, n - 1x1 integers.
% Ouput:
%   A - Ackerman function value for A(m, n).
% Author: Chris B. Kirov
% Date: 31.08.2017
  
  if m == 0
    A = n + 1;
  elseif (m > 0) && (n == 0) 
    A = Chapter6Exercise3(m - 1, 1);                                                 
  else     
    A = Chapter6Exercise3(m - 1, Chapter6Exercise3(m, n - 1));                            
  end  
  
end  
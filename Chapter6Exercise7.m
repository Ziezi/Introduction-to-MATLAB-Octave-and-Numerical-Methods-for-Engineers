% Function [gcd] = myGCD (a, b)

function [gcd] = Chapter6Exercise7 (a, b)
% Objective: Calculate the Greatest Common Divisor of a and b
% from the recurrence relation: gcd(a, b) = gcd( b, rem(a,b) ), with gcd(a, 0) = a;  
% Input:
%   a, b- 1x1 integers.
% Output:
%  gcd - the greatess common divisor of a and b.  
% Author: Chris B. Kirov
% Date: 01.09.2017    
    
  if b == 0
    gcd = a;     
  else
    gcd = Chapter6Exercise7 ( b, rem(a, b) );
  end 
  
end  
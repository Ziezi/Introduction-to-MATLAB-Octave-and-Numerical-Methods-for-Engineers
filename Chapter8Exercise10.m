% Function [n] numberFromGap( eps )

function [n] = Chapter8Exercise10 ( epsilon )
% Objective: Find the number with specific gap (= 1). 
% Input:
%   epsilon - 1x1 double - gap (distance between two numbers in IEEE754 representation).
% Output:
%   n - 1x1 double the smallest number with wanted eps.
% Author: Chris B. Kirov
% Date: 11.09.2017    

 n = 1;
 
 while eps(n) <= epsilon
   
   n = n * 2;
    
 end
  
end  
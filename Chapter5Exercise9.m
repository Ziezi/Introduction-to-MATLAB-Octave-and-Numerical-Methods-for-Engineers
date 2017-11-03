% Function [out] = myIsPrime(n)

function [bool] = Chapter5Exercise9(n)
% Objective: Find if n is prime by trial division.   
% Input:
%   n - 1x1 integer.
% Output: 
%   bool - returns true is n is prime, false otherwise.
% Author: Chris B. Kirov
% Date: 30.08.2017    
   
  if (n == 1 || (mod(n, 2) == 0 && n != 2))
    bool = false;
    return; 
  end 
    
  % trial division for all the odds till sqrt(n)
  for i = 3 : 2 : sqrt(n)
    
    if (mod(n, i) == 0)
        bool = false;
        return;  
    end
    
  end 
    
  bool = true;
  
end 
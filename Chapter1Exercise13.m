% Ramanujan’s formula for pi approximation

function [approx_pie] = Chapter1Exercise13 (k)
% Objective: Implement Ramanujan’s formula for pi approximation.
% Input: 
%    k - positive integer - number of last term in series.
% Output:  
%    approx_pie - approximation of pi as the sum of k  terms of the series.
% Author: Chris B. Kirov
% Date: 19.08.2017
   
  s = 0;   
  coeff = (2 * sqrt(2)) / 9801;
    
  for i  = 0 : k    
    
    numerator = factorial(4 * i) * (1103 + 26390*i);
    denominator = factorial(i)^4 * 396^(4 * i);
    term = numerator / denominator;
    
    s = s +  term; 
    
  end  
  
  approx_pie = 1 / (coeff * s);
    
end


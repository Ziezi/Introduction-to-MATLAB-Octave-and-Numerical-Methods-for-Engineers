% Function [ind] = myFind(B)

function [ind] = Chapter5Exercise7(B)
% Objective: Find all array indexes containing specific value.   
% Input:
%   B - 1xN array of doubles.
% Output: 
%   ind - array of indices for which B's value is: 1.
% Author: Chris B. Kirov
% Date: 30.08.2017 

  ind = [ ];
  
  for i = 1 : length(B)
    
    if B(i) == 1
      ind(end + 1) = i;   
    end
    
  end
  
end  
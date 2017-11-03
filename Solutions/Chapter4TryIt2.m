% Function [out] = isOdd(in)

function [out] = Chapter4TryIt2(in)
% Objective: Print the parity of a number.  
% Input:  
%   in -1x1 integer.
% Output:
%   out - string containing the arity of input integer: 'odd' / 'even'.
% Author: Chris B. Kirov
% Date: 27.08.2017         
  
  if rem(in, 2) == 0
      out = 'even';
  else
      out = 'odd';
  end    
    
end 
% Function [out] = myAdder (a, b, c)

function [out] = Chapter9TryIt1 (a, b, c)
% Objective: Demonstrate input type checking.  
% Input:
%   a,b,c- 1x1 doubles.
% Output:
%   out - their sum; throws error otherwise.
% Author: Chris B. Kirov
% Date: 12.09.2017    

  if ~isnumeric(a) || ~isnumeric(b) || ~isnumeric(c)  % type-check input parameters.
    error('Chapter9TryIt1::Invalid input type!')  
  end  
  
  out = a + b + c;
  
end  
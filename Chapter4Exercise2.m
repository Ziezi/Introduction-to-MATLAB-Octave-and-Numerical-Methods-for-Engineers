% Function [f] = myMultOperation(a, b, operation)

function [f] = Chapter4Exercise2(lhs, rhs, operation)
% Objective: Implement a simple calculator.  
% Input:
%   lhs, rhs - 1xN double arrays - operands.
%   operation - 1xM char string - operation.
% Output:
%   f - 1x1 double - result of the arithmetic operation between two operands.  
% Author: Chris B. Kirov
% Date: 27.08.2017    

  assert(numel(lhs, 2) == numel(rhs, 2), 'Ch4Ex2::Dimension Mismatch!');
    
  if (strcmp(operation, 'pow'))
    f = lhs .^ rhs;
  elseif (strcmp(operation, 'mult'))
    f = lhs .* rhs;
  elseif (strcmp(operation, 'div'))  
    f = lhs ./ rhs;
  elseif (strcmp(operation, 'plus'))
    f = lhs + rhs;
  elseif (strcmp(operation, 'minus'))
    f = lhs - rhs;
  else
    error('Ch4Ex2::Invalid Argument::No such operation!');
  end 
  
end  
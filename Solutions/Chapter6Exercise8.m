% Function [row] = myPascalRow(m)

function [row] = Chapter6Exercise8(m)
% Objective:  Calculate the values in a row of the Pascal Triangle
% or coefficients of m-th order binomial  (polynomial) equation.
% Input:
%   m - 1x1 integer - m-th row in Pascal Triangle.
% Output:
%   row - 1xN integer array - row in Pascal's Triangle.
% Author: Chris B. Kirov
% Date: 01.09.2017    
    
  for i = 1 : m
      
    if i == 1 || i == m
        row(i) = 1;         
    else
      prev_row = Chapter6Exercise8(m - 1);
          
      row(i) = prev_row(i - 1) + prev_row(i);       % current coefficient is equal to the sum of the two above it
    end  
      
  end
    
end  
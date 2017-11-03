% Function [roll] = myMonopolyDice()

function [roll] = Chapter5Exercise8()
% Objective: Simulate rolling two dice. (Roll again if same and sum altogether.)  
% Input:
%   -
% Output: 
%   roll - pseudo-random sum of rolling two dice. In case of same values - roll again.
% Author: Chris B. Kirov
% Date: 30.08.2017  
 
  roll = 0;
    
  % gernerate a 1x2 array of integer pseudo-random numbers and store in arr
  arr = randi([1, 6], 1, 2);
  roll = sum(arr);

  % roll dice again if values of two dice equal; add it to the total sum.
  while arr(1) == arr(2)
    arr = randi([1, 6], 1, 2);  
    roll += sum(arr);     
  end 
    
end 
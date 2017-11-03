% Function [d] = myBin2Dec(B)

function [d] = Chapter8Exercise1 (B)
% Objective: Convert a number from binary to decimal representation.  
% Input:
%   B - 1xN integer array - binary representation of number. (last element is the least significant bit.)
% Output:
%   d - 1x1 integer - decimal representation of B.
% Complexity: O(n).
% Author: Chris B. Kirov
% Date: 09.09.2017        

  d = 0;
  lsb = numel(B); 
  
  for i =  lsb : -1 : 1
    d = d + B(i) * 2^(lsb - i);   
  end
  
end  
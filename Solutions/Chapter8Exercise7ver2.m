% Function [IEEE] = myDec2IEEE (d)

function [IEEE] = Chapter8Exercise7ver2 (d)
% Objective: Convert a number from decimal to IEEE754 standard binary
% using built-in functions.
% Input:
%   d - 1x1 double.
% Output:
%   IEEE - 1x32 integer array - 32-bit floating point IEEE754 binary representation.
% Author: Chris B. Kirov
% Date: 11.09.2017  
    
  IEEE = dec2bin( typecast( single(d), 'uint32' ), 32 ); 
  
end 
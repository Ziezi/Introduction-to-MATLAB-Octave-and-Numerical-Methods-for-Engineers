% Function [d] = myIEEE2Dec (IEEE)

function [d] = Chapter8Exercise6 (IEEE)
% Objective: Convert a IEEE754 floating point to decimal.
% Input:
%   IEEE - 1x32 integer array - 32-bit floating point in IEEE754 standard.
% Ouptut:
%   d - 1x1 double.
% Complexity: O(n).
% Author: Chris B. Kirov
% Date: 10.09.2017      

  bias = 127;
  s = IEEE(1);                                                       % get sign bit;
  e = Chapter8Exercise1(IEEE(2 : 9));             % get characteristic - 8 bit; myBin2Dec()
  f = getFraction(IEEE(10 : 32));                       % get fraction - last 23 bits.
  
  sign = (-1)^(s);
  exponent = 2^(e - bias);
  fraction = f + 1; 
  
  d =  sign * exponent * fraction;
  
end  

function [f] = getFraction (B)
% Objective: sum the fraction bits of IEEE754
% where coefficients the bits in B and powers the access indexes. 
% Input:
%   B - 1x23 integer array - fraction bits of IEEE754 standard.
% Output:
%   f - 1x1 integer - sum of negative powers of 2.
% Complexity: O(n).

  len = numel(B);
  f = 0;                    
  
  for i = 1 : len
    f = f + B(i) * (1 / 2^(i));  
  end  
  
end  

% Test binary strings
% 1 10000 100 100 00000 00000 00000 00000

% set format to: format shortEng 
% 1 10001 010 000 01010 00010 00101 11000

% 
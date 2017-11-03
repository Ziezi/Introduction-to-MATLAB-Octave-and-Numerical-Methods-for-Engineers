% Function [IEEE] = myDec2IEEE (d)

function [IEEE] = Chapter8Exercise7 (d)
% Objective: Construct a IEEE754 binary representation from number in base10
% using custom functions and the standard specifications.
% Input:
%   d - 1x1 double.
% Output:
%   IEEE - 1x32 integer array - 32-bit floating point IEEE754 binary representation.
% Author: Chris B. Kirov
% Date: 11.09.2017    
 
  s = getSign(d);                    
  
  [e, f] = getCharacteristic(d);
  
  binaryE = binStr2binArr(dec2bin(e));              % convert to binary integer array.
  
  if numel(binaryE) < 8                                         % pad with 0's in front.
    binaryE = [zeros(1, 8 - numel(binaryE)), binaryE];
  end
  
  binaryF = expandFractionToBinary(f);
  
  IEEE = [s , binaryE, binaryF]; 
end

function [B] = binStr2binArr (s)
% Objective: Convert character array to integer array.  
% Input:
%   s - 1xN character string.
% Output:
%   B - 1xN - binary integer array.
% Complexity: O(n).
  
  len = numel(s);
  B = zeros(1, len);

  for i = 1 : len
    B(i) = s(i) - '0';  
  end  
   
end  

function [B] = expandFractionToBinary(f)
% Objective: Approximate f as a sum of negative powers of 2.
% i.e. find the 23-bit fractional part of IEEE754 standard.
% Input:
%   f -  fractional part of decimal number in base10.
% Output:
%   B - 1x23 integer array which containing the 23-bits 
%   of the fractional part of IEEE754 standard.
% Complexity: O(n).  
  
  singlePrecision = 23;                                         % number of bits.
  B = zeros(1, singlePrecision);                          % binary string to store fraction of IEEE754.
  i = 1;                                                                     % exponent of 2; 
  
  c = 1;                                                                    % sign of term in the sum.
  
  if f < 0                            
    c = -1;                                                                
  end   
  
  while (f ~= 0) && (i <= singlePrecision)
    
    ith =  1 / (2^(i));
    
    if ith <= abs(f)
      f = f - (ith * c); 
      B(i) = 1;                                                           % include coefficient in the sum.
    end  
    % disp( sprintf('i = %d, ith = %d, f = %d, B(i) = %d', i, ith ,f, B(i) ) )
   
    i = i + 1;
  end
  
  if (B(23) == 0) && (i >= 23)                           % 2's complement?
    B(23) = 1;  
  else
    B(23) = 0;
  end  
  
end  

function [p, f] = getCharacteristic (d)
% Objective: Calculate exponent and fractional part of IEEE754
% standard from a double - d in base10.  
% Input:
%   d - 1x1 double - number is base10.
% Output:
%   p - 1x1 integer - exponent. 
%   f - fraction in base10.
% Complexity: O(n)

  % write d in base-2 scientific  notation 
  % i.e. factor it into number in the range [1, 2] and a power of 2.
  bias = 127;
  e = 0;
  f = 0;
  
  c = 1;
  
  if abs(d) >= 1 d <= 0                                           % flip sign of power
    c = -1;    
  end   
  
  while ~(abs(f) >= 1 && abs(f) <= 2)   
    
    f = d / (2^(-e * c));

    e = e + 1;   
  end  
  
  e = e - 1;                                                              % last check is done after incrementation.
  
  p = bias - e * c;
 
  if d < 1  
    f = f - 1 * c;
  else
    f = f - 1;
  end  
  
end  

function [s] = getSign (d)  
% Input:
%   d -1x1 double  - number in base10.
% Output:
%   s -  sign bit for its IEEE754 representation.

  if d >= 0 
    s = 0;  
  else  
    s = 1;
  end  
  
end  
% Function [B] = myDec2Bin(d)

function [B] = Chapter8Exercise2 (d)
% Objective: Convert a number from decimal to binary representation.  
% Input:
%   d - 1x1 positive integer.
% Output:
%   B - 1xN integer array - binary representation of d. (little endian)
% Complexity: O(n). 
% Author: Chris B. Kirov
% Date: 07.09.2017      

  if d == 0                                                               % The trivial case where d = 0, return: 0.
    B = 0;
    return   
  end  
  
  bitsNumber = floor(log2(d)) + 1;                    % Bits required to store the value of d. 
  
  B = zeros(1, bitsNumber);                                % allocate space for the binary array.
  i = bitsNumber;                                                   % Insert bits in reverse order.
  
  while d > 0                                                          % (Int) divide and store remainders as bits. 
    
    B(i) = rem(d, 2);
    
    d = idivide(d, 2);

    i = i - 1;    
    
  end  
  
end  
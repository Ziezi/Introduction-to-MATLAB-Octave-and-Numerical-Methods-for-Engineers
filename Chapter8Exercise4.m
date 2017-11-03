% Function [b] = myBinAdder (b1, b2)

function [B] = Chapter8Exercise4 (B1, B2)
% Objective: Perform addition between binary numbers.  
% Input:
%   B1 - 1xN, integer arrays - binary numbers (big-endian). 
%   B2 - 1xM, integer arrays - binary numbers (big-endian).
% Output:
%   B -  1xM (+ 1) integer array -  B1 + B2 (big-endian) .
% Complexity: O(n).
% Author: Chris B. Kirov
% Date: 07.09.2017      

  B1 = fliplr(B1);                                                  % convert to little-endian.
  B2 = fliplr(B2);
  
  len1 = numel(B1);                                              
  len2 = numel(B2);
  
  if len1 < len2                                                       % extend array to match size. 
    B1 = [B1, zeros(1, len2 - len1)];   
  else
    B2 = [B2, zeros(1, len1 - len2)];  
  end 
  
  len = numel(B1);                                                % unify length.
  B = zeros(1, len + 1);                                         % allocate space for result.
  carry = 0;
  
  for i = 1 : len
    
    sum = xor(B1(i), B2(i), carry);                       % if only one of the 3 bits is:1->sum:1 .
    
    B(i) = sum + B(i);
                                                                                % if onle one pair of 2 bits is:1->carry:1.
    carry = ( B1(i) & B2(i) ) | ( B1(i) & carry ) | ( B2(i) & carry );
    
  end  
  
  if carry == 1                                                        % overflow.
    B(len + 1) = 1; 
  else   
    B = B(1 : len);                                                  % remove last element.
  end  
  
    B = fliplr(B);                                                    % convert to big-endian.
    
end  
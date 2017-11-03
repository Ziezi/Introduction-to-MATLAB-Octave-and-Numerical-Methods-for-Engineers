% Function [A] = mySpiralOnes(n)

function [A] = Chapter6Exercise10(n)
% Objective: Construct NxN matrix of 0's and 1's in spiral pattern using iteration.  
% Input:
%   n 1x1 integer - size of square matrix.
% Output:
%   A - NxN integer matrix of clockwise outward spiral of 1's.
% Author: Chris B. Kirov
% Date: 02.09.2017    
    
  A = zeros(n, n);                                                   % create a NxN matrix
  siz = size(A, 1);
    
  i = ceil(n / 2);                                                      % find indexes of center
  j = i;
    
  if n == 3 
    i = 1; 
    j = 2;  
  end  
    
  if  n == 4
    i = 2;
    j = 3;  
  end  
       
  len = 0;                                                                 % initial length
    
  while true
      
    A(i, j : j + len) = 1;                                           % right
    len = len + 1;                                                     % update length
    j = j + len;                                                          % update index 
        
    if len >= siz                                                       % check end condition
      return
    end    
          
    A(i : i + len, j) = 1;                                           % down 
    len = len + 1;  
    i = i + len;
        
    if len >= siz
      return
    end    
        
    A(i, (j - len) : j) = 1;                                         % left 
    len = len + 1;  
    j = j - len;
        
    if len >= siz || j < 1
      return
    end    
          
    A((i - len) : i, j) = 1;                                         % up      
    len = len + 1; 
    i = i - len;
        
    if len >= siz
      return
    end   
        
  end   
  
end   
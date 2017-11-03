% Function [A] = mySpiralOnes(n)

function [A] = Chapter6Exercise9(n)
% Objective: Construct NxN matrix of 0's and 1's in spiral pattern using recursion.  
% Input:
%   n 1x1 integer - size of square matrix.
% Output:
%   A - NxN integer matrix of clockwise outward spiral of 1's.
% Author: Chris B. Kirov
% Date: 03.09.2017        
  A = zeros(n, n);                                                   % create a NxN matrix of zeroes
    
  i = ceil(n / 2);                                                      % find indexes of center
  j = i;
    
  if n == 3                                                               % special case
    i = 1; 
    j = 2;  
  end  
    
  if  n == 4                                                              % special case
    i = 2; 
    j = 3;  
  end  
    
  len = 0;                                                                % initial length 
    
  A = mySpiralOnes(A, i, j, len, true);  
      
end  

function [A] = mySpiralOnes(A, rBeg, cBeg, len, dir)
% Objcetive: build a spiral matrix 
% through successivelly growing and direction-changing vector of 1's.  
% Input:
%   A -  NxN integer matrix.
%   rBeg - 1x1 integer - row index.
%   cBeg - 1x1 integer - column index.
%   len - 1x1 integer - length of vector os 1's.
%   direction - bool value - direction of vector - to right and to bottom: true.
% Output:
%   A - spiral matrix.
  
  if len >= size(A, 1) || cBeg < 1
    return  
  else
  
    if mod(len,2)==0                                              % all horizontal lengths are even
          
      if dir == true                                                    % right
        A(rBeg, cBeg : cBeg + len) = 1;          
        cBeg = cBeg + len + 1;               
      else                                                                   % left  
        A(rBeg, (cBeg - len) : cBeg) = 1;   
        cBeg = cBeg - len - 1;
      end
           
    else                                                                     % all vertical length are odd
               
      if dir == true                                                    % down  
        A(rBeg : rBeg + len, cBeg) = 1;    
        rBeg = rBeg + len + 1;  
      else                                                                   % up     
         A((rBeg - len) : rBeg, cBeg) = 1;   
         rBeg = rBeg - len - 1;
      end
            
      dir = ~dir;                                                        % alternate direction on every second call
    end 
           
    A = mySpiralOnes(A, rBeg, cBeg, len + 1, dir); % update length   
  end  

end  
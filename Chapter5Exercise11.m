# Functrion [fibPrimes] = myFibPrimes(N)
 
function [fibPrimes] = Chapter5Exercise11(N)
% Objective: Find first N Fibonacci that are also Primes.
% Input:
%   N - 1x1 integer - number of fib - primes.
% Output: 
%   primes - 1xN integer array containing the first N fib-primes.
% Complexity: O(n^Very Slow).
% Author: Chris B. Kirov
% Date: 30.08.2017      
  
  primes(1) = 2;                                                     % first prime
  i = 3;                                                                     % numbers from i and on to be tested 
    
  fibPrimes = [];
    
  while true
   
    test = i * ones(1, length(primes));                  % 1 x N array of i's, N - current size of: primes
         
    % element-by-element modulo division 
    remainder = test - primes .* floor(test ./ primes);
        
    isNotPrime = any((remainder == 0));           % if there is a 0 in r, i is not prime.
        
    
    if (!isNotPrime)                                                % if i is prime, append it to the array of primes
      primes(end + 1) = i;
            
      if (isFib(i))                                                      % if current prime is also Fibonacci, store it 
              
        fibPrimes(end + 1) = i;   
             
        if length(fibPrimes) >= N
           break  
        end 
                
      end 
            
    end 
        
   i =  i + 1;                                                             % increment, to check next number
  end 
    
end  

function [bool] = isFib(i)
% Objective: Uses Gessel Test to find if i is Fibonacci number. 
% Input: 
%   i - 1x1 integer.
% Output: 
%   bool - true if i is Fibonacci, false otherwise.

  a = (5 * (i^2)) - 4;
  b = (5 * (i^2)) + 4;  
    
  if (isPerfectSquare(a) || isPerfectSquare(b))
    bool = true;  
  else  
    bool = false;
  end 
    
end  

function [bool] = isPerfectSquare(i)
% Input: 
%   i - 1x1 integer.
% Output: 
%   bool - true if i is perfect square, false otherwise.  
     
  root = floor(sqrt(i));
    
  if (i == (root * root))
    bool = true;    
  else
    bool = false;
  end 
    
end   
 

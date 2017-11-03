% Function [primes] = myPrimes(N)

function [primes] = Chapter5Exercise10(N)
% Objective: Find first N primes by trial division.   
% Input:
%   N - 1x1 integer - number of primes.
% Output: 
%   primes - 1xN integer array containing the first N primes.
% Author: Chris B. Kirov
% Date: 30.08.2017      
   
  primes(1) = 2;                                                     % first prime
  i = 3;                                                                     % numbers from i and on to be tested 
    
  while length(primes) <= N
      
    test = i * ones( 1, length(primes) );                % 1 x N array of i's, N - current size of: primes
         
    % element-by-element modulo division 
    remainder = test - primes .* floor(test ./ primes);
        
        
    isNotPrime = any( (remainder == 0) );         % if there is a 0 in r, i is not prime.
        
        
    if (~isNotPrime)                                               % if i is prime, append it to the array of primes
      primes(end + 1) = i;  
    end  
        
     i = i  + 1;                                                           % increment, to check next number
         
  end 
  
end 
  
  
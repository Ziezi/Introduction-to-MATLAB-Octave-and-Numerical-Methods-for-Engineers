% Function [change] = myChange(cost, paid)

function [change] = Chapter6Exercise5 (cost, paid)
% Objective: Express amount of money in terms of the values
% in dollar denominations: banknotes: 100, 50, 20, 10, 5, 1; coins: 0.25, 0.10, 0.05, 0.01.
% Input:
%   cost - 1x1 double - cost of product.
%   paid - 1x1 double - actual sum of money given.
% Output:
%   change - 1xN array of doubles - change (cost - paid) quantized in dollar denominations.
% Author: Chris B. Kirov
% Date: 01.09.2017    
    
  quanta = [ 100, 50, 20, 10, 5, 1, 0.25, 0.10, 0.05, 0.01 ];  
  
  while abs(cost - paid) > 0.001
      
   for i = 1 : length(quanta)                                   % succesively subtract the largest possible.
         
     if (paid - quanta(i)) >= cost - 0.01 
             
       paid = paid - quanta(i); 
       change(end + 1) = quanta(i);      
       break;
       
     end  
           
   end   
        
  end
  
  change = change(:);                                             % convert to column vector
  
end  
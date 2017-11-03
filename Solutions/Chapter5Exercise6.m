% Function [years] = mySavingPlan(P0, i, goal)

function [years] = Chapter5Exercise6(P0, i, goal)
% Objective: Years needed to achieve final balance based on initial balance and interest rate.   
% Input:
%   P0 - 1x1 double - initial balance.
%   i - 1x1 double - interest rate. 
%   goal - 1x1 double - final balance. 
% Output:
%   years - 1x1 double - years needed to achieve final balance from initial balance and interest rate, i.
% Author: Chris B. Kirov
% Date: 29.08.2017     
    
    years = 0;
    
    while P0 <= goal
      
        P0 = P0 + P0 * i;  
        
        years = years + 1;
        
    end
    
end 
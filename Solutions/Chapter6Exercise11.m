
function [res] = Chapter6Exercise11(n)
% Objective: Demonstrate infinite recursion and reaching max depth error message.
% Input:
%   n - 1x1 integer.
% Output:
%   res - unused.
% Author: Chris B. Kirov
% Date: 03.09.2017      

    if n < 0
        return
    else 
        Chapter6Exercise11(n);   
    end    
end
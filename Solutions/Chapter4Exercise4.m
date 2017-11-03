% Function [out] = myMakeSize10(x)

function [out] = Chapter4Exercise4(x)
% Objective: Modify an array to specific length, padded with 0's at end / trimmed if necessay.
% Input:
%   x - 1xN array of doubles.
% Output: 
%   out - 1x10 array of doubles,  padded with 0's at end / trimmed if necessay.
% Author: Chris B. Kirov
% Date: 29.08.2017       
    
    len = numel(x);
   
    if len >= 10
        out = [x(1) : x(10)];
    else if len < 10
        out = horzcat(x, zeros(1, 10 - len));    
    end  
    
end  
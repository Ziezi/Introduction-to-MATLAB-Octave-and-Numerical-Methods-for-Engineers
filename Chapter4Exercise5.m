% Function [out] = myMakeSize(10)

function [out] = Chapter4Exercise5(x)
% Objective: Modify an array to specific length, padded with 0's at end / trimmed if necessay. No if else statements.
% Input:
%   x - 1xN array of doubles.
% Output: 
%   out - 1x10 array of doubles,  padded with 0's at end / trimmed if necessay.
% Author: Chris B. Kirov
% Date: 29.08.2017       

    i = 1 : numel(x);
    out = x(i <= 10);
    out = [ out, zeros( 1, 10 - numel(out) ) ]; 
    
end  
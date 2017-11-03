% Function [boundedA] = myBoundingArray(A, top, bottom)

function [boundedA] = Chapter3Exercise14(A, top, bottom)
% Objective: Modify the values of an array such that they satisfy: min < val < max. 
% Input:     
%   A - 1xN array of doubles.
%   top - 1x1 double - upper limit.
%   bottom - 1x1 double - lower limit.
% Output:     
%   boundedA - 1xN array of doubles with values bounded by top and bottom limits.
% Author: Chris B. Kirov
% Date: 26.08.2017    

  boundedA = A;
  boundedA(boundedA > top) = top;                   % replace values > top with top.
  boundedA(boundedA < bottom) = bottom;      % replace values < bottom with bottom.
end  

 
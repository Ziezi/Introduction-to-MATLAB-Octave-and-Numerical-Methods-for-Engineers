% Function: [A] = myDonutArea(r1, r2)

function [A] = Chapter3Exercise12(r1, r2)
% Objective: Calculate the area of a donut.  
% Input:  
%   r1, r2 - 1xN and 1xM arrays of doubles, where all M > N.
%   radiuses of  concentric circles.
% Output:
%   A - 1xN array of doubles - areas outside of inner circle and within outer.
% Author: Chris B. Kirov
% Date: 26.08.2017       
  
  assert(r2 > r1, 'Ch3Ex12::Invalid arguments::r2 < r1!');
  
  a1 = circleArea(r1);
  a2 = circleArea(r2);
    
  A = a2 - a1;
end 

function [A] = circleArea(r)
% Input:  
%   r - 1xN array of doubles: radius of circles.
% Output:
%   A - 1XN array of doubles: areas of circles with radiuses in r.

  A = pi * (r.^2);
end   


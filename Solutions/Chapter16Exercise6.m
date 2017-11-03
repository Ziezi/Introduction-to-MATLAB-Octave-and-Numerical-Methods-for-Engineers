% Function [x] = myPipeBuilder (C_ocean, C_land, L, H)

function [min] = Chapter16Exercise6 (C_ocean, C_land, L, H)
% Objective: Minimize the cost of a pipeline (in terms of the value x).
% Input:
%   C_ocean - positive scalar - cost of pipe per unit length in the sea.
%   C_land - positive scalar - cost of pipe per unit length on the land.
%   L - positive scalar - horizontal distance between beginning and end.
%   H - positive scalar - vertical distance between beginning and end.
% Output:
%   x - horizontal offset at which the two pipes connect.
% Author: Chris B. Kirov
% Date: 04.10.2017

  p1 = @(x) sqrt(H.^2 + x.^2);                           % length of ocean pipe.
  p2 = @(x) L - x;                                                 % length of land pipe.
  
  total_cost = @(x) p1(x) .* C_ocean + p2(x) .* C_land;% total cost of the whole pipe.      
  error_metric = @(a, b) total_cost(a) - total_cost(b);   % approximation error.  
  
  tolerance = 1e-6;                                                % criterion for successful approximation.                                           
  limit = ceil( log2(L / tolerance) );                   % iteration limit.
  i = 1;                                                                    % iteration counter.
  a = 0;                                                                    % interval lower bound.
  b = L;                                                                   % interval upper bound.

  while i < limit                                                    % search for minimum of: total_cost.
    
    m = (a + b) ./ 2;                                                 % current minimum.
    
    if abs( error_metric(a, b) ) < tolerance          % |f(a) - f(b)| < tol.
      min = m;
      return;
    elseif error_metric(a, b) < 0                           % f(a) < f(b).
      b = m;
    else                                                                     % f(a) > f(b)
      a = m; 
    end
    
    i = i + 1;
  end    
   
end  
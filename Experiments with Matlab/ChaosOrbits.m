% Function [X] = ChaosOrbits (f, seed, c, n)

function [X] = ChaosOrbits (f, seed, c, n)
% Objective: 
%   Generate orbits for CobWeb Diagram: a set of data points to be connected
%   as a sequence of vertical and horizontal lines.
%   f - function handle defining the iterative mapping.
%   seed - 1x1 double - initial value for x.
%   c - 1x1 double - constant coefficient.
%   n - 1x1 double  - number of iterations.
% Output:
%   X - 2xN - First point ( x0, f( x0 ) ), followed by n iterations of:   ( x0, f(x0) ); ( f(x0), f(x0) ); ( f(x0), f( f (x0) ) ); 
% Author: Chris B. Kirov
% Date: 20.11.2017

  len  = 2 * n + 1;
  X = NaN(len , 2);
  
  X(1, :) = [seed, 0];                                             % initial point
  
  for i = 2 : 2 : n + 1
    
     f_x0 = f(seed, c);                                             % calculate the value of the map.
                          
     X(i, :) = [ seed, f_x0 ];                                   % point on curve.
     X(i + 1, :) = [ f_x0, f_x0 ];                            % point on diagonal: horizonal line with previous. 
     
     seed = f_x0;                                                     % update seed (or x).
     
     %X(i + 2, :) = [ f_x0, f(seed, c) ];                    % point on curve: vertical line with previous.
      
  end    

end  
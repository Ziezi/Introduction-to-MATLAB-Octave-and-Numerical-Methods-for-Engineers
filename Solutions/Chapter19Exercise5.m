% Function [T, S] = myRK4(dS, tSpan, S)

function [T, S] = Chapter19Exercise5 (dS, tSpan, S0)
% Objective: Implement fourth order Runge-Kutta method for ODE integration.
% Input: 
%   dS -  fandle to a function, F(t, S(t)), describing the change in 1^{st} order ODE.
%   tSpan - 1xN row vector - time interval (of integration).
%   S0 - 1x1 scalar - initial condition of the system.
% Output:
%   T - 1xN-1 column vector - T(i) = tSpan(i).
%   S - 1xN-1 column vector - S(i) is the change at T(i).
% Author: Chris B. Kirov
% Date: 02.11.2017
  
  len = length(tSpan) - 1;
  
  if len < 2
    error('Ch19Ex5::Invalid Argument::tSpan!')    
  end    

  h = ( tSpan(end) - tSpan(1) ) / len;                                    
  S = NaN(len + 1, 1);
  S(1) = S0;
  
  for i = 1 : len
    k1 = dS( tSpan(i), S(i) );                                  % change at beginnig of the interval.
    k2 = dS( tSpan(i) + 0.5 * h, S(i) + 0.5 * h * k1 );  % change of (change at beginnig of the interval) at midpoint of the interval.
    k3 = dS( tSpan(i) + 0.5 * h, S(i) + 0.5 * h * k2 );   % change of (change of (change at beginnig of the interval) at midpoint of the interval) at midpoint of the interval.
    k4 = dS ( tSpan(i) + h, S(i) + h * k3);            % change of (change of (change of (change at beginnig of the interval) at midpoint of the interval) at midpoint of the interval) at the end of the interval.
    
    S(i + 1) = S(i) + h/6 * (k1 + 2 * k2 + 2 * k3 + k4);  
  end
   
   T = tSpan';
end 

 

  
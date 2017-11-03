% Function [T, S] = myForwardEuler (dS, tSpan, S0)

function [T, S] = Chapter19Exercise4(dS, tSpan, S0)
% Objective:  Implement Forward Euler method for ODE integration.
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
    error('Ch19Ex4::Invalid Argument::tSpan!')    
  end    

  h = ( tSpan(end) - tSpan(1) ) / len;                                    
  S = NaN(len + 1, 1);
  S(1) = S0;

  for i = 1 : len
    S(i + 1) = S(i) +  h * dS( tSpan(i), S(i) );
  end
  
  T = tSpan';
  
end  
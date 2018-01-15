% Function: [X] = ChaoitcBehaviour (f, seed, c, n)

function [X] =  ChaoticBehaviour (f, seed, c, n)
% Objective:
%   Use simpe 1D iterative mapping
%   to generate data for bifurcation diagram.
% Input:
%   f - function handle defining the iterative mapping.
%   seed - 1x1 double - initial value for x.
%   c - 1x1 double - additive constant.
%   n - 1x1 double  - number of iterations.
% Output:
%   X - 1xN - X(end + 1) = IterativeMapping( X(end) ).
% Author: Chris B. Kirov
% Date: 20.11.2017

  X = NaN(1, n);
  
  for i = 1 : n
    
    X(i) = f(seed, c);
    seed = X(i);
      
  end      
  
end  
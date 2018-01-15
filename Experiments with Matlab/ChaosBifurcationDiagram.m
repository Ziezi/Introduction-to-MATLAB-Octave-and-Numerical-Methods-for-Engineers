% Script applying [X] = ChaoitcBehaviour (f, seed, c, n)
% to generate data for Bifurcation diagram.
% Author: Chris B. Kirov
% Date: 20.11.2017
clc; clear; close all;

% Simple functions used as 1D iterative mapping onto itself.
maps  = { @(x, c) x.^2 + c; @(x, c) sin(pi .* x) + c;  @(x, c) c .* (1 - 2 .*  tripuls(x - 0,5)  ) };                                         
% pkg load signal % for the function triangular pulse; which is non-monotonic (non-smooth).

seed = 0;                                                                % Initial value of x.
c = linspace(-2.00, 0.25, 100);                           % Constant coefficient of the mapping.
iterations = 100;                                                   % Number of times result is fed back as input argument.

X = NaN(c, iterations);                                       % Allocate memory for the generated points.

for j = 1 : numel(maps)
  
  for i = 1 : numel(c)
    X(i, :) =  ChaoticBehaviour( maps{j}, seed, c(i), iterations );
  end  
 
  subplot(3, 1, j)
  plot(c, X)                                                               % Plot all X's for given c.

  xlabel('c');
  ylabel('x');
  axis tight

  title( [ 'Bifurcation Diagram of: ', func2str( maps{j} ) ] )
  
end
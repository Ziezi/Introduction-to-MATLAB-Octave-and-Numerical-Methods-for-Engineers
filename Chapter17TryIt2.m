% Script showing the relation between grid spacing and 
% the error of Finite Difference Function Derivatives Approximation.
% Author: Chris B. Kirov
% Date: 05.10.2017  
clc
clear
close all

h = 1;                                                                      % initial spacing.
limit = 20;                                                              % iteration limit.

for i = 1 : limit
  
  h = h/2;                                                                 % half on each iteration.
  step_size(i) = h;

  x = 0 : h : 2*pi;                                                   % define 1D grid.
  y = cos(x);                                                           % evaluate the function on the grid.

  forward_diff = diff(y) / h;                                  % calculate derivative approximation.
  
  x_diff = x(1 : end - 1);                                       % define 1D grid to match size of approximation.
  exact_solution = -sin(x_diff);  
  
  max_error(i) = max( abs(exact_solution - forward_diff) );
end

loglog(step_size, max_error, 'LineWidth', 2, 'v') % display relation of grid spacing and max approximation error.
xlabel('Grid Spacing.')
ylabel('Absolute maximum approximation error.')
title('Finite Difference Approximation Accuracy.')
legend('Forward Difference formula is: O(h). Error is proportional to h^1.')
grid on 
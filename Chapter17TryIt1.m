% Script demonstrating derivative approximation by
% calculating function value differences on a 1D grid.
% Author: Chris B. Kirov
% Date: 05.10.2017  
clc
clear
close all

% approximation of the first derivative of cos(x).
h = 0.1 ;                                                                 % step size or spacing.
x = 0 : h : 2*pi;                                                     % define 1D grid.
y = cos(x);                                                             % evaluate function on grid.
forward_diff = diff(y) / h;                                    % compute approx. of first derivative of cos(x). size(forward_diff) < size(y) !                        
                                                                                       
x_diff = x(1 : end - 1);                                         % generate grid to match the approximation size.
exact_solution = -sin(x_diff);                             % exact solution.

hold on                                                                    % display approximation and exact solution.
plot(x_diff, forward_diff,  '--')
plot(x_diff, exact_solution)
xlabel('x')
ylabel('y')
legend('Approximation', 'Exact Solution')
title('Finite Difference Approximating of Function Derivative.')
hold off

max_error = max( abs( exact_solution - forward_diff ) ) % maximum discrepancy is proportional to the size of the grid spacing: h.
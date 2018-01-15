% Script applying [X] = ChaoticBehaviour (f, seed, c, n)
% to generate data for CobWeb diagram.
% Author: Chris B. Kirov
% Date: 20.11.2017
clc; clear; close all;

f  = @(x, c) x.^2 + c;                                           % A simple parabola used as 1D iterative mapping onto itself.

seed = 0;                                                                % Initial value of x.
c = [1/4, -3/4,  -13/16, -1.3, -1.4015, -1.8];     % Constant coefficient of the mapping.
n = 100;                                                                      % Number of times result is fed back as input argument
  
d = linspace(-2, 2, 100);  
                                                                                % Plot X data points relatively to the parabola.
for i = 1 : numel(c)
  
   X =ChaosOrbits( f, seed, c(i), n );
  
  subplot(2, 3, i);
  plot(d, f( d, c(i) ), 'r', d, d, 'b', X(:, 1), X(:, 2), 'g-', 'LineWidth', 1);            % draw CobWeb diagram.
  
  xlabel('x');
  ylabel('f(x)');
  
  axis( [-2 2 -2 2] );
  grid on;
  
  
  title( sprintf( 'Seed: %0.2f, c: %0.2f', seed, c(i) ) );
  
end
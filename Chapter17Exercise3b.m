% Script applying [dy, X] = myNumDiffwSmoothing (x, y, n).
% Author: Chris B. Kirov
% Date: 06.10.2017  
clc
clear
close all

x = linspace(0, 2*pi, 100);                                  % 1D grid.
y = sin(x) + randn(size(x)) / 100;                        % function evaluated on 1D grid + noise.

X = x(1 : end - 1);                                                % derivative approximation of unsmoothed data.
dy = ( y(2 : end) - y(1 : end - 1 ) ) / ( x(2) - x(1) );

n = 4;                                                                      % radius of points used for smoothing (averaging). 
[sdy, sX] = Chapter17Exercise3(x, y, n);          % derivative approximation of smoothed data.

df = @(x) cos(x);                                                  % exact derivative

subplot(2,1,1)                                                        % graph original function.
plot(x, y);
xlabel('x')
ylabel('y')
title('Noisy Sine function.')
grid on

subplot(2, 1, 2)                                                      % graph exact, unsmoothed and smoothed derivative.
plot(x, df(x), 'b', X, dy, 'r',  sX, sdy, 'g') 
xlabel('x')
ylabel('y')
title('Analytic, Unsmoothed and Smoothed Derivatives.')
grid on
legend('cos(x)', 'unsmoothed forward finite difference', 'smoothed forward finite difference', 'Location', 'north')

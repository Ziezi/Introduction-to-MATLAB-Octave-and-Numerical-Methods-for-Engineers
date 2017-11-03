% Script demonstrating the use of linear approximation (1st order or till 1st term)
% and its range of validity around the point of expansion.
% Author: Chris B. Kirov
% Date: 28.09.2017  

% The Linear Approximation of e^x around a = 0 is: 1 + x.
approx = @(x) 1 + x;
f = @(x) exp(x);

% Near the point of expansion (a = 0), f and its approximation have similar values.
f(0.01)
approx(0.01)
abs_error = abs(f(0.01) - approx(0.01))

% Away from the point of exansion the values differ significantly.
f(1)
approx(1)
abs_error = abs(f(1) - approx(1))
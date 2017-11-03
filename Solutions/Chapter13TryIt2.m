% Script demonstrating fitting a line 
% modeled by the estimation function y = alpha_1 * x + alpha_2
% to a data set using Least Squares Regression.
% Author: Chris B. Kirov
% Date: 21.09.2017  
clc
clear
close all

x = [0 : 0.01 : 1]';                                                % Generate x data set and store in column vector.

y = 1 + x + ( x .* rand( size(x) ) );                      % Generate y data set adding "randomness" between [0,1].
                                                                                % y = 1.5 * x + 1 ,is the real equation, i.e. we should expect: alpha(1) = 1.5 and alpha(2) = 1. 

% Build the MxN* matrix where each row is different data point and each column different basic function** evaluated at that data point.
% * - M is the size of the data sample, N is the number of basic functions.
% ** - in the linear combination forming the estimation function y.
A = [x, ones( size(x) )];                                        % ones is a column vector comes from x^0, the basis function associated with aplha(2).

alpha = inv(A' * A) * A' * y                                 % solve the system Ab = y.

approx = alpha(1) * x + alpha(2);                        % construct the model: y = alpha_1 * x + alpha_2.

hold on                                                                   % plot the initial data and the approximated line using the coefficients: alpha.
plot(x, approx, 'r')
plot(x, y, 'bo')
xlabel('x')
ylabel('y')
title('Least Squares Regression')
legend( sprintf('Estimation function: y = %d * x + %d', alpha(1), alpha(2) ), 'Data');
hold off

abs_path = 'D:\\Matlab Projects\\Intro to MATLAB - Octave\\';  % save plot in .pdf file.
filename = sprintf('%sChapter13TryIt2.pdf', abs_path);
print(filename)
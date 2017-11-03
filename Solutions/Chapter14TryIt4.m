% Script showing interpolation using Lagrange Polynomials.
% Author: Chris B. Kirov
% Date: 25.09.2017  
clc
clear
close all

X = [0,1,2];                                                           % Define data points used to specify the intervals of each of the basis polynomials.
Y = [1,3,2];

P1 = @(x) 0.5 * (x.^2 - 3*x + 2);                      % Lagrange Basis Polynomials P_i(x) = \prod_{ j = 1, j \neq i }^{ n }\frac{ x - x_j }{ x_i - x_j },
P2 = @(x) -x.^2 + 2 * x;                                     % for each of the above intervals.
P3 = @(x) 0.5 * (x.^2 - x);


x = -1 : 0.1 : 3;                                                      % plot the Lagrange Basis Polynomials.
subplot(2, 1, 1)
plot(x, P1(x), 'b', x, P2(x), 'r', x, P3(x), 'g') 
hold on
plot(X, ones(size(X)), 'ko', X, zeros(size(X)), 'ko')
grid on
title('Lagrange Basis Polynomials.');
xlabel('x')
ylabel('y')
legend(func2str(P1), func2str(P2), func2str(P3),  'location', 'south')

% Construct the Lagrange Polynomial as a linear combination between the Lagrange Basis Polynomials and coefficients the points Y.
L = @(x) Y(1) * P1(x) + Y(2) * P2(x) + Y(3) * P3(x);

subplot(2, 1, 2)                                                      % plot Lagrange Polynomial and the data it was created from.
plot(X, Y, 'ro', x, L(x), 'b')
grid on
title('Lagrange Polynomial')
xlabel('x')
ylabel('y')
legend('Data', 'Lagrange Polynomial', 'location', 'south')






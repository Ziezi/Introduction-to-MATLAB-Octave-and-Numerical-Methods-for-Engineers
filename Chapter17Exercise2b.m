% Script applying [dy, X] = myNumDiff(f, a, b, n, option) (same as in Exercise 1).
% Author: Chris B. Kirov
% Date: 05.10.2017  
clc
clear
close all

a = 0;
b = pi;
N = 100;
x = linspace(a, b, N);                                            % 1D grid of N points within [a, b].
f = @(x) sin( exp(x) );
df = @(x) cos( exp(x) ) .* exp(x);                      % exact derivative.

N = 10;                                                                  % derivative approximations.
[dy10, X10] = Chapter17Exercise1(f, a, b, N, 'central'); 
N = 20;
[dy20, X20] = Chapter17Exercise1(f, a, b, N, 'central');  
N = 100;
[dy100, X100] = Chapter17Exercise1(f, a, b, N, 'central');  

plot(x, df(x), X10, dy10, X20, dy20, X100, dy100)  
xlabel('x')
ylabel('y')
title('Numerical Derivative of f(x) = sin( e^{x} ).')
legend('Analytic', '10 points', '20 points' , '100 points')
 

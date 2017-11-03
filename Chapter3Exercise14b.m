% Script applying [boundedA] = myBoundingArray(A, top, bottom).
% Author: Chris B. Kirov
% Date: 26.08.2017    
clc
clear
close all

a = 0;                                                                      % grid range: [a,b].
b = 2*pi;
N = 100;                                                                 % grid size.
x = linspace(a, b, N);                                             % generate 1D grid equidistant points.

lower  = -0.5;                                                         % domain bounds.
upper = -lower;
f = sin(x);
bound_f =Chapter3Exercise14(f,upper,lower);% apply bounds on f.

plot(x, bound_f)                                                    % display sin after bounds applied.
axis([a, b, 2*lower, 2*upper])                             % specify intervals on axis x and y.
xlabel('x')
ylabel('y')
title( sprintf('sin(x) bounded by [%f.%f].', lower, upper) );
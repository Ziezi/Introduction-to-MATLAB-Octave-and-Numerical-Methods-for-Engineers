% Script showing the use of sprintf in title().
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear  
close all

iBeg = -5;
N = 50;
iEnd = 5;

x = linspace(iBeg, iEnd, N);

hold on
plot(x, x.^2, 'ko');
plot(x, x.^3, 'r*');
hold off

% Make title dynamic with the help of sprintf and format specifiers.
title( sprintf( 'Plot of various polynomials from %d to %d.', x(1), x(end) ) );
xlabel('x axis');
ylabel('y label');
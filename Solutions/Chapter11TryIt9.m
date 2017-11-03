% Script for generating various subplots
% and demonstrate the use of functions: subplot, plot, scatter, bar, loglog, semilogx, semilogy. 
% Author: Chris B. Kirov
% Date: 14.09.2017 
clc
clear 
close all

x = [0, 1, 2, 3, 4, 5];
y = [1, 2, 4, 8, 16, 2];

% 2 columns, 3 rows, current is number 1.
% Enumeration from left to right and top to bottom.
% 1 2 3
% 4 5 6
subplot(2, 3, 1)                                                      % create a plot consisted (6 subplots);
plot(x, y)
title('Plot')
xlabel('x')
ylabel('y')
grid on

subplot(2, 3, 2)
scatter(x, y)
title('Scatter')
xlabel('x')
ylabel('y')
grid on

subplot(2, 3, 3)
bar(x, y)
title('Bar')
xlabel('x')
ylabel('y')
grid on

subplot(2, 3, 4)
loglog(x, y)
title('LogLog')
xlabel('x')
ylabel('y')
grid on

subplot(2, 3, 5)
semilogx(x, y)
title('SemiLogx')
xlabel('x')
ylabel('y')
grid on

subplot(2, 3, 6)
semilogy(x, y)
title('SemiLogy')
xlabel('x')
ylabel('y')
grid on
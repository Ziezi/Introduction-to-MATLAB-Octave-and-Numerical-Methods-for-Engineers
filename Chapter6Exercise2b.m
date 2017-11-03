% Script for ploting various orders of Chebyshev Polynomials of first kind
% Author: Chris B. Kirov
% Date: 31.08.2017
clear
clc
close all

x = linspace(-1, 1, 100);                                       % Interval of evaluation

n = 5;                                                                      % Polynomial order

legendLabel = cell(1, n);                                     % Cell array holding labels of graphs
hold on

for order = 0 : n                                                    % Generate n different (order) Chebyshev Polynomials
  
  y = Chapter6Exercise2(order, x);
    
  plot(x, y);
    
  legendLabel{order + 1} =  sprintf('Polynomial Order : %d;', order);
    
end   

hold off
title('Chebyshev Polynomials of 1st kind.');
xlabel('x');
ylabel('y');
axis([-1 1 -2 2])
grid on
legend(legendLabel); 
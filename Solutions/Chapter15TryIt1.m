% Script producing a graph of the Taylor expansion (till 3rd term) of the function sin(x) between -pi and pi.
% Author: Chris B. Kirov
% Date: 28.09.2017  
clc
clear
close all

c = {'b', 'g', 'r', 'c'};                                                 % plot colours. 
x = linspace(-pi, pi, 200);                                    % data set.
y = zeros( size(x) );                                              % memory allocated for the approximation.

hold on
for n = 0 : 3                                                           % till 3rd term, i.e. 1st, 3rd, 5th and 7th order.
  
  y = y + ( (-1)^(n) * x.^(2 * n + 1) ) / factorial(2 * n + 1);       
  
  plot( x, y, c{ n +1 } )                                           % plot n-th term in c - colour.
end

plot(x, sin(x), 'k');                                                 % plot analytic.
grid on

title('Taylor Series Approximation of Various Orders.')
xlabel('x')
ylabel('y')
legend('First Order', 'Third Order', 'Fifth Order', 'Seventh Order', 'Analytic')
axis tight


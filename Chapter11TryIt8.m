% Script showing the use of axis() and grid.
% Author: Chris B. Kirov
% Date: 14.09.2017  
clc
clear all
close all

iBeg = -5; N = 100; iEnd = 5;
x = linspace(iBeg, iEnd, N);

hold on
plot(x, x.^2, 'k^');
plot(x, x.^3, 'rv');
hold off

title(sprintf('Plot of Various polynomials from %d to %d', x(1), x(end)));
xlabel('x axis')
ylabel('y axis')
legend('quadratic', 'cubic')
axis([-6 6 -10 10])                                                % specify axis intervals to be displayed.
grid on                                                                    % include additional lines (horizontal and vertical) through each displayed value on the axis.
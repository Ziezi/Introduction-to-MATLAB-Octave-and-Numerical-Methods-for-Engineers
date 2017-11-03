% Script showing the use of legend()
% Author: Chris B. Kirov
% Date: 14.09.2017  
clc
clear  
close all

iBeg = -5;
N = 20;
iEnd = 5;
x = linspace(iBeg, iEnd, N);

hold on
plot(x, x.^2, 'k^');
plot(x, x.^3, 'rv');
hold off

title(sprintf('Plot of Various polynomials from %d to %d', x(1), x(end)));
xlabel('x axis')
ylabel('y axis')
legend('quadratic', 'cubic')                                    % add text description in the same order of the plotted data. 
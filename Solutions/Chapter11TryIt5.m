% Script showing the use of graph labels and title.
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear  
close all

iBeg = -5;
iStep = 50;
iEnd = 5;

x = linspace(iBeg, iEnd, N);

hold on
plot(x, x.^2, 'ko');
plot(x, x.^3, 'r*');
hold off

title('Plot of various polynomials.');                  % add title to the plot.
xlabel('x axis');                                                      % add axis labels.
ylabel('y label');
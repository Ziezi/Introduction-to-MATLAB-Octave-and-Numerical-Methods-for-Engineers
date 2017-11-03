% Script showing plotting multiple data sets on same graph.
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear 
close all

iBeg = -5;
N = 50;
iEnd = 20;

x = linspace(iBeg, iEnd, N);


hold on                                                                    % subsequent plot commands  are displayed on a single graph.

plot(x, x.^2, 'ko');                                                  % display f(x) as black line with circles makrs.
plot(x, x.^3, 'r*');                                                  % display f(x) as red line with asrterisks makrs.

hold off                                                                  % (default) clear the graph and reset axis properties before each new plot command. 
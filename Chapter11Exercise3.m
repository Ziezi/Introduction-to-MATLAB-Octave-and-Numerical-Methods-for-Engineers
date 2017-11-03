% Script drawing two functions on same plot.
% Author: Chris B. Kirov
% Date: 16.09.2017 
clc
clear
close all

x = linspace(0, 5, 100);

y1 = 3 + exp(-x) .* sin(6 .* x);
y2 = 4 + exp(-x) .* cos(6 .* x);

fh = figure();

hold on
plot(x, y1, 'ro--');
plot(x, y2, 'bs-.');
hold off

xlabel('x');
ylabel('y');
title('Plotting two functions on same figure.');
l = legend('y1 = 3 + e^{-x}sin(6x)', 'y2 = 4 + e^{-x}cos(6x)');
set(l, 'location', 'north');

absolutepath = 'D:\Matlab Projects\Intro to MATLAB - Octave\';
filename = sprintf('%sChapter11Exercise3.pdf', absolutepath);
print(fh, filename);
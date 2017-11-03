% Script showing a generating of data and displaying it as a function graph.
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear  
close all

iBeg = -5;
N = 100;
iEnd = 5;

x = linspace(iBeg, iEnd, N);                                % generate N equidistant points in the interval [iBeg, iEnd]. 

plot(x, x.^2);                                                         % display f(x) = x^2 for the generated range.

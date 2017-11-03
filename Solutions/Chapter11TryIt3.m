% Script showing a function graph with additional paramaters 
% specifying line color and mark type.
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear all
close all

iBeg = -5;
iStep = 5;
iEnd = 100;

x = linspace(iBeg, iStep, iEnd);

plot(x, x.^2, 'g--');                                                % display the function as a green colour dashed line.

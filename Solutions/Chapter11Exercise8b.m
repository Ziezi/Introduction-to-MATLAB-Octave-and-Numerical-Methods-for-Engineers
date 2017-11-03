% Script testing myFunPlotter(f, x).
% Author: Chris B. Kirov
% Date: 16.09.2017  
clc
clear
close all

f = @(x) sqrt(x) + exp(sin(x));                            % define a function handler.

x = linspace(0, 2 * pi, 100);                                % generate a data set.

Chapter11Exercise8(f, x);                                   % plot f over x.
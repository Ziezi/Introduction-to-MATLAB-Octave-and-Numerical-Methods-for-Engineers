% Script applying [ ] = myInterpPlotter (x, y, X, option)
% Author: Chris B. Kirov
% Date: 27.09.2017  
clc
clear
close all

x = [0, 0.1, 0.15, 0.35, 0.6, 0.7, 0.95, 1];
y = [1, 0.8187, 0.7408, 0.4966, 0.3012, 0.2466, 0.1496, 0.1353];
X = linspace(0, 1, 100);

option = 'nearest';
subplot(3, 2, 1)
Chapter14Exercise7 (x, y, X, option)
subplot(3, 2, 2)
Chapter14Exercise7BuiltIn (x, y, X, option)

option = 'linear';
subplot(3, 2, 3)
Chapter14Exercise7 (x, y, X, option)
subplot(3, 2, 4)
Chapter14Exercise7BuiltIn (x, y, X, option)

option = 'spline';
subplot(3, 2, 5)
Chapter14Exercise7 (x, y, X, option)
subplot(3, 2, 6)
Chapter14Exercise7BuiltIn (x, y, X, option)
 
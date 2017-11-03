% Script showing the use of meshgrid.
% Author: Chris B. Kirov
% Date: 14.09.2017 
clc
clear
close all

x = [1, 2, 3, 4];
y = [3, 4, 5];

% Generate a 2D grid 
% by copying the row vector x numel(y) times 
% and copying the column vector y numel(x) times. 
[X, Y] = meshgrid(x, y)                                         
 
% Script applying [X] = myFixedPoints (f, g, tol, maxiter).
% Author: Chris B. Kirov
% Date: 03.10.2017
clc
clear
close all

f = @(x) x.^2;
g = @(x) 4;

approximationErrorTolerance = 1e-3;
iterationLimit = 10000;

Chapter16Exercise2 (f, g, approximationErrorTolerance, iterationLimit)
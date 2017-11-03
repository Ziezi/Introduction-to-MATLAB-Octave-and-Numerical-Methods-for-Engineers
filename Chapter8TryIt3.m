% Script demonstrating double precision floating point overflow and how MATLAB / Octave is handling it.
% Author: Chris B. Kirov
% Date: 11.09.2017    
clc
clear all
close all

format long

M = realmax('double')
overflow = M + eps(M)

% Max is practice representing numbers in the interval: max +/- eps(max) / 2
stillM = M + eps(M) / 3


% Script showing IEEE754 single precision floating point representation: n = (-1)^(s) * e^(1 - 127) * (f + 1).
% Author: Chris B. Kirov
% Date: 11.09.2017    
clc
clear all
close all

format long

s = 0;
bias = -127;

% Compute the base10 value for 0 11111110 11111111111111111111111 (IEEE754),
% largest 32-bit floating point number.
largest = (-1)^(s) * (2^(254 + bias)) * (sum((2.^[-1 : -1 : -23])) + 1)

% Compute the base10 value for 0 00000001 00000000000000000000001 (IEEE754),
% smallest 32-bit floating point number.
smallest = (-1)^(s) * (2^(1 + bias)) * ((2^(-23)) + 1)

% Verify with MATLAB / Octave
realmax('single')

realmin('single')


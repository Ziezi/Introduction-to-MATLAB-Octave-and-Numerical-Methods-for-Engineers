% Script demonstrating underflow of double precision floating point number and how MATLAB /Octave is handling it.
% Author: Chris B. Kirov
% Date: 11.09.2017    

% The smallest subnornal number is repesented by:
% s = 0
% e = 00000 00000 0
% f = 00000 00000 00000 00000 00000 00000 00000 00000 00000 00000 1
% Using n = (-1)^n * e^(1 - 1023) * (f + 1), in this special case: + 1 -> 0
% n = -1^0 * e^(1 - 1023) * (2^-52) = 2^-1074
clc
clear all
close all

m = 2^(-1074)

% Underflow
underflow = 2^(-1075)

% Converted to 0 and indistinguishable from the value 0.
underflow == 0
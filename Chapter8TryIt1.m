% Script demonstrating computer limited possibility of storing real numbers and 
% its dependance on the value of the represented number:
% the larger the number, the larger the gap (space between two
% consecutive representable values).
% Author: Chris B. Kirov
% Date: 11.09.2017    
clc
clear
close all

% get gap of number 1.000.000.000
gap = eps(1e9)

% Demonstrate that real numbers within the interval 1e9 +/- eps/2, 
% are represented in the computer's memory by the same number 1e9.
1e9 == (1e9 + (gap / 3) )
1e9 == (1e9 - (gap / 3) )




   
% Script comparing an approximated function value
% using up to 7th order Taylor expansion with exact value.
% Author: Chris B. Kirov
% Date: 28.09.2017  
clc
clear
close all

x = pi/2;
y = 0;

for n = 0 : 3
  
  y = y + ( (-1)^n * x.^(2 * n + 1) ) / factorial(2 * n + 1); 
  
end

format long

f = sin(pi/2)
y

abs_approx_error = abs(f - y)

% Script applying [I] = myNumInt(f, a, b, n, option) on few test cases.
% Author: Chris B. Kirov
% Date: 19.10.2017   
clc
clear
close all

f = @(x) x.^2;
assert( 0.62500 == Chapter18Exercise4(f, 0, 1, 3, 'rect'),  'Riemann Integral Error!' )

assert( 0.37500 == Chapter18Exercise4(f, 0, 1, 3, 'trap'), 'Trapezoidal Rule Error!' )
 
assert( 0.3333333333333333 == Chapter18Exercise4(f, 0, 1, 3, 'simp'), 'Simpson''s Rule Error!' )

format long
f = @(x) exp(x.^2);
Chapter18Exercise4(f, -1, 1, 101, 'simp')           % Does not pass the test cases?! 

Chapter18Exercise4(f, -1, 1, 10001, 'simp')       % Does not pass the test cases?! 

Chapter18Exercise4(f, -1, 1, 1000001, 'simp')  % Does not pass the test cases?! 

quad(f, -1, 1)
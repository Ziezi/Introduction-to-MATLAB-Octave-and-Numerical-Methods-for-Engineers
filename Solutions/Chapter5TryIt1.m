% Script for determining the number of additions in one processor clock cycle.
% Author: Chris B. Kirov
% Date: 29.08.2017  

N = 0;

tic
while toc <= 1
    N = N + 1;  
end  

N

% Result: N = 120127 - additions for 1 clock cycle.
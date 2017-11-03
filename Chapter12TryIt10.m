% Script showing a validation of the method for Solving a Linear System of Equations.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

A =  [1,2,3; 0,3,1; -1,14,7]                                  % create a system.

y = A * [1; 1; 1]                                                    % constuct a solution.

x = inv(A) * y                                                        % now check if result is [1; 1; 1]

x = A \ y                                                                 % from both functions.

A *  x                                                                      % to get y we multiply A by x from right.



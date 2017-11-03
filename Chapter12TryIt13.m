% Script demonstrating that a linear combination of solutions of Ax = y 
% and null space vectors of A are still solutions.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

A = [1,2,3,4,5,6; 2,3,4,5,6,7; 3,4,5,6,7,8]
y = [21; 27; 23]

x =[1, 1, 1, 1, 1, 1]'                                               % define a vector and verify that is a solution.
y = A*x                                                                    

x1 = [3, 0,  0, 0, 0, 3]'                                           % define different vector and verify that is a solution.
y == A*x1

x2 = pinv(A) * y                                                    %find a solution using pseudo inverse matrix.

N = null(A)                                                            % find nullspace vectors using function: null().
n1 = N(:, 1);
n2 = N(:, 2);
n3 = N(:, 3);
n4 = N(:, 4);

A * (x + 31*n1 + 202*n2 + 87*n3 + 42*n4)    % build another solution as a linear combination.
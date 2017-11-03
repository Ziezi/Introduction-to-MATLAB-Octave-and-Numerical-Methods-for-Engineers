% Script showing Method for finding Solutions of System of Linear Equations.
% In particular, the case of infinite numer of solutions.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

A = [1,2,3,0; 0,3,1,0;  -1, 14, 7, 0; 0,0,0,0];     % overdetemined system: equations > unknowns.
y =  A * [1; 1; 1; 0];                                             % constuct the solution as a linear combination of A.
det(A)                                                                     % A is not invertible, as det(A) = 0

x = pinv(A) * y                                                       % solve by multiplying by pseudo inverse matrix: ( A^{T} A )^{-1} A{^T}

A * x                                                                       % confirm result, i.e. Ax = y.
A * [0;0;0;1]                                                         % confrim that a vector belongs to the null space of A by showing that Av = 0.

coeff = 100;
A * (x + coeff * [0;0;0;1])                                 % any linear combination between the solution and vector from the null space is a solution.






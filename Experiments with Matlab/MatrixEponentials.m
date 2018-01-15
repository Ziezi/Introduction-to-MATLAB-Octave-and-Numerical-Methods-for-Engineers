% Script generating Pascal matrix (stored in a matrix S)
% as a product of the exponents of
% one sub - and one sup- diagonal matrix.
% Author: Chris B. Kirov
% Date: 27.11.2017
clc; clear; close all;

n = 6;                                                                      % Last line of Pascal Triangle.

v = [1 : n];

L = diag(v, -1);                                                      % create a sub-diagonal matrix from v.
U = diag(v, 1);                                                       % create a super-diagonal matrix from v.

S = expm(L) * expm(U)                                      % generate Pascal's matrix: binomial coefficients.


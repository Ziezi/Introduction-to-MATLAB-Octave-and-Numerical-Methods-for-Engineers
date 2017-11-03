% Script showing the use of determinants for finding if matrix is singular; inverse matrices.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

M = [ 0,2,1,3; 3,2,8,1; 1,0,0,3; 0,3,2,1 ]           % define a 4x4 matrix.

inv(M)                                                                    % compute the inverse of M.

P = [0,1,0; 0,0,0; 1,0,1 ]                                      % define a 3x3 matrix.

det(P)                                                                     % if det == 0, P - singular, P has no iverse.

inv(P)                                                                     % try to calculate inverse of P.


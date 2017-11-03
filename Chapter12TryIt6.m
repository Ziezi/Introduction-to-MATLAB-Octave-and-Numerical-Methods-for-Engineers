% Script showing det() and the effect of the identity matrix in multiplication.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

M = [ 0,2,1,3; 3,2,8,1; 1,0,0,3; 0,3,2,1 ]           % define a 4x4 matrix.

det(M)                                                                    % calculate determinant.

I = eye(4)                                                               % defina an indentity matrix.

M * I                                                                      % multiply matrix M by I.
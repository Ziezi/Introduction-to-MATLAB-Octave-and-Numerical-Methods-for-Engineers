% Script showing Method for finding Solutions of System of Linear Equations.
% In particular, the case of overdetermined system with existing solution.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

 A = [1,2,3; 0,3,1; -1,14,7; 1,1,1];                     % create a non square matrix  with equations > unknowns (over determined).
 
 y = A * [1;1;1]                                                     % we construct a result as linear combination of A
 
 x = A\y                                                                  % solve using left division.
 
 x = inv(A) * y                                                        % solving by multiplying with inverse does not work(matrix not square, inverse does not exist).
 
 
 
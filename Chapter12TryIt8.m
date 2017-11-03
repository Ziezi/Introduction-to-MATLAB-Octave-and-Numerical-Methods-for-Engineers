% Script showing Method for checking if a System of Linear Equations has a solution.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

A = [1,2,3; 0,3,1; 1,14,7]                                    % System in matrix form: Ax = y.
y = [1;2;3]

% Check whether: rank(A) == rank([A, y]).
if rank(A) < rank([A, y])
  
  disp( sprintf( 'rank(A)  = %d, rank([A, y]) = %d', rank(A), rank([A, y]) ) )    
  disp(sprintf('No solution exists for this system!'))
  
end
% y is linearly independent from A, thereby not in its range.
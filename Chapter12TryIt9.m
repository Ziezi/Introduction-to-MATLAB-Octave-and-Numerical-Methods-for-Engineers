% Script showing Method for finding Solutions of System of Linear Equations.
% In particular, the case of unique solution.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

A= [1,2,3; 0,3,1; -1,14,7]
y = [1; 2; 3]

rA = rank(A);
rAy = rank([A, y]);

% 1. Check: rank(A) == rank([A, y]) (y linearly dependent of A, thereby in its range., at least 1 solution.)
if rA == rAy
   disp( 'There is at least one solution!' )
else
  return
end  

% 2. Check: rank(A) == rows(A) (A square and invertible, A^{-1} unique, thereby x = A^{-1} y unique.)
nr = rows(A);

if nr == rA 
  disp('Matrix A square and invertible. There is a unique solution.')  
else
  return 
end

disp('x = A\y results in:\n')
x = A\ y                                                                  %  left division operator.

disp('x = inv(A) * y results in:\n')
x = inv(A) * y                                                        %  solve by multiplying by the inverse. If Ax = y, then x = A \ y = y A^(-1).



% Script applying [N, x] = myNumSols (A, b).
% Author: Chris B. Kirov
% Date: 20.09.2017  
clc
clear
close all

A = reshape(1 : 15, 3, 5);
b = [-5; -4 ; -3];
[N, x] = Chapter12Exercise8(A, b)

b = [-1.5; 7 ; 7];
[N, x] = Chapter12Exercise8(A, b)

A = 3 * eye(5);
b = [1; 2; 3; 4; 5];
[N, x] = Chapter12Exercise8(A, b)

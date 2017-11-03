% Script applying [M] = myMatMult(P,Q)
% Author: Chris B. Kirov
% Date: 29.08.2017 
clc
clear
close all

P = ones(3, 3);
M = Chapter5Exercise5(P, P)

P1 = [1, 2, 3, 4; 5, 6 ,7, 8; 9, 10, 11, 12];
Q = [1, 1, 1; 2, 2, 2; 3, 3, 3; 4, 4, 4];
M = Chapter5Exercise5(Q, P1)
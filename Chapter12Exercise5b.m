% Script applying [D] = myRecDec(M) and comparing it to the built-in: det().
% Author: Chris B. Kirov
% Date: 20.09.2017  
clc
clear
close all

n = 8;
A = rand(n)                                                             % generate random nxn matrix.

tic
builtInDet = det(A)        
toc

tic
implementedDet  = Chapter12Exercise5(A)
toc

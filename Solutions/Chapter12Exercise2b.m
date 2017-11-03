% Script applying myIsOrthogonal(v1, v2, tol).
% Author: Chris B. Kirov
% Date: 19.09.2017  
clc
clear
close all

% vectors "seen as" [1; 0] and [0; 1]
Chapter12Exercise2([1; 0.001], [0.001; 1], 0.01)   

Chapter12Exercise2([1; 0.001], [0.001; 1], 0.001)  

Chapter12Exercise2([1; 0.001], [1; 1], 0.01)  

Chapter12Exercise2([1; 1], [-1; 1],  1e-10)

Chapter12Exercise2([1, 0, 1, -1, 1, 1], [0, 1, 0, 1, 1, 0],  1e-10)



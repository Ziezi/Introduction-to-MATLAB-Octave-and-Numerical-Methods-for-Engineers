% Script demonstrating the equivalent use of 
% x = A \ y;
% x = pinv(A) * y;
% x = inv(A' * A) * A' * y;
% Author: Chris B. Kirov
% Date: 21.09.2017  
clc
clear
close all

A = [1, 2; 3,4; 5,6];
y = [4; 1; 2];

x = A \ y                                 

x = pinv(A) * y

x = inv(A' * A) * A' * y

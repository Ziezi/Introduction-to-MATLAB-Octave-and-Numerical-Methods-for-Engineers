% Script applying [An, Bn] = myFourierCoeff (f, n) on few test cases.
% Author: Chris B. Kirov
% Date: 20.10.2017   
clc
clear
close all

%f = @(x) sin( exp(x) ); 
% N = 2;                                                                  % a
% N = 20;                                                                % b

%f = @(x) mod(x, pi/2);
% N = 4;                                                                  % c
%N = 20;                                                                % d

f = @(x) x > -pi/2 & x < pi/2;
%N = 2;                                                                  % e
N = 20;                                                                  % f
Chapter18Exercise5a (f, N)

 


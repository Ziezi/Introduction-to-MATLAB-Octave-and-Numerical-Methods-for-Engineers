% Script for testing compexity of iterative vs recursive Fibonacci functions.
% Author: Chris B. Kirov
% Date: 31.08.2017  
clc
clear
close all

n = 25;

% Iterative Implementation
tic
Fi = Chapter6TryIt3(n);
tIter = toc;

% Recursive Implementation
tic
Fr = Chapter6TryIt2(n);
tRec = toc;

% Compare results
Fi
tIter

Fr
tRec



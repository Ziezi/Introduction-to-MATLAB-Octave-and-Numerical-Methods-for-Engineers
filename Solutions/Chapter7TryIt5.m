% Script comparing implemented vs built-in sum function using profiler.
% Author: Chris B. Kirov
% Date: 07.09.2017 
clc
clear
close all

% Start collecting function stats
profile on

% define number of iterations and size of random list.
N = 1000;
n = 10000;

% iterate
for i = 1 : N
  
  % create n random numbers.
  A = rand(1, n);
  
  S = 0;
  for j = 1 : n
    S = S + A(j);  
  end  
  
  % built in sum
  %S2 = sum(A);
end 

% Stop collecting function stats
profile off

profshow 

 
       

 
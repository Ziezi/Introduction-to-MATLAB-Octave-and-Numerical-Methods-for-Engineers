% Script testing execution time of function using predefined size of arrays (a)
% and expanding array on each iteration (b).
% Author: Chris B. Kirov
% Date: 07.09.2017      
clc
clear
close all

% for 100 is barely.
n = 100000

disp(sprintf('Using predefined array.'))
tic
Chapter7Exercise7a(n)
toc
% Elapsed time is 2.54556 seconds.


disp(sprintf('Epanding array on each iteration.'))
tic
Chapter7Exercise7b(n)
toc 
% Elapsed time is 21.9693 seconds.
% Script demonstrating the save and load functions; .mat files.
% Author: Chris B. Kirov
% Date: 13.09.2017    
clc
clear 
close all

x = 1;
y = 'string';
z = {1, 'string'};

% Saves all variables from the current scope in .mat file
save Chapter10TryIt1.mat

clc
clear all

% load Chapter10TryIt1.mat, will put x,y and z in current workspace.
load Chapter10TryIt1.mat

x
y
z
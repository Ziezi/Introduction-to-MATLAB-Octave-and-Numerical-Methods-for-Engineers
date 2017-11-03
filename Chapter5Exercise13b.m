% Script for applying [node] = myConnectivityMat2Struct(C, names).
% Author: Chris B. Kirov
% Date: 30.08.2017  
clc
clear
close all

% create a Square Connectivity Matrix.
C = [0, 1, 0, 1; 1, 0, 0 1; 0, 0, 0, 1; 1, 1, 1, 0]

% Create node Names.
names = {'Los Angeles', 'New York', 'Miami', 'Dallas'};

node = Chapter5Exercise13(C, names);            % Create a graph from Adjacency Matrix and Node Names.

for i = 1 : length(node)
    node(i)
end  
  



% Function [f] = myFlowCalculator(S, d)

function [f] = Chapter12Exercise9 (S, d)
% Objective: Determine power flow along a network edges, based on power generation and demand nodes.  
% Input:
%   S - 1x2 vector of doubles - power capacity of supply stations. 
%   d - 1x5 vector of doubles - power demand of recipient nodes.
% Output:
%   f - 1x7 vector of doubles - power flow along the network, satisfying power generation and demand.
% Author: Chris B. Kirov
% Date: 21.09.2017  

A = [0, 0,-1, 1, 0,-1, 0;                                         
         0, 0, 0, 0, 1, 0, -1;                                        % either write equation for each node (row) and its edges (elements in a row:0,1 (in),-1 (out)).
         0, 1, 0, 0, 0, 0, 0;                                          % or use graph theory notation to build adjacency matrix of directed graph.
         1,-1, 1, 0, 0, 0, 0;
         0, 0, 0, 0, 0, 1, 1;
         1, 0, 0, 0, 0, 0, 0;
         0, 0, 0, 1, 1, 0, 0];
         
b = [d, S];                                                              % use input conditions to build the r.h.s - b.                          
b = b';                                                                     % convert to column vector.

[N, f] = Chapter12Exercise8 (A, b);                  % solve a system of linear equations in matrix form: Af = b.
f = f';
end  
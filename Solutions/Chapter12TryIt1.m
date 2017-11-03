% Script showing the use of function norm().
% Author: Chris B. Kirov
% Date: 17.09.2017  
clc
clear
close all

u = [1, -5, 3, 2, 4];                                                % define a vector (a tuple) in R^{5}.

L1 = norm(u, 1)                                                    % calculate L1 - norm = Sum_{i = 1}^{5} u_{i}.

L2= norm(u, 2)                                                     % calculate L2 - norm = sqrt{ Sum_{i = 1}^{5} u_{i} }.

Linf = norm(u, inf)                                               % calculate Linf - norm = max( abs( u_{i} ) );

max_abs = max( abs(u) )                                      % compare to last value.


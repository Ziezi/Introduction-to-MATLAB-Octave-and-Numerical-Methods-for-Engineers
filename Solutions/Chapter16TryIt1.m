% Script demonstrating function root approximation using fzero().
% Author: Chris B. Kirov
% Date: 29.09.2017  
clc
clear
close all

f = @(x) cos(x) - x;                                              % define the function whose roots are to be found.

inflection = -2;                                                      % Define a possible inflection point, i.e point around which the function flips sign.
[r, fval, info, out] = fzero(f, inflection);              

if info ~= 1
  error('The root finding algorithm has not converged to a solution!')  
end  

out                                                                          % Display details about the algorithm.

format long                                                            % Display root approximations.
disp( sprintf('A roots apporixmation of: %s.\n: %f.', func2str(f), r) ) 

disp(sprintf('Confirm: F(%f) = %f.', r, f(r) ) )   % Check if f evaluates to zero.
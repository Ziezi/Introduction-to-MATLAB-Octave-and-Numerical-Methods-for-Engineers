% Script checking vector linear dependence.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

v = [1, 1, 0];
w = [1, 0 , 0];
u = [0, 0, 1];

m = [v; w; u];

if det(m) == 0
  disp(sprintf('The vectors are linearly dependent.'))  
else 
  disp(sprintf('The vectors are linearly independent.'))  
end 

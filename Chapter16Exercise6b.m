% Script for applying  [x] = myPipeBuilder (C_ocean, C_land, L, H); compared against built-in function.
% Author: Chris B. Kirov
% Date: 04.10.2017
clc
clear
close all

C_ocean = [20, 30, 30];
C_land = [10, 10, 10];
L = 100;
H = [50, 50, 20];
a = 0;
b = L;

for i = 1 : 3
  f = @(x) sqrt(H(i).^2 + x.^2) .* C_ocean(i) + (L - x) .* C_land(i);

  built_in = fminbnd(f, a, b)                                  % find minimum of f in [a, b].
 
  custom = Chapter16Exercise6(C_ocean(i), C_land(i), L, H(i))
end  
% Script showing how to find polynomials coefficients used in Cubic Spline Interpolation.
% Author: Chris B. Kirov
% Date: 26.09.2017  
clc
clear
close all

x = [0,1,2];                                                            % define end points that specify intervals for the polynomials.
y = [1,3,2];                                                            % 3 points imply 2 polynomials: S1 and S2.

xi = 1.5;                                                                 % interpolate yi for the following xi.

% Apply boundary conditions on polynomials to construct the matrix A.
A = [0,0,0,1, 0,0,0,0;                                            % S1(x1) = y1, S2 = 0 (not defined in first interval).
         0,0,0,0, 1,1,1,1;                                            % S1(x2) = y2, S2 = 0 (not defined in first interval).
         1,1,1,1, 0,0,0,0;                                            % S2(x2) = y2, S1 = 0 (not defined in second interval).
         0,0,0,0,  8,4,2,1;                                           % S2(x3) = y3, S1 = 0 (not defined in second interval).
         3,2,1,0, -3,-2,-1,0;                                       % S1'(x2) = S2'(x) .
         6,2,0,0, -6,-2,0,0;                                        % S1''(x2) = S2''(x) .
         0,2,0,0,  0,0,0,0;                                           % S1'(x1) = 0, S2 = 0 (not defined in first interval).
         0,0,0,0 12,2,0,0];                                         % S2'(x3) = 0, S1 = 0 (not defined in second interval).

b = [1,3,3,2,0,0,0,0]';                                           % r.h.s. of the boundary conditions.
         
C = A\b;                                                                 % Solve the System of linear equations: Ac = b and obtain coefficients.         
 
C1 = [C(1 : 4)];                                                    % S1 coefficients.
C2 =  [C(5 : 8)];                                                   % S2 coefficients.
 
% The interpolation point is in the second interval, thus we need the valye  of S2(1.5). 
v = ones(1, 4) * xi;                                               % x = 1.5.

for i = 1 : 4                                                            % x^3, x^2, x^1, x^0
  v(i) = v(i)^(4 - i);
end  
 
% expected 2.7813 
yi = dot(C2, v)                                                       % y= ax^3 + bx^2 + cx^1 + dx^0 


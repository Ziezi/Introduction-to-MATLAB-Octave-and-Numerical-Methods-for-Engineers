% Script drawing four 3D suplots of: surf, mesh, contour and contourf.
% Author: Chris B. Kirov
% Date: 16.09.2017 
clc
clear
close all

x = linspace(-4, 4, 100);
y = linspace(-3, 3, 100);
z = @(x, y) (x .* y .* (x.^2 - y.^2)) ./ (x.^2 + y.^2); % Define the z(x, y) relation.

[X, Y] = meshgrid(x, y);                                      % Get matrix X and Y of copied row and column vectors.

Z = z(X, Y);                                                          % Evaluate z over the grid and get matrix Z.

fh = figure();                                                         % get a figure handle.

subplot(2, 2, 1);
surf(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Surface plot.');

subplot(2, 2, 2);
mesh(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Mesh plot.');

subplot(2, 2, 3);
contour(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Contour plot.');

subplot(2, 2, 4);
contourf(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Contourf plot.');

absolutepath = 'D:\Matlab Projects\Intro to MATLAB - Octave\';
filename = sprintf('%sChapter11Exercise6.pdf', absolutepath);
print(fh, filename);
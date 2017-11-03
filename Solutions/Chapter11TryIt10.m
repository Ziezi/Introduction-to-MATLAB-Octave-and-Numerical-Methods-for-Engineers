% Script showing 3D plotting and the use of function plot3().
% Author: Chris B. Kirov
% Date: 14.09.2017 
clc
clear
close all

iBeg = 0;
iStep = pi / 50;
iEnd = 10 * pi;

t = [iBeg : iStep : iEnd];

plot3(sin(t), cos(t), t)

grid on
axis square
title('Parametric Curve.')
xlabel('x')
ylabel('y')
zlabel('t')
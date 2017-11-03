% Script file for computing Cylinder Volume and Surface Area.
% Author: Chris B. Kirov
% Date: 26.08.2017
clc
clear all
close all

r = 5;                                                                       % cyliner radius.
h = 10;                                                                    % cylinder height.

V = pi * h * r^2                                                     % compute and display the volume of cylinder.

s = 2 * pi * r * h                                                    % compute and display lateral surface area of cylinder.

S = s + 2 * pi * r^2                                               % compute and display total surface area of cylinder.
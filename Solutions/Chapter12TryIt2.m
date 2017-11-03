% Script calculating the angle between two vectors.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

v = [10, 9, 3];
w = [2, 5, 12];

% From the definition of the dot product: v.w = ||v|| * ||w|| cos(theta)
theta = acos( (v*w') / ( norm(v, 2) * norm(w, 2) ) )
angle = theta * 180 / pi                                         % convert to degrees.



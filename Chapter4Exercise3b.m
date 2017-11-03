% Script for testing  Function [S] = myInsidePolygon(polygon, point)
% Author: Chris B. Kirov
% Date: 29.08.2017       
clc
clear
close all

point1.x = 0;
point1.y = 0;
point2.x = 1;
point2.y = 0;
point3.x = 0;
point3.y = 1;

triangle = [point1, point2, point3];

test.x = 0.5;
test.y = 0.5;
s = Chapter4Exercise3(triangle, test)
assert(s, 'border');

test2.x = 0.25;
test2.y = 0.25;
s = Chapter4Exercise3(triangle, test2)
assert(s, 'inside');

test3.x = 5;
test3.y = 5;
s = Chapter4Exercise3(triangle, test3)
assert(s, 'outside');
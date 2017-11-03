% Script aplying: [ ] = myParametricPlotter(f, g, t)
% Author: Chris B. Kirov
% Date: 16.09.2017  

f = @(t) sin(t);
g = @(t) t.^2;

t = linspace(0, 6 * pi, 100);

Chapter11Exercise12(f, g, t);

 
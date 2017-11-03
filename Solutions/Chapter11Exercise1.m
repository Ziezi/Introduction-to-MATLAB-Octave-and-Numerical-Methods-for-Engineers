% Script drawing a 2D plot of a cycloid.
% Author: Chris B. Kirov
% Date: 15.09.2017 

rotations = 2;
phi = linspace(0, rotations * 2 * pi, 100); 
radius = 3;

x = radius .* ( phi - sin(phi) );                              % Calculate coordinates from parametric equations.
y = radius .* ( 1 - cos(phi) );

plot(x, y)
xlabel('x')
ylabel('y')
title('Cycloid or Trajectory of point on edge of rolling cicle.') 
legend('Tautochrone also Brachistochrone')
grid on
axis([0 (rotations*2*pi*radius + 1) 0 (2 * radius + 1)])

absolutepath = 'D:\Matlab Projects\Intro to MATLAB - Octave\';  % Save the plot.
filename = sprintf('%sChapter11Exercise1.pdf', absolutepath);
print(filename)


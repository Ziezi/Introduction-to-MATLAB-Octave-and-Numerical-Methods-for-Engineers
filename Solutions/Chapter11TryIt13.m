% Script showing animation of sine wave by successive redrawing of a plot.
% ctrl + C  to quit.
% Author: Chris B. Kirov
% Date: 14.09.2017 
clc
clear
close all

N = 1000;                                                              % define number of frames to be displayed
x = linspace(0, 6 * pi, N);
y = sin(x);

for i = 1 : N                                                           % run animation

  clf                                                                         % clear figure current content without closing it.
  hold on
  plot(x, y);                                                             % plot the whole function.
  plot(x(i), y(i), 'ro')                                               % plot current position of the "moving point",
  grid on                   
  axis tight                
  
  title( sprintf( 'Sine Wave at (%f, %f)', x(i), y(i) ) )
  xlabel('x')
  ylabel('sin(x)')
  
  drawnow                                                               % redraw plot without closing it.
  
end 

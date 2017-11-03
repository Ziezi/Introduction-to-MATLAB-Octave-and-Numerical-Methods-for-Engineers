% Script showing animation created of successive frames which then are converted to movie with the help of other program.
% Implementation using: ImageMagick/mencoder to manipulate the frames.
% Author: Chris B. Kirov
% Date: 15.09.2017 

% Method
% 1. Generate the frames in a loop.
% 2. Save each frame in the desired extension (.png).
% 3. Use ImageMagick to stitch together the images as movie .gif.
% 4. Play the output .gif to watch the simulation.

% From command prompt: change current directory to D:\...\output
% execute the following command: 
% magick convert -delay 10 -loop 0 *png asinesimulation.gif
% convert all .png files (1000 frames) in a .gif, with no loops 
% and delay of: 10 * 1/100 sec; store in same directory.

% OR
% 3. Use mencoder to convert frames to .avi video.
% Download and place folder in C:\;
% add directory of mencoder.exe in environment variable path. 

% From command promt: change current directory to D:\...\output
% execute the following command:
% mencoder mf://*.png -mf w=640 :h=480:fps=25:type=png -ovc lavc -lavcopts
% vcodec=mpeg4:mbd=2:trell -oac copy -o ASineMovie.avi
clc
clear
close all

N = 1000;                                                              % number of frames
x = linspace(0, 6*pi, N);
y = sin(x);

fh = figure();                                                         % get graphics handle

for i = 1 : N                                                           % run animation
  
  clf
  hold on  
  plot(x, y);
  plot(x(i), y(i), 'ro')
  
  grid on
  axis tight

  title( sprintf( 'Sine Wave at (%f, %f)', x(i), y(i) ) )
  xlabel('x')
  ylabel('y')
  
  drawnow
  
  % create figure name: fr####.png 
  framename = sprintf('D:\\Matlab Projects\\Intro to MATLAB - Octave\\output\\fr%04d.png', i);
  
  print(fh, framename);                                         % save current figure  

end  



 
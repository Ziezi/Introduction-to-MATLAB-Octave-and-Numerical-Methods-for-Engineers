% Script showing animation created of successive frames and saved as movie.
% Author: Chris B. Kirov
% Date: 15.09.2017 
% WORKING ONLY IN MATLAB
clc
clear
close all

pkg load video                                                        % include function avifile.

N = 1000;                                                              % number of frames.
x = linspace(0, 6 * pi, N);
y = sin(x);
                    
aviobject = avifile('Chapter11TryIt14');             % create an avifile object to store the frames.

for i = 1 : N                                                           % run animation.

  clf                                                                         % clear figure current content without closing.
  hold on
  plot(x, y)
  plot(x(i), y(i), 'ro') 
  grid on
  axis tight

  title( sprintf( 'Sine Wave at (%f, %f)', x(i), y(i) ) )
  xlabel('x')
  ylabel('y')  
  
  drawnow
  
  F = getframe(gcf);                                              % get current figure as frame
  aviobject = addframe(aviobject, F);                  % add frame to avi object.
  
end  

close(aviobject)                                                    % close avi object.
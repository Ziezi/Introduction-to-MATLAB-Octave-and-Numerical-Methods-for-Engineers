% Script showing a plot of a solution of the Lorenz Equation.
% and creating a simulation (animation) of particle trajectory (Lorenz Attractor).
% Author: Chris B. Kirov
% Date: 02.11.2017

% Apply [dS] = myLorenz(t, S, sigma, rho, beta).
expected = [10; 23; -6];
assert( expected == Chapter19Exercise2(0, [1; 2; 3], 10, 28, 8/3), '[dS] = myLorenz(t, S, sigma, rho, beta)::Unexpected Result')

% Apply [T, X, Y, Z] = myLorenzSolver(tSpan, s0, sigma, rho, beta).
sigma = 10; rho = 28; beta = 8/3;                      % Lorenz system parameters.
t0 = 0; tf = 50;                                                      % time interval (of integration).
S0 = [0, 1, 1.05];                                                  % initial position in 3D space.
[T, X, Y, Z] = Chapter19Exercise2a([t0, tf], S0, sigma, rho, beta);

%{
plot3(X, Y, Z, 'b')                                                    % draw solution.
title(['Lorenz Attractor Solution for: \sigma = ', num2str(sigma), ', \rho = ', num2str(rho), ', \beta = ', num2str(beta)] )
xlabel('x'); ylabel('y'); zlabel('z')
grid on
%}

fh = figure();

% !!! crashes at i = 496.
for i = 1 : length(T)                                              % To creates .avi movie from the .png frames run the batch script: Chapter19Exercise2.bat.
  
  clf
  
  plot3(X(1: i), Y(1 : i), Z(1 : i), 'b', X(i), Y(i), Z(i), 'ro')
  title('Lorenz Attractor')
  xlabel('x'); ylabel('y'); zlabel('z')
  axis( [-30 30 -30 30 0 50] )
  view( [45, 45] )
  grid on

  drawnow

  % create figure name: fr###.png; From: length(T) = 638, 3 digits needed.
  framename = sprintf('D:\\Matlab Projects\\Intro to MATLAB - Octave\\Ch19Ex2Frames\\fr%03d.png', i);
  print(fh, framename);                                         % save current figure  
  
end
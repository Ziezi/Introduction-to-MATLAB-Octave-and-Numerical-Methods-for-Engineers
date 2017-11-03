% Script applying [T, S] = myRK4(dS, tSpan, S0) and comparing it to ode45.
% Author: Chris B. Kirov
% Date: 02.11.2017
clc; clear; close all;

% Define ODE parameters
dS = @(t, S) sin( exp(S) ) / (t + 1);                    % change of the system.
tSpan = linspace(0, 2*pi, 10);                             % time interval of integration.
S0 = 0;                                                                   % initial condition.

[Trk, Srk] = Chapter19Exercise5 (dS, tSpan, S0);
[Tode, Sode] = ode45(dS, tSpan, S0);       

plot(Trk, Srk, 'b', Tode, Sode, 'g')
title('Built-in vs custom ODE Numerical Solutions.')
xlabel('t')
ylabel('S(t)')
legend('myRK4', 'ode45')


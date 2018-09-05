% Script showing a plot of the solutions to the Mass-Spring-Damper system
% in the cases of: no damping, underdapming, critical damping and overdamping.
% Author: Chris B. Kirov
% Date: 01.11.2017

% Define system parameters.
m = 1;
k = 10;
t = 0 : 0.1 : 20;
x0 = 1;
u0 = 0;
S0 = [x0; u0];

% Solve the ODE.
c = 0;                                                                      % no damping.
[T1, S1] = ode45(@Chapter19Exercise3, t, S0, m,  c, k);
c = 2 * sqrt(k * m)  - 5;         									% under damping.
[T2, S2] = ode45(@Chapter19Exercise3, t, S0, m,  c, k);
c = 2 * sqrt(k * m);                                                 % critical damping.
[T3, S3] = ode45(@Chapter19Exercise3, t, S0, m,  c, k);
c = 2 * sqrt(k * m)  + 5;         									% over damping.
[T4, S4] = ode45(@Chapter19Exercise3, t, S0, m,  c, k);

% Draw displacement of the MSD system.
plot(T1, S1(:, 1), 'b', T2, S2(:, 1), 'r', T3, S3(:, 1), 'g', T4, S4(:, 1), 'y' )
title('Numerical solution of MSD system with Varying Damping.')
xlabel('time')
ylabel('displacement')
legend('no damping', 'underdamping', 'critical damping', 'over damping')


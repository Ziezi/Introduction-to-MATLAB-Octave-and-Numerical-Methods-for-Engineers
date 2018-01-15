% Script demonstrating the application of FFT on 
% signal x(t) with values $\in$ $\mathcal{C}$.
% Plot phase in Cartesian and Polar Coordinates.
% and observe the phase discontinuity - 
% abrupt changes (vertical lines) in Cartesian representation.
% Author: Chris B. Kirov
% Date: 09.11.2017
clc; clear; close all;

A_1 = 1.0;
phi_1 = 0.0;
T_1 = 1/20;

A_2 = 1.0;
phi_2 = 0.0;
T_2 = 1/20;

% complex signal
t = 0 : 256;
x = A_1 * cos( 2*pi*T_1*t + phi_1) + j*A_2*sin(2*pi*T_2*t + phi_2);

subplot(5, 1, 1)                                                      % draw $\Im$ and $\Re$ parts.
plot( real(x), 'r-', imag(x), 'b-' );
axis( [ 0 numel(x) -1.5 1.5] );
title('Complex Signal: x(t) = A_1 cos(t) + j * A_2 sin(t).')

subplot(5, 1, 2)                                                      % draw phase of x(t) in Cartesian Plane.
plot( arg(x), 'r-' );
axis( [ 0 numel(x) -pi pi ] );
title('Phase of x(t) in Cartesian Coordinates.')

subplot( 5, 1, [3 4] )                                              % draw phase of x(t) Polar Plane.
plot( real( x( [1 : 21] ) ),  imag( x( [1 : 21] ) ), 'b-',  real( x( [1 : 21] ) ),  imag( x( [1 : 21] ) ), 'rx');
axis( [-1.5 1.5 -1.5 1.5] );
title('Phase of x(t) in Polar Coordinates.')
 
subplot(5, 1, 5)                                                      % expand (zoom) the phase of x(t) in Cartesian Plane.
plot( arg( x( [1 : 21] ) ), 'b-', arg( x( [1 : 21] ) ), 'rx');
axis( [0 21 -pi pi] );
title('Zoom of Phase of x(t) in Cartesian Coordinates.')
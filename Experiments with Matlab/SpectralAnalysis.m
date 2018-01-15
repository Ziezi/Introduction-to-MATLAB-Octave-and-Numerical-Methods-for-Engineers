% Script demonstrating spectral analysis using FFT  applied on a simple cosine wave.
% Author: Chris B. Kirov
% Date: 09.11.2017
clc; clear; close all;

% Signal parameters.
A = 220;                                                                % amplitude A = 220 [V].
f = 50;                                                                    % frequency f = 50 [Hz].
T = 1 / f;                                                                 % period T = 0.02 [s].
phi = 3 *pi / 2;                                                       % initial phase phi = \frac{3 \pi}{2}.

sampling_rate = f * 20;                                        % m measurements per sec.
sampling_period = 1 / sampling_rate;                % measurement every n sec.
sampling_time = 5;                                              % time [in terms of T - period] spent in measurements. 

tBeg = 0;
tStep = sampling_period;
tEnd =  T * sampling_time;

% Calculate Signal.
t = tBeg : tStep : tEnd;
x = A * cos(2 * pi * f  * t + phi);                        % cosine wave signal.
L = length(x);                                                        % sample size.
P = A^2 / 2;                                                          % signal power. 

% Calculate FFT.       
N = 2^12;                                                             % spectrum discretisation.
X = fftshift( fft(x, N) );                                       % shift f(0) to vector center.         
                         
P_X = X .* conj(X) / (N * L);                           % power of the transformed signal (TS).
F_X = (-N/2 : N/2 - 1) / N * sampling_rate ;   % frequency of TS: N frequencies in [-N/2, N/2 - 1] - scaled by sampling f.

abs_path = 'D:/Matlab Projects/Experiments with Matlab';

plot(t, x)
xlabel('t [s]')
ylabel('A [V]')
title('Test Signal.')
legend( sprintf( 'f = %.2f [Hz] \n A = %.2f [V]', f, A ) );
print( sprintf('%s/SpectrumTestSignal.pdf', abs_path ) )

plot(F_X, P_X)
xlabel('f [Hz]')
ylabel('P [W]')
axis([ -10*f 10*f  ])
set(gca, 'XTick', [-10*f : 2*f : 10*f]);
axis square
title('Power Spectral Density.')
legend( sprintf( 'f = %.2f [Hz]\n P = %.2f [kW].', f ,P/1000 ) )
print( sprintf('%s/SpectrumPSD.pdf', abs_path ) )

plot(F_X,   log10(P_X) )
xlabel('f [Hz]')
ylabel('PSD (dB)')
axis ([ -10*f 10*f  -50 10])
set(gca, 'XTick', [-10*f : 2*f : 10*f]);
axis square
title('Power Spectral Density.')
print( sprintf('%s/SpectrumPSDdB.pdf', abs_path ) )

F_X = (0 : N/2) / N * sampling_rate ;          % only the positive frequencies.
P_X = P_X( N/2 : end );

plot(F_X, P_X)
xlabel('f [Hz]')
ylabel('P [W]')
axis ([ 0 10*f  ])
set(gca, 'XTick', [0 : 2 * f : 10*f]);
axis square
title('One-sided Power Spectral Density.')
legend( sprintf( 'f = %.2f [Hz]\n P = %.2f [kW].', f ,P/1000 ) )
print( sprintf('%s/SpectrumPSDOneSided.pdf', abs_path ) )

 

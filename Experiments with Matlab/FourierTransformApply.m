% Script comparing Discrete Fourier Transform implementations.
% Author: Chris B. Kirov
% Date: 08.11.2017
clc; clear; close all;

% Signal parameters
A = 1;                                                                     % signal amplitude.
P = A^2 / 2;                                                          % signal power = \frac{1}{T}\int_0^T { x{^2}(t) dt}.
f = 10;                                                                    % frequency of the signal 10 Hz.
theta = 0.25 * pi;                                                   % initial phase of the signal.     
measurement_rate = f * 30;                                % Nyquist Shannon Theorem - rate of measurement >= 2 * f. 

nPeriods = 7;                                                        % number of periods to be displayed.
tBeg = 0;                                                               
tEnd = nPeriods * 1 / f;                                       
tStep = 1 / measurement_rate ;                           

t = tBeg : tStep : tEnd;               
x = A * sin(2 * pi * f * t + theta);                       % a sinusoidal signal with amplitude A= 1, f = 10 Hz and phase = pi / 4.
point_num = numel(x);

% Plot the test signal.
subplot(3, 1, 1)
plot(t, x);
xlabel('Time [sec]');
ylabel('Amplitude');
title('Test Signal.');
legend( sprintf( 'f = %.2f [Hz] \n A = %.2f [V]', f, A ) );

% Apply FFT and obtain spectrum of test signal.
freq_num = 2^10;                                                % Discretise the spectrum in 1024 frequencies.
bfft = fft(x, freq_num);                                        % built-in Discrete Fourier Transform.

bfft = fftshift(bfft);                                               % shift f(0) at the middle of the vector.            
                  
% Calculate signal power as frac{ X_k * X_k^{*} }{Frequency_Discretisation * Data_size}.                  
power = bfft .* conj(bfft) / (freq_num * point_num); 

% Frequency axis starts at: -f/2 ends at: f/2 and includes: n frequencies (even number).  
frequencies = measurement_rate * (-freq_num / 2 : freq_num/ 2 -1) / freq_num; 

subplot(3, 1, 2)
plot(frequencies, power);
xlabel('Frequency [Hz]');
axis([-10*f 10*f])
set(gca, 'XTick', [-10*f : f : 10*f]);
ylabel('Power [Watt]');
title('Power Spectral Density.')
legend( sprintf( 'f = %.2f [Hz]\n P = %.2f [W].', f ,P ) )

% Apply custom implementation of Discrete Fourier Transform.
cdft = myFourierTransform(x, freq_num);
cdft = fftshift(cdft);      
cpower = cdft .* conj(cdft) / (freq_num * point_num); 

subplot(3, 1, 3)
plot(frequencies, cpower);
xlabel('Frequency [Hz]');
axis([-10*f 10*f])
set(gca, 'XTick', [-10*f : f : 10*f]);
ylabel('Power [Watt]');
title('Power Spectral Density.')
legend( sprintf( 'f = %.2f [Hz]\n P = %.2f [W].', f, P ) )

error = abs( sum(cdft) - sum(bfft) )  


N = 1024;
W = (-N/2:N/2-1) / (N/2);

% Low pass filter.
h0 = [0.5, 0.5];
H0 = fftshift(fft(h0,N));
plot(W,abs(H0))
xlabel('Angular frequency (normalized by \pi)')
ylabel('Fourier transform magnitude')
title('Frequency response of Haar lowpass filter: [1/2 1/2]')
pause


% High pass filter.
h1 = [0.5, -0.5];
H1 = fftshift(fft(h1,N));
plot(W,abs(H1))
xlabel('Angular frequency (normalized by \pi)')
ylabel('Fourier transform magnitude')
title('Frequency response of Haar highpass filter [1/2 -1/2]')
pause

% Linear interpolating lowpass filter.
hlin = [0.5 1 0.5];
H = fftshift(fft(hlin,N));
plot(W,abs(H))
xlabel('Angular frequency (normalized by \pi)')
ylabel('Fourier transform magnitude')
title('Frequency response of lowpass filter [1/2 1 1/2]')
pause


% Upsampling.
u0 = [0.5 0 0.5 0];
U0 = fftshift(fft(u0,N));
plot(W,abs(U0))
xlabel('Angular frequency (normalized by \pi)')
ylabel('Fourier transform magnitude')
title('Fourier transform of [1/2 0 1/2 0]')
pause

% Downsampling.
x = [-1 0 9 16 9 0 -1] / 16;
X = fftshift(fft(x,N));
plot(W,abs(X))
xlabel('Angular frequency (normalized by \pi)')
ylabel('Fourier transform magnitude')
title('Fourier transform of x = [-1 0 9 16 9 0 -1] / 16')
pause

x2 = [-1 9 9 -1] / 16;
X2 = fftshift(fft(x2,N));
plot(W,abs(X2))
xlabel('Angular frequency (normalized by \pi)')
ylabel('Fourier transform magnitude')
title('Fourier transform of [-1 9 9 -1] / 16')
pause

XX = fftshift(fft(x,2*N));   % X(w)
XX2 = XX(N/2+1:3*N/2);       % X(w/2)
XXPi = fftshift(XX);         % X(w+pi)
XX2Pi = XXPi(N/2+1:3*N/2);   % X(w/2+pi)
Y = (XX2 + XX2Pi) / 2;
plot(W,abs(Y))
xlabel('Angular frequency (normalized by \pi)')
ylabel('Fourier transform magnitude')
title('[X(\omega/2) + X(\omega/2+pi)]/2')
% Script demonstrating the effects of multiplication
% by $exp^{f * t * i}$ (another signal) on a Compex Signal x(t). 
% Author: Chris B. Kirov
% Date: 09.11.2017
clc; clear; close all;

t = 0 : 31;
x = exp(j * 2 * pi * t / 10);                                  % signal x(t).

effects1  = { 'Initial', '* exp^{j * 0.1 * pi * t}', '* exp^{j * 0.2 * pi  * t}' };
effects2 = {'Initial', 'shifted', 'shifted again'};
effects3 = {'Initial', 'no change', 'no change'};

for i = 1 : 3

  k = (i - 1)/10;                                                      % multiply signal by: exp^{ j * k * pi * t }, where k = 0, 0.1, 0.2.
  x_i = [ x .* exp( j * k * pi * t),  zeros( 1, 256 - numel(x) ) ];    % padding with zeroes adds "noise" to the date. 
  
  fft_i  = fft( x_i );
  abs_fft_i = abs( fft_i );
  arg_fft_i = arg( fft_i );
  
  f_i = [ 0 : numel(fft_i) - 1] / numel(fft_i);       
  len_f_i = numel(f_i);
  
  subplot(5, 3, i);                                                   % draw signal.
  plot( real(x_i), 'r-', imag(x_i), 'b-' ); 
  axis( [ 0 numel(t) -1.5 1.5 ] );
  title(sprintf( 'x(t) = R * exp^{j* theta * t} %s', effects1{i} ) );
  
  subplot(5, 3, i + 3);                                             % draw spectrum.
  plot(f_i,  abs_fft_i);
  title( sprintf( 'Spectrum - %s', effects2{i} ) );
  
  subplot(5, 3, i + 6);                                             % draw phase.
  plot(f_i,  arg_fft_i ); 
  axis( [ 0 1 -pi pi ] );
  title( sprintf( 'Phase - %s',  effects3{i} ) );
  
  subplot(5, 3, i  + 9);                                           % draw zoomed spectrum.
  plot( f_i( [ 1 : len_f_i / 4 ] ), abs_fft_i( [ 1 : len_f_i / 4 ] ) );
  title( sprintf( 'Zoom Spectrum - %s', effects2{i}) );
  
  subplot(5, 3, i + 12);                                          % draw zoomed phase.
  plot( f_i( [ 1 : len_f_i/ 4 ] ), arg_fft_i( [ 1 : len_f_i / 4 ] ) );
  axis( [ 0 1/4 -pi pi ] );
  title( sprintf( 'Zoom Phase - %s',  effects3{i} ) );
  
end  
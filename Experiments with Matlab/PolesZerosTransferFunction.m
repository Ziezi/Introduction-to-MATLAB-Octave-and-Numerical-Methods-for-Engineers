% Script demonstrating graph on the s-plane,
% of the poles and zeros of the transfer function H = output/input.
% Date: 16.12.2017
% Author: Chris B. Kirov

% pkg load signal

% Set up vector for zeros
z = [j ; -j];

% Set up vector for poles
p = [-1 ; .5+.5j ; .5-.5j];

figure(1);
zplane(z, p);

% Approaching zeroes / poles the signal described the H attenuates / amplifies.
title('Pole/Zero Plot for Complex Pole/Zero Plot Example');
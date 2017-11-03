% Script showing matrix multiplication error due to inner-dimension mismatch.
% Author: Chris B. Kirov
% Date: 18.09.2017  
clc
clear
close all

P = [1, 7; 2, 3; 5, 0];                                            % 3x2
Q = [2, 6 ,3 ,1; 1, 2, 3, 4];                                   % 2x4

P*Q                                                                        % successful

P*Q'                                                                       % error: 3x2 * 4x2

Q*P                                                                        % error: 2x4 * 3x2


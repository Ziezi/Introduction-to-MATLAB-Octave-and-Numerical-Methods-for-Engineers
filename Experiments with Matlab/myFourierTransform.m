
function [ft] = myFourierTransform (X, n)
% Objective: Apply the Discrete Fourier Transform on X.
% Input:
%   X - 1xM - complex vector - data points (signal discretisation). 
%   n - 1x1 - integer scalar - number of discrete frequencies (spectrum discretisation). 
% Output:
%   ft - 1xn - complex vector - "quantity of" i-th frequency in X.
% Complexity: O(n * M).
% Author: Chris B. Kirov
% Date: 08.11.2017
  
  ft = zeros(1, n);
  freq = @(point_index, freq_index, total_freqs) ...
    exp( -2 .* pi .* j  .*(point_index - 1) .* (freq_index - 1) / total_freqs);  

  for i = 1 : n
                                                                                % i - 1x1 integer - introduces frequency: f = i / n, i = 1,...,n, where n - number of frequencies.
    f_i = freq(1: numel(X), i, n);                          % point_index - 1x1 integer - introduces phase: phi =  -2*\pi * k, k = 0,...., number of data. 
    
    ft(i) = dot(X, f_i);
   
  end
  
end  

 
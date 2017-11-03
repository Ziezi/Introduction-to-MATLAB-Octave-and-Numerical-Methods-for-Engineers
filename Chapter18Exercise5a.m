% Function [ ] = plotFourrier(f, N)

function [ ] = Chapter18Exercise5a (f, N)
% Objective: 
%   Apply [An, Bn] = myFourierCoeff (f, n) and
%   plot the result along with exact function value.
% Input:
%   f - function handler to a 2p periodic function.
%   N - 1x1 integer - number of terms in Fourier Series.
% Output:
%   - plots Fourier Approximation of f till N-th term.
% Author: Chris B. Kirov
% Date: 20.10.2017   
  
  x = linspace(-pi, pi, 10000);
 
  [A0, B0] = Chapter18Exercise5(f, 0);            % get A0
  y = A0 * ones( size(x) ) / 2;
 
  for n = 1 : N                                                        
    
    [An, Bn] = Chapter18Exercise5(f, n);           % get A1...N and B1...N
    y = y + An * cos(n * x) + Bn * sin(n * x);     % build the series by summing the terms.
    
  end    
  
  plot(x, f(x), x, y)
  
  if N == 1
    postfix = 'st';
  elseif N == 2
    postfix = 'nd';
  elseif N == 3
    postfix = 'rd';
  else
    postfix = 'th'; 
  end  
  
  title( sprintf('%d-%s Order Fourier Approximation', N, postfix ) )
  xlabel('x')
  ylabel('y')
  legend('analytic', 'approximate')
  grid on
  axis equal 

end  
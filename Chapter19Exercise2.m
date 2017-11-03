% Function: [dS] = myLorenz(t, S, sigma, rho, beta)

function [dS] = Chapter19Exercise2 (t, S, sigma, rho, beta)
% Objective: Represent the Lorenz Equation, 
% which is a simplified system of equations describing the 2D flow of fluid.
% Input:
%   t - 1x1 double - time.
%   S - 3x1 array of doubles - 3D coordinates of initial position.
%   sigma - 1x1 positive double - velocity / thermal diffusivity.  
%   rho - 1x1 positive double - Rayleigh number / Critical Rayleigh Number.  
%   beta - 1x1 positive double -  geometric factor.
% Outptut:   
%   dS - 3x1 array of doubles - change in the input coordinates.
% Author: Chris B. Kirov
% Date: 02.10.2017

  if (sigma < 0) || (rho < 0) || (beta < 0)
    error('Chapter19Exercise2::Invalid Input Argument::Negative Parameters!')    
  end     

  dS = NaN(3, 1);  
  
  dS(1) =  sigma * ( S(2) - S(1) );  
  dS(2) =  S(1) * ( rho - S(3) ) - S(2);
  dS(3) = S(1) * S(2) - beta * S(3);  
 
end  
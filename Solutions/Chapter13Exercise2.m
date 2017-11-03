% Function [Beta] = myLSParams (f, x, y)

function [Beta] = Chapter13Exercise2 (f, x, y)
% Objective: Least Square Regression (as a solution of System of Linear Equations).  
% Input:
%   f - handler to a cell array of basic functions composing the estimator.
%   x (independent), y (dependent) - same size column vectors containing data.
% Output:
%   Beta - column vector of the parameters of the least square regression
%   for x, y and f.
% Author: Chris B. Kirov
% Date: 23.09.2017  

  y = y';                                                                   % turn in column vector.
 
  Z = constructZ (f, x);                                         % general form of the normal equation: [ Z^{T} Z ] b = Z^{T} y, or Ab = y.
  
  A = Z' * Z;                                                          % A = Z^{T} Z.
  y = Z' * y;                                                            % y = Z^{T} y.
  
  [N , Beta] =   Chapter12Exercise8 (A, y);      % Use: [N, b] = myNumSols (A, y), to solve the system of linear equations: Ab = y.
                                                                                % i.e. b = A^{-1} y or b = [Z^{T} Z]^{-1} Z^{T} y.
end  

function [Z] = constructZ (f, x)
% Input:
%   f - cell array of function handlers to basis functions.
%   x - independete variable data.
% Output:
%   Z - matrix  where Z(i, j) is the value of the i-th basic function, f{i}, evaluated on the j-th data point, x(j).

  numOfBasicFuncs = numel(f);
  numOfDataPoints = numel(x);

  Z = NaN( numOfDataPoints, numOfBasicFuncs );
   
  for i = 1 :  numOfBasicFuncs 
    
    Z(:, i) = f{i}(x);
    
  end  

end 
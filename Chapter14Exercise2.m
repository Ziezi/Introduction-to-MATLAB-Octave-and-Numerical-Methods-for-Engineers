% Function [Y] = MyCubicSpline(x, y, X)

function [Y] = Chapter14Exercise2 (x, y, X)
% Objective: Cubic Spline Interpolation.   
% Input:
%   x, y - 1xN same size ordered data coordinates to construct N-1 Cubic polynomials.
%   X - 1xM ordered data coordinates for interpolation. 
% Output:
%   Y - interpolated points, pairs of X.
% Author: Chris B. Kirov
% Date: 26.09.2017  
  numberOfTerms = 4;                                          % terms in Cubic polynomial.

  A = ConstructMatrix(x, y, numberOfTerms); % apply (l.h.s of) contraints on cubic polynomials.
  
  b = ConstructB(y, numberOfTerms);               % apply (r.h.s of) contraints on cubic polynomials.
  
  C = A\ b;                                                              % Solve the System of linear equations: Ac = b and obtain cubic poly coefficients.         

  Y = performInterpolation(x, X, C, numberOfTerms); % construct cubic poly from coeff in each interval and evaluate X.
  
end

function [Y] = performInterpolation(x, X, C, numberOfTerms)
% Input:
%   x - vector of independent variables.
%   X - points to be interpolated.
%   C - coefficients of polynomials.   
% Output:
%   Y - interpolated values.

  for i = 1 : numel(X)
    
    n =  findPolynomialNumber(x, X(i)); 
    
    if n == numel(x)                                                % !!!! returns 1 + actual number of polynomials.
      n = numel(x)  - 1;
    end  
    
    coefficients = [C(numberOfTerms*(n - 1)  + 1: numberOfTerms*(n - 1) + numberOfTerms)];  % find coefficients of n-th polynomial. 
   
    Y(i) =  sum( EvaluateTermsAt( X(i), coefficients' ) );
    
  end
  
end  

function [i] = findPolynomialNumber(data, target)
% Input:
%   data - 1xN vector of ordered data set.
%   target - point for which: data(i1) < target <= data(i2), (1).
% Output;
%   i - number of polynomial which coefficients approximate the target value.
  
  indxs = find (data <= target);                             % find indexes of elements larger than current value for interpolation.
  i = indxs(end);                                                    %  such that: x(i1) < X(i) <= x(i2).

end  

function [b] = ConstructB(y, numberOfTerms)
% Input:
%   y - vector of independent variables.
% Output:
%   b - r.h.s of the of the system of linear equations in matrix form.
  numberOfPolynomials = numel(y) - 1;
  
  r = zeros(2, numel(y));
  r(1, :) = [1 : 1 : numel(y)];
  r(2, :) = [1, ones(1, numel(y) - 2) * 2, 1];
  
  b = repelems(y, r);                                              % repeat all elements except end elements.
  
  % add another 2n zeros as a part of the second and third set of constraints.
  b = [ b, zeros(1, (numberOfTerms * numberOfPolynomials) - numel(b) ) ]';
end  

function [A] = ConstructMatrix(x, y, numTerms)
% Input:
%   x, y - data points defining the piece-wise cubic polynomials and intervals.
% Output:
%   A - NxN matrix consisted of the terms of the polynomials after the constraints have been applied.

   len = numel(x) - 1;                                            % number of Cubic Polynomials to be used.  
  
   A = NaN(numTerms * len);                             % terms in cubic polynomial * number of polynomials.
 
                                                                                % Apply constraints: Si(xi) = yi and Si(xi+1) = yi+1.
  j = 1;
  for i = 1 : len                                                       % index runs to i + 1.
    pre = zeros( 1, numTerms * (i - 1) );
    post = zeros( 1, numTerms * (len - i) );
    coefficients = ones(1, numTerms );
    
    A(j, :) = [pre ,  EvaluateTermsAt( x(i), coefficients ), post];
    A(j+1, :) = [pre , EvaluateTermsAt( x(i + 1), coefficients ),  post];
    
    j = j + 2;
  end                                                                       % 2n  constraints
  
                                                                                % Apply constraints: Si'(xi+1) = Si+1' (xi+1) and  Si''(xi+1) = Si+1'' (xi+1), i = 2,..., n-1.
  for i = 1 : len - 1                                                 % only internal common points of polynomials, not end points.
    pre = zeros( 1,  numTerms * (i - 1) );
    post = zeros( 1, numTerms * (len - i - 1) );
    coefficients = ones(1, numTerms);
     
    dS1=   PolyDerivative(coefficients);
    dS2 =  dS1 .* (-1);
    A(j, : ) = [pre, shift(EvaluateTermsAt( x(i + 1), dS1), -1), shift(EvaluateTermsAt( x(i + 1), dS2), -1), post];
    
    d2S1 = PolyDerivative(dS1);
    d2S2 = d2S1 .*(-1);
    A(j + len - 1, : ) = [pre, shift(EvaluateTermsAt( x(i + 1), d2S1), -2), shift(EvaluateTermsAt( x(i + 1), d2S2), -2),  post];
    
    j = j + 1;
  end                                                                       % 2(n - 1)
  
                                                                                % Apply constraints: S1''(x1) = 0 and Sn''(xn+1) = 0.
   coefficients = ones(1, numTerms );
   dS =  PolyDerivative(coefficients);
   d2S = PolyDerivative(dS);
   
   A(end - 1, :) = [zeros( 1, numTerms * (0) ),  shift(EvaluateTermsAt( x(1), d2S ), -2), zeros( 1, numTerms * (len - 1) )];
   A(end, :) = [zeros( 1, numTerms * (len - 1) ),  shift(EvaluateTermsAt( x(end), d2S ), -2), zeros( 1, numTerms * (0) ) ];
   
end 

function [pAtx] = EvaluateTermsAt(x, c)
% Input:
%   x - value at which the terms (without coefficients) of the polynomials are evaluate.
%   c - vector of coefficients.
% Output:
%   pAtx - vector returning the terms of the polynomial at x.  
  numTerms = numel(c);
  p = ones(1,  numTerms) * x;
  
  for i = 1 :  numTerms                   % x^n, x^(n-1),..., x^2, x^1, x^0
    p(i) = p(i)^(numTerms - i);
  end  
   
   pAtx = p .* c;
    
end  

function [pPrime] = PolyDerivative(p)
% Input:
%   p - coefficients of terms (ax^3 + ...) of polynomial, powers in descending order.
% Output:
%   pPrime - coefficients of the derivative of polynomial.
  numTerms = 4;

  % Multiply by index (power) and shift to right (power - 1).
  for i = 1 :  numTerms                   % x^3, x^2, x^1, x^0
    pPrime(i) = p(i)*(numTerms - i);
  end    
  
  pPrime = [zeros(1, 1), pPrime(1 : end-1)];
  
end  
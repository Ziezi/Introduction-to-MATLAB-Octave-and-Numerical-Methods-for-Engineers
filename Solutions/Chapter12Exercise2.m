% Function [out] =myIsOrthogonal (v1, v2, tol)

function [out] = Chapter12Exercise2 (v1,  v2 , tol)
% Objective: Find if two vectors are orthogonal up to a specific accuracy.
% Input:
%   v1, v2 - 1xN double arrays - column vectors.
%   tol - 1x1 strictly positive double - error tolerance. 
% Output:
%   - out - 1x1 integer - 1 if: |pi/2 - angle(v1, v2)| < tol; otherwise: 0.
% Author: Chris B. Kirov
% Date: 19.09.2017  

  theta = acos(  dot(v1,v2) / ( norm(v1) * norm(v2) ) );
  
  if abs(pi / 2 - theta) < tol
    out = 1; 
  else
    out = 0;
  end  
  
end 
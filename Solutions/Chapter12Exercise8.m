% Function [N, x] = myNumSols (A, b)

function [N, x] = Chapter12Exercise8 (A, b)
% Objective: Solve a system of linear equations. Cover all possibilities. 
% Input:
%   A - NxM matrix of doubles - l.h.s coefficients of a system of linear equations in matrix form: Ax = b.
%   b - 1xM vector of doubles - r.h.s constant coefficients of a system of a linear equations.
% Output:
%   N - 1x1 integer - number of solutions.
%   x - 1xM vector of doubles - solutions.
% Author: Chris B. Kirov
% Date: 21.09.2017  

  if rank(A) == rank([A, b])                                  % b linearly dependent on A.
    
    if size(A) == size(A')                                       % matrix is square. 
       
       if rank(A) == size(A, 2) 
         
          x = inv(A) * b;                                             % unique solution.
          N = 1;  
       elseif rank(A) < size(A, 2)
  
          x = pinv(A) * b;                                           % infinite number of solutions.
          N = Inf; 
       end
       
    else                                                                     % matrix is not square. (overdetermined system)
       
       if rank(A) == size(A, 2) 
         
         x = A \ b;                                                       
         N = size(A, 1) - size(A, 2);                        % (rows - columns) number of solutions.
       elseif rank(A) < size(A, 2)
         
          x = pinv(A) * b;                                           % infinite number of solutions. (Least Squares Regression.)
          N = Inf; 
       end
       
    end   
    
  elseif rank(A) < rank([A, b])                             % b linearly independent of A.
    
       x = [ ];                                                             % no solution.
       N = 0; 
  end  
  
end  
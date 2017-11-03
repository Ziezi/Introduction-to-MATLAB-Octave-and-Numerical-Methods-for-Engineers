% Function [sorted] = myQuickSort(A)

function [sorted] = Chapter6TryIt5(A)
% Objective: Sort an integer array using Quick Sort - recursive.
% Input:
%   A -   1xN integers array.
% Output:
%   sorted - 1xN sorted elemnets of A.
% Author: Chris B. Kirov
% Date: 05.09.2017      

  A 
    
  if length(A) <= 1
    sorted = A;  
  else
    pivot = A(1);
       
    smaller = [ ];
    same = [ ];
    larger = [ ];
       
    for i = 1 : length(A)
          
      if A(i) > pivot
        larger(end + 1) = A(i);     
      elseif A(i) < pivot
        smaller(end + 1) = A(i); 
      else
        same(end + 1) = A(i);
      end
            
    end 
       
    sorted = [Chapter6TryIt5(smaller), same, Chapter6TryIt5(larger)]; 
  end  
    
end  
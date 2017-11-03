% Function [sorted] = iterativeQucikSort(A)

function [sorted] = Chapter6Exercise15(A)
% Objective: Sort an integer array using iterative Quick Sort.  
% Input:
%   A - 1xN integer array.
% Output:
%   sorted - 1xN integer array - sorted elements of A.  
% Author: Chris B. Kirov
% Date: 03.09.2017        
    
  iBeg = 1;                                                              % Starting and ending indexes of unsorted array.
  iEnd = numel(A);
    
  % Struct holding A's subarrays star/end indexes resulting from partitioning.
  stack(end + 1) = struct('iBeg', iBeg, 'iEnd', iEnd);     % push on stack
   
  while numel(stack) != 0
    
    iBeg = stack(end).iBeg;                                  % Extract last pair of indexes.
    iEnd = stack(end).iEnd; 
    stack(end) = [ ];                                                % pop from stack
    
    [A, pivotIndex] = Partition(A, iBeg, iEnd);   % Get pivot index and array after rearranging elements around the pivot.
  
    if pivotIndex - 1 > iBeg                                    % Store indexes of the next two subarrays defined by the pivot index, if their sizes are > 0.
      stack(end + 1) = struct('iBeg', iBeg, 'iEnd', pivotIndex - 1);
    end  
        
    if pivotIndex + 1 < iEnd
      stack(end + 1) = struct('iBeg', pivotIndex + 1, 'iEnd', iEnd);
    end  
    
  end  
  
  sorted = A;
  
end  

function [A, pivotIndex] = Partition (A, iBeg, iEnd)
% Objective: Order elements in sub-array of A 
% by swapping elemens around a pivot - value of last element.     
% Input:
%   A - 1xN integer array.
%   iBeg, iEnd - indexes determining current sub-array of A.
% Output:
%   A - modified A with elements of current partition in order and pivot at its beginning. 
%   pivotIndex - pivot index in current partition (starting index of sub-array).
     
  pivotValue = A(iEnd);                                        % Choose last element to be pivot.
  pivotIndex = iBeg;                                              % Initialize pivot index to start of subarray.
    
  for i = iBeg : iEnd - 1                                        % Iterate over current subarray
    
    if A(i) <= pivotValue                                        % Push elements <= pivot in front of pivot index.
      % Place element at i-th position before element with pivot index.
      [A(i), A(pivotIndex)] = swapElements(A(pivotIndex), A(i)); 
      
      pivotIndex = pivotIndex + 1;                         % Account for the swap, go to next element.
    end  
  
  end  

  % Bring the element used as pivot to its place
  [A(iEnd), A(pivotIndex)] = swapElements(A(pivotIndex), A(iEnd)); 
  
end  

function [elem2, elem1] = swapElements(elem1, elem2)
% Objective: swaps the values of two array elements.  

    [elem2, elem1] = deal(elem1, elem2);  
    
end  
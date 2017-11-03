% Iterative Implementation of the Towers of Hanoi

function [ ] = Chapter6Exercise13(n, from, to, alt)
% Objective: Solve Towes of Hanoi iterarively.  
% Input:
% n - 1x1 positive integer - number of disks  
% from - 1x1 positive integer - number of start tower,
% to - 1x1 positive integer - number of end tower,
% alt - 1x1 positive integer - free tower. 
% Output:
%   - string outputs with succesive moves to solve the Towers of Hanoi.
% Author: Chris B. Kirov
% Date: 03.09.2017        
  
  % fileID = fopen('Chapter6Exercise13.txt','w');
  totalNumberOfMoves = (2 ^ n) - 1;
  
  % Disk number reflects their size: disk 1 - smallest, disk 3 - largest.
  M = generateDiskMoves(totalNumberOfMoves); 
  
  % The current number of moves for each separate disk.
  currentPositions = ones(1, n);                          % index-disk number, value-move number.
    
  % These are the (cyclical) disk paths.
  path1 = [from, alt, to];                                       % Path of disk with odd number.
  path2 = [from, to, alt];                                       % Path of disk with even number.
    
  if mod(n, 2) == 0                                                % If n (number of disks) is even the paths are swapped.
    [path2, path1] = swapArrays(path1, path2);  
  end  
  
  len = numel(path1);
    
  for i = M                                                              % i - holds the disk number making the curent move.
    
    from = -1;
    to = -1;
    j = currentPositions(i);                                    % j - current number of moves for i-th disk.
    
    if mod(i, 2) == 0                                               % if disk number, i, is even.  
      
      from = path1( mod(j - 1, len) + 1);               % Indexes in Octave: [1, size], so: mod(j - 1, len) + 1, to avoid index = 0.
      j = j + 1;      
      to =  path1( mod(j - 1, len) + 1); 
    else
   
      from = path2( mod(j - 1, len) + 1);               % Cycle over 1->2->3 based on the moves, j, of each individual disk.
      j = j + 1;  
      to =  path2( mod(j - 1, len) + 1);               
    end  
    
    currentPositions(i) = j;                                    % i-th disk has moved one more time, j = j + 1.
    % fprintf(fileID, 'Move disk %d from %d to %d.\n', i, from, to);
    disp(sprintf('Move disk %d from %d to %d.', i, from, to))
    
  end  
  
  % fclose(fileID);
end  

function [a2, a1] = swapArrays (a1, a2)
% Objective: swap the elements of input arrays.
  
  [a2, a1] = deal(a1, a2);  
  
end  

% From: http://mathworld.wolfram.com/BinaryCarrySequence.html
function [M] = generateDiskMoves(n)
% Objective: Obtain a matrix whose index is a transition number
% (i-th consecutive move) and value at that index, a disk number.
% Input:
%   n - 1x1 positive integer - total number of moves.
% Output:
%   M - 1xN integer array with the first n consecutive disk moves
%   in Tower of Hanoi where the index: move number and value: disk number.
    
  [m, M] = Omega2(n);                                        % Generate the: "Binary Carry Sequence".
     
   M = M .+ 1;                                                       % Translate the origin at one - start of indexes.
          
   if n < 2                                                                 % Trivial case requires only one move.
     M = M(1);       
   end    
   
end  

% From : https://oeis.org/A007814
function [m, M] = Omega2(n)
% Input:
%   n - 1x1 positive integer: n.
% Output:
%   m - max power of 2 such that 2^m divides n.
%   M: 1xK matrix where M(i) is the max power of 2 such 
%   that 2^M(i) divides n.
  
  M = NaN * zeros(1, n);
  
  M(1) = 0; 
  M(2) = 1;
  
  for k = 3 : n
    
    if M(k - 2) ~= 0
      M(k) = M(k - k / 2) + 1;
    else
      M(k) = 0;
    end
    
  end
  
  m = M(end);
  
end 
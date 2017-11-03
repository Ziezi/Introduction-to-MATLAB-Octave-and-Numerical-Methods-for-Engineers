% Function [ ] = myTowers(N, from, to, alt)

function [ ] = Chapter6TryIt4(N, from, to, alt)
% Objective: Solve the Towers of Hanoi -recursive.
% Input:
%   N - 1x1 integer -number of disks (1-st - smaller, N-th - larger) in stack.
%   from, to, alt - 1x1 integers - enumeration of Towers: 1-left,2-middle,3-right, if first call (1,3,2).
% Output:
%   -  string outputs with succesive moves to solve.
% Author: Chris B. Kirov
% Date: 05.09.2017  
    
  if N ~= 0  
       
    Chapter6TryIt4(N - 1, from, alt, to)                % move N-1 from starting to alternative tower.
        
    disp( sprintf('Move disk %d from %d to %d.', N, from, to) )   % display move of current call.
        
    Chapter6TryIt4(N - 1, alt, to, from)                % move N-1 from alternative to final tower.
    
  end
    
end  
% Function [S] = myAddString(S1, S2)

function [S] = Chapter3Exercise8(S1, S2)
% Objective: Concatenate two strings.
% Input:         
%   S1, S2 - 1xN, 1xM strings.
% Output:
%   S - 1x(N+M) string - concatenation of S1 and S2. 
% Author: Chris B. Kirov
% Date: 26.08.2017     
    
  %S = strcat(S1, S2); % removes empty spaces
  S = [S1 S2];
end  
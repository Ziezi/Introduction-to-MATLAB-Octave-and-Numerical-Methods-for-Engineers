% Function [response] = muNukeAlarm(S1, S2, S3)

function [response] = Chapter4Exercise7(S1, S2, S3)
% Objective: Verify if sensor readings are measuring same variable.
% Input:
%   S1, S2, S3 -1x1 doubles: temperature readings.
% Output:
%   response - 1xN string reflecting their relative difference.
% Author: Chris B. Kirov
% Date: 29.08.2017      

  eps = 10;
  
  if (abs(S1 - S2) > eps || abs(S1 - S3) > eps || abs(S2 - S3) > eps)
    response = 'alarm!';
  else 
    response = 'normal';
  end 
    
end  
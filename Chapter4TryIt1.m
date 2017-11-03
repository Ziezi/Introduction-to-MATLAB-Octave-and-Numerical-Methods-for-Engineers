% Function [status] = myThermostat(temp, desiredTemp)

function [status] = Chapter4TryIt1(temp, desiredTemp)
% Objective: Make a thermostat switch based on temperature readings.  
% Input:
%   temp - 1x1 double.
%   desiredTemp - temperature threshold. 
% Output:    
%   status - 1xN string representing action regarding heat.  
% Author: Chris B. Kirov
% Date: 27.08.2017        
  
  if temp < desiredTemp - 5
      status = 'Heat';
  elseif temp > desiredTemp + 5
      status = 'AC';
  else
      status = 'off';
  end    
    
end  
% Function [G] = myGreetings(name, age)

function [G] = Chapter3Exercise11(name, age)
% Objective: Output a greeting message to a person with specific name and age.  
% Input:  
%   name - 1xN string.
%   age - 1x1 double.
% Output:
%   G - string with a message involvning the input arguments.  
% Author: Chris B. Kirov
% Date: 26.08.2017       
    
  G = sprintf('Hi, my name is %s and I am %d years old.', name, age);
end  
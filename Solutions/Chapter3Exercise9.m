% Function [S] =  createStudent(name, ID, grades)

function [S] = Chapter3Exercise9(name, ID, grades)
% Objective: Create an object consisted of 3 fields.  
% Input:  
%   name - 1xN string
%   ID - 1x1 integer
%   grades - 1xM array of doubles.
% Output:
%   S - 1x3 struct object with three fields: name, ID, grades, initialised to values in input arguments.
% Author: Chris B. Kirov
% Date: 26.08.2017   
    
  S.name = name;
  S.ID = ID;
  S.grades = grades;  
end  
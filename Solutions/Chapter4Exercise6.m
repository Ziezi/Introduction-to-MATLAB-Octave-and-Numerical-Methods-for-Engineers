% Function [grade] = myLetterGrader(pecent)

function [grade] = Chapter4Exercise6(percent)
% Objective: Represent a grade as a letter, [A+, F], based on a  given percentage [0, 100]. (Map 40 to 12.) 
% Input:
%   percent - 1x1 double - grade as percentage: [0%, 100%].
% Output:
%   grade - letter [A : F] corresponding  to the percentage grade.   
% Author: Chris B. Kirov
% Date: 29.08.2017  

 if percent >= 97 
    grade = "A+";
  elseif percent < 97 && percent >= 93
    grade = "A";
  elseif percent < 93 && percent >= 90
    grade = "A-"; 
  elseif percent < 90 && percent >= 87
     grade = "B+";
  elseif percent < 87 && percent >= 83
     grade = "B";
  elseif percent < 83 && percent >= 80
    grade = "B-";  
  elseif percent < 80 && percent >= 77
    grade = "C+";
  elseif percent < 77 && percent >= 73
    grade = "C";
  elseif percent < 73 && percent >= 70   
    grade = "C-";
  elseif percent < 70 && percent >=67
    grade = "D+";
  elseif percent < 67 && percent >= 63
    grade = "D";
  elseif percent < 63 && percent >= 60   
    grade = "D-"; 
  else if percent < 60
    grade = "F";
  end   
   
end  

%{
function [grade] = getGradeModulo(percent)
  
  letters = fliplr( {"A+", "A",  "A-", "B+", "B",  "B-", "C+", "C",  "C-", "D+", "D",  "D-"} );
    
  scale = 100;                                                         % input measerement scale is from 0 to 100.
  threshold = 60;                                                   % only grades > 60 pass.
  normalised_grade = percent -  threshold;       % Pass grades from 60 to 100, i.e. scale from 0 to 40.
  spacing = (scale - threshold) / numel(letters);% there are 12 possible pass grades, from A+ to D-.
  
  if normalised_grade < 0
    grade = "F";
  else
     index = floor( normalised_grade / spacing ) + 1;   % crashes at 100 !!!!
     grade =  letters( index );                                  % access cell element.
     grade = grade{:};                                              % convert cell to string.
  end 
   
end  
%}
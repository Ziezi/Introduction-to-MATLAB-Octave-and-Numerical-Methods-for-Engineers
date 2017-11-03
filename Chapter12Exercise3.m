% Function [out] = myIsSimilar (s1, s2, tol)

function [out] = Chapter12Exercise3 (s1, s2, tol)
% Objective: Find if two string are similar (additionally showing Cosine Similarity.)
% Input:
%  s1, s2 - 1xN and 1xM character strings.
%  tol - 1x1 double - (0, pi] or (100%, 0%] threshold of similarity. 
% Outut:
%   out - 1x1 integer - 1 if |theta| < tol.
% Author: Chris B. Kirov
% Date: 19.09.2017  

  if ~ischar(s1) || ~ischar(s2)
    error('Chapater12Exercise3::Invalid Input::Strings Contain Non - Character Elements!')    
  end  

  if (tol <= 0) || (tol > pi)
    error('Chapater12Exercise3::Invalid Input::Try: 0 < tol <= pi.')  %Domain of acos(x) is: [0, pi]
  end    
  
   v1= makeVector(s1);
   v2= makeVector(s2);
   
   theta =  acos( dot(v1, v2) / ( norm(v1) * norm(v2) ) )
   
   % cosSimilarity =  dot(v1, v2) / ( norm(v1) * norm(v2) ) 
   % similar = 100 * cosSimilarity                        % This way tol could be set as percentage.
   
   if abs(theta) < tol
     out  = 1;
   else  
     out = 0;
   end  
  
end

function [v] =  makeVector(str)
% Objective: Constuct a numeric vector out of a string. 
% by counting the frequency of each character and using
% character consecutive number in the alphabet as vector index.
% Input:
%   str - 1xN character string.
% Output:
%   v - 1x26 vector of integers - frequency of character in input string.

  str = tolower(str);                                               % convert to lower case.
  
  alphabetSize = 26;
  v = zeros(1, alphabetSize);                                 % initial frequency of all possible letters [a, z] in a word.
  
  bias = 96;                                                             % ASCII code of a = 97, i.e. 'a' - bias -> 1 and 'z' - bias -> 26.
  
  for i = 1 : numel(str)
    v(str(i) - bias) = v(str(i) - bias)  + 1;               % increment frequency of i-th character.
  end

end  
% Function [out] = f(n)

function [out] = Chapter7TryIt1(n)
% Objective: Estimate complexity of a function based on its code. 
% Estimated complexity: O(n^2).
% and use Octave Profiling facilities to validate:
% profile on;
% ChapterTryIt1(1000);
% profexport('Chapter7TryIt1', 'Function Profiling');
% Input: 
%   n - 1x1 positive integer.
% Output:
%   out - 1x1 double - sum_{i = 1}^{n}sum_{j = 1}^{n} {i * j}.
%   Chapter7TryIt1 - folder of html files containing execution times, number of calls,
%   and percent of total time of each of the involved functions.
% Author: Chris B. Kirov
% Date: 07.09.2017      

  out = 0;
  
  for i = 1 : n
    
    for j = 1 : n
      out = out + i * j;  
    end
    
  end    
  
end  
% Estimated complexity: O(n^2)
% Operations         Number
% additions            n^2
% subtactions        0
% multiplications  n^2
% divisions            0
% assignments      2n^2 + 1     (i, j, out)
% function calls     0
% TOTAL               4n^2 + 1
% O(n^2) - polynomial.



 
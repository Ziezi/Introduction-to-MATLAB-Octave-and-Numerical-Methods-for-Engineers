% Script demonstrating writing to a .txt file; using functions: fopen, fprintf, fclose.
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear 
close all

fid = fopen('D:\\Matlab Projects\\Intro to MATLAB - Octave\\Chapter10TryIt2.txt',  'w+');

if fid < 0
  error('Chapter10TryIt2::Can''t open output file!')  
end  

for i = 1 : 5
  
  fprintf( fid, '%d %d %d \n', i, i^2, i^3 );  % newline \n not reflected in the text file.
  
end

fclose(fid); 
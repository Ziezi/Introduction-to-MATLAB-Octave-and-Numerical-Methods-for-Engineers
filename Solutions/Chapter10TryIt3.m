% Script demonstrating reading from a .txt file and using functions: fopen, fgetl and str2num.
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear all
close all

fid = fopen('Chapter10TryIt2.txt', 'r');                % open text file for reading.

if fid == -1
  error('File not found!');  
end  

M = [ ];                                                                  % array to store numeric data.

while (line = fgetl(fid)) != -1                             % read line by line; each line is string.  
  M = [M ; str2num(line)];                                  % convert string to numeric values.
end  

fclose(fid); 

M                                                                            % print contents of M
 

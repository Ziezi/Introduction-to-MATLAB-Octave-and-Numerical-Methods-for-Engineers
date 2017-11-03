% Script demonstrating writing to Microsoft Excel files, .xls and the use of function: xlswrite.
% Error message due to bug made me add the line: r_extnd = 0; in the beginning of function: xlswwrite.m in: io package.
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear
close all

pkg load io                                                             % include dependencies containing function xlswrite
pkg load windows                                                  % include xls interface java support

A = rand(100, 10);                                                % create 100x10 array of random doubles between 0 and 1.
                                                                            
status = xlswrite( 'Chapter10TryIt4.xls', A);     % create a .xls file and write the contents of A in it.

if status == -1
  error('Cannot write to .xls file!');  
end  


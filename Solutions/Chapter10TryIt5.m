% Script demonstrating reading a .xls file and the use of functions: xlsread().
% Author: Chris B. Kirov
% Date: 13.09.2017  
clc
clear all
close all

fileName = 'Chapter10TryIt4.xls';
excelSheet = 'Sheet1';
excelRange = 'A1:E5';

A = xlsread(fileName, excelSheet, excelRange)

% Script for verifying the validity of the functions
% from Chapter8 Ex 1 and Ex2, based on their opposite actions.
% Author: Chris B. Kirov
% Date: 07.09.2017      
clc
clear all
close all

d = 12654

res = Chapter8Exercise1(Chapter8Exercise2(d))

res == d


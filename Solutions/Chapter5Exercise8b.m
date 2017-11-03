% Script for testing: [roll] = myMonopolyDice().
% Author: Chris B. Kirov
% Date: 30.08.2017  
clc; clear; close all;

% preallocate memory for 100000 elements
size = 10000;
rolls = zeros(1, size);

% simulate 100000 dice rolls
for i = 1 : size
    rolls(i) = Chapter5Exercise8();  
endfor  

% plot a histogram of the values of array: rolls
binsNumber = 25;
hist(rolls, binsNumber)
xlabel('Sum of two Rolled Dice')
ylabel('Number of Occurences')
title('Histogram of Monopoly Dice Rolls')
legend('Sample size: 10^5 rolls')
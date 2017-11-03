% Script drawing the student grade distribution as a pie chart.
% Author: Chris B. Kirov
% Date: 16.09.2017 
clc
clear
close all

gradeDist = [42, 85, 67, 20, 5];      % Student grade distribution.

fh = figure();

ph = pie(gradeDist);

% Make labels contain both percentages and labels.

phText = findobj(ph, 'Type', 'text'); % Extract text objects from: ph and store array phText.

percents = get(phText, 'String');     % Get the percentage of each part as a string value.

grades = ['A: '; 'B: '; 'C: '; 'D: '; 'E: ']; % Define the rest of the labels.

labels = strcat(grades, percents);    % Combined text.

% Get old label positions. (for possible position adjustment.)
%oldPos_cell = get(phText, 'Extent')
%oldPos = cell2mat(oldPos_cell)       % convert to numeric array.

for i = 1 : numel(labels)             % assign new labels containing Text and percentage.
  set(phText(i), 'String', labels(i));
end  

title('Student grade distribution');

absolutepath = 'D:\Matlab Projects\Intro to MATLAB - Octave\';
filename = sprintf('%sChapter11Exercise5.pdf', absolutepath);
print(fh, filename);

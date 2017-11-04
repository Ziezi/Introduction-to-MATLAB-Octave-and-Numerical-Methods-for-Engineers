% Script making Table of Contents consisted of 
% a brief description of each .m file, along with
% information regarding the Chapter and Exercise it belongs to.  
% Author: Chris B. Kirov
% Date: 02.11.2017
clc; clear; close all;

  % Create a text file.
  file_id = fopen('D:\Matlab Projects\Intro to MATLAB - Octave\TableOfContents.txt', 'at');
  
  % Check if opened successfully.
  if file_id < 0
     error('MakeTableOfContents.m::Can''t open output file!'); 
  end 

  % Collect all file names with extension: .m.
  directory_name = 'D:\Matlab Projects\Intro to MATLAB - Octave\';
  files  = dir( fullfile( directory_name, 'C*.m') ); % list all: .m files starting with: 'C'.
  files = { files.name }';                                        % get file names.
   
  current_chapter = '\n';                                        % Write every chapter only once.
  index = 1;                                                             % Chapter exercise index.
  
% Go through all Chapter and Exercise Numbers.
for i = 1 : numel(files)  
  file_name = files{i};
  clc
  % Get Chapter Number. 
  expression1 = '(?<=Chapter)(\d{0,2})';
  chapter_number = regexp(file_name,  expression1, 'match');
  
  % Get Exercise Number. 
  expression2 = '(Exercise|TryIt|Example)(\d{0,2})([a-z]{0,3})';
  exercise_number = regexp(file_name,  expression2, 'match');
  
  % Read the .m file and store its contents in a string.
  file_content = fileread(file_name);                        

  % Function files: search for text between keywords: "Objective" and "% Input".
  % Script files: search for text between keywords: "Script" and "% Author".
  expression3 = '(((?<=% Objective:)(.*?)(?=% Input))|((Script)(.*)(?=% Author)))'; 
   % make dot-star (.*) non-greedy by adding '?', to return only first match.
  content_description = regexp(file_content,  expression3, 'match');
   
  % Write Contents in text file.
  if strcmp(current_chapter, chapter_number) == 0 % write chapter only once
     current_chapter = chapter_number;
     index = 1;
      
     fprintf( file_id, '\nChapter %s\n', chapter_number{1} );    
  end    
  
  fprintf( file_id, '\n%d.%s:%s', index, exercise_number{1}, content_description{1} );                                                  
 
  index = index + 1;
  
end

fclose(file_id);                                                      % deallocate resources.

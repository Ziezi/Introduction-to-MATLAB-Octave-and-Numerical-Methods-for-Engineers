% Script to include Ghostscript to Octave path

% Check contents of current startup file.
% strsplit(getenv("PATH"), ';')

cmd_path = getenv ("path"); 

% add this new directoty to Octave path
gs_path = 'C:\Program Files\gs\gs9.21\bin'; 

if (isempty (strfind (cmd_path, gs_path)))
  setenv ('path', strcat (cmd_path, pathsep (), gs_path)); 
endif
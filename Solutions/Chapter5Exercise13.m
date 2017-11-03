% Function [node] = myConnectivityMat2Struct(C, names)

function [node] = Chapter5Exercise13(C, names)
% Objective: Construct a Adjacency List from Adjacency Matrix (from nodes of unidirected graph). 
% Input:
%   C - NxN one-directional connectivity  matrix.  
%   names - string array with names of points.  
% Output:
%   node - struct with fields: name and a row vector: neighbors containing indexes j for which C(i, j) = 1.
% Author: Chris B. Kirov
% Date: 30.08.2017      
  
  for i = 1 : length(names)                                    % traverse all names
    
    node(i).name = names(i);                                 % create node; assign name
        
    for j = 1 : size(C, 2)
      
      if (C(i, j) == 1)     
        node(i).neighbors(end + 1) = j;                   % add connected neigbours 
      end
      
    end
        
  end  
    
end  
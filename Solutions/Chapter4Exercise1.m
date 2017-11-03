% Function [tip] = myTipCalc(bill, party)

function [tip] = Chapter4Exercise1(bill, party)
% Objective: Calculate the tip based on number of people and bill.  
% Input:
%   bill - 1x1 double - amount of money.
%   party 1x1 integert - numbe of people. 
% Output:
%   tip - 1x1 double - tip based on bill and number of people.   
% Author: Chris B. Kirov
% Date: 27.08.2017         

  assert(party > 0 && bill > 0, 'Ch4Ex1::Invalid Arguments::negative values!');
    
  if (party < 6)
    tip = bill * 0.15;
  elseif (party >= 6 && party < 8)
    tip = bill * 0.18;
  elseif (party >= 8 && party < 11)
    tip = bill * 0.20;
  elseif (party > 11)
    tip = bill * 0.25;
  end  
    
end  
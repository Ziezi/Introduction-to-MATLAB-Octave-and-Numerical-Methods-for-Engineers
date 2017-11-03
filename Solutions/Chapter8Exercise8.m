% Function [] = myFibTimer ()

function [ ] = Chapter8Exercise8 ( )
% Objective: Compare complexity (based on run time plot)  
% of recursive and iterative implementations of functions returning Fibonacci Numbers.  
% Input:
%   -
% Output:
%  - plot of runtimes.
% Author: Chris B. Kirov
% Date: 11.09.2017    

  fibNumber = [ ];
  iterRunTime = [ ];
  recurRunTime = [ ];

  iBeg = 5;
  iEnd = 20;
  iStep = 1;
 
  for n = iBeg : iStep : iEnd
    
    tic
      f1 = Chapter6TryIt3(n);
    iterTime = toc;
      
    tic
      f2 =  Chapter6TryIt2(n);
    recurTime = toc;
    
    fibNumber(end + 1) = n;
    iterRunTime(end + 1) = iterTime;
    recurRunTime(end + 1) = recurTime;
                     
  end  
 
  plot(fibNumber, recurRunTime, 'b-', fibNumber, iterRunTime, 'g-');
 
  xlabel('Fibonacci Number');
  ylabel('Completion Time [sec]');
  
  axis([iBeg iEnd -1 1]);
  legend('Recursive', 'Iterative'); 
  
  title('Run time of recursive and iterative implementation of Fibonacci numbers.');
  grid on;
end  
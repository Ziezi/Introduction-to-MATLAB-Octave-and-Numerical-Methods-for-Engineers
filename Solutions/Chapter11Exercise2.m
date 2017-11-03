% Script drawing sublots with different axis scale of the same function.
% Author: Chris B. Kirov
% Date: 16.09.2017 
clc
clear
close all

x = linspace(0.1, 100, 10);
denominator = ( 1 - (x.^2) ).^2 + (0.1 .* x.^2);

if all(denominator) == 0                                       % Check for divisions by 0.
  error('Function has undefined value: y = 1/0 !');  
end  

numerator = 100 .* (1 - (0.01 .* x.^2) ).^2 + (0.02 .* x.^2);

y = sqrt(numerator / denominator);                    % Calculate function values.

fh = figure();                                                         % Get figure handle.

subplot(2, 2, 1);                                                    % Create subplot.
plot(x, y, 'ro-');
title('Linear');
xlabel('x');
ylabel('y');
 
description = "y(x) = \\surd{{100(1-0.10x^2)^2+0.02x^2}/{(1-x^2)^2+0.1x^2}}";
l = legend(description);
set(l, "location", "northoutside");

subplot(2, 2, 2);
semilogx(x, y, 'gs-.');
title('SemiLogX');
xlabel('logx');
ylabel('y');
 
subplot(2, 2, 3);
semilogy(x, y, 'b>-.');
title('SemiLogY');
xlabel('x');
ylabel('logy');
 
subplot(2, 2, 4);
loglog(x, y, 'm<-.');
title('LogLog');
xlabel('logx');
ylabel('logy');

absolutepath = 'D:\\Matlab Projects\\Intro to MATLAB - Octave\\';
filename = sprintf('%sChapter11Exercise2.pdf', absolutepath);
print(fh, filename);
 


 
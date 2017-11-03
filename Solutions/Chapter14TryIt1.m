% Script showing Linear Interpolation.
% Author: Chris B. Kirov
% Date: 23.09.2017  

x = [0,1,2];                                                            % data set.
y = [1,3,2];

x0 = 1.5;                                                                % use Linear Interpolation to get y0 from x0.
y0 = interp1(x, y,  x0)                                           

plot(x, y, 'b', x0, y0, 'g*')
xlabel('x')
ylabel('y')
title('Linear Interpolation at x = 1.5.')

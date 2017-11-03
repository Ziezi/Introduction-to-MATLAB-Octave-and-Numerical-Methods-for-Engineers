% Script applying [Beta] = myLSParams (f, x, y)
% Author: Chris B. Kirov
% Date: 23.09.2017  
clc
clear
close all

f = { @(x) x.^0, @(x) x.^1 };                              % estimation function is consisted of these basic functions.
% f = { @(x) x.^0, @(x) x.^1, @(x) x.^2, @(x) x.^3};      

x = [0,1,2,3,4,5];                                                   % independent variable.

y = [2.1, 7.7, 13.6, 27.2, 40.9, 61.1];                 % column vector of the dependent variable.

b = Chapter13Exercise2 (f, x, y)                        % coefficients in the linear combination of the basic functions of the estimator.

hold on
plot(x, y, 'o')                                                          % display data points.
plot( x, f{1}(x) * b(1) + f{2}(x) * b(2) )            % display approximation. 
%plot( x, f{1}(x) * b(1) + f{2}(x) * b(2) + f{3}(x) * b(3) + f{4}(x) * b(4) )            
hold off

xlabel('x')
ylabel('y')
title('Linear Regression Approximation.')
label1 =  sprintf('Data: %d points.', size(x, 2) );
label2 = sprintf( 'Approx: Estimator(x) = %d%s + %d%s', b(1), func2str(f{1}), b(2), func2str(f{2}) );
% label2 = sprintf( 'Approx: Estimator(x) = %d%s + %d%s', b(1), func2str(f{1}), b(2), func2str(f{2}), b(3), func2str(f{3}) , b(4), func2str(f{4}) );
legend(label1, label2)
% Script applying quiver() 
% to generate vector field diagram.
% Author: Chris B. Kirov
% Date: 12.11.2017 


%{
k = 8.987E9; % Coulomb's constant
p = [1,1; 2,2; 3,3];
Q = [1; 2; 3];
[X,Y] = meshgrid( 0 : 0.05 : 4, 0 : 0.05 : 4 ); % Create a grid of coordinates where V is to be calculated

V = 1 ./ ( sqrt( x.^2 + y.^2 ) );
gradV =  jacobian( V, [x, y] );

Vfun = @(x, y) eval( vectorize(V) );
Vxfun = @(x, y) eval( vectorize( gradV(1) ) );
Vyfun = @(x, y) eval( vectorize( gradV(2) ) );

contour(X, Y, Vfun(X, Y), 10);
hold on
quiver(X, Y, Vxfun(X, Y), Vyfun(X,Y), 0.5);
%}

q = 1;
a = 1;
b = 1;

[xx,yy] = meshgrid([1 : 0.1 : 5]);
 
Ex = q * xx./( ( xx - 1 ).^2+ ( yy - 2.5 ).^2).^(3/2);
Ey = q * yy./( ( xx - 1 ).^2+ ( yy - 2.5 ).^2).^(3/2);

quiver(xx,yy,Ex,Ey);
 
 
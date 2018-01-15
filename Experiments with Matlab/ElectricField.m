clc; clear; close all;

e_0 = 8.987E9;                                                    % Coulomb's constant
xy = [1, 2.5; 4, 2.5];                                               % particle coordinates.
q = [-1; 1];                                                             % particle charge.

sBeg = 0;
sStep = 0.1;
sEnd = 5;
[X,Y] = meshgrid(sBeg : sStep : sEnd);           % generate a 2D-coordinate grid 

V_E = zeros( size(X) );                                       % initialise electric potential field.

for i = 1:numel(q)                                                % add the electric potential fields of each charge
  
    V_E = V_E + e_0 * q(i) ./ hypot( xy(i,1) - X, xy(i, 2) - Y );
    
end

[Ex, Ey] = gradient(V_E);
Ex = -Ex;
Ey= - Ey;


[cl, hc] = contourf(X,Y, log(V_E) );
ylabel( cb = colorbar, 'Electric Potenial [V]' )
set( cb, 'yticklabel', exp( get(cb,  'ytick' ) ) )



  
 

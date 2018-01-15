% MatrixTransformations.m Script demonstrating Matrix (transformation) applied to a vector,
% by drawing a plot of the vector before and after the matrix multiplication.
% Matrix Eigenvectors, eigenvalues and determinant and their relevance to a transformation.
% Author: Chris B. Kirov
% Date:05.11.2017
clc; clear; close all;

% 2D Vectors starting from the origin are described as points.
x= -1.0 : 0.2 :1.0;                                                 % x - coordinates. 
y= -1.0 : 0.2 :1.0;                                                 % y - coordinates.
 
[p, q] = meshgrid(x, y);                                        % all combinations of x and y.                                              
v = [ p(:), q(:) ]';                                                   % 2D column vector.

% Transformations.
psi = 0.46364;                                                       %[rad].  
A = [ 1.0, 0.0; tan(psi), 1.0 ];                              % shear along y-axis.  tan(psi) = 0.5. 
A(:, :, 2) = [ 1.0, tan(psi); 0.0, 1.0 ];                  % shear along x-axis.  
A(:, :, 3) = [ 1.0, tan(psi); tan(psi), 1.0 ];          % shear along x & y-axis.  
theta = pi / 4;                                                         % [rad].
A(:, :, 4) = [ cos(theta), -sin(theta); sin(theta), cos(theta)];  % rotation at theta [rad] around 0,0 conter clockwise.  
scale_factor = 1.3;
A(:, :, 5) = [ 1.0 * scale_factor, 0; 0, 1.0 ];      % scale along x - axis.  
A(:, :, 6) = [ 1.0, 0; 0, 1.0 * scale_factor];       % scale along y-axis.  
A(:, :, 7) = [ 1.0 * scale_factor, 0; 0, 1.0 * scale_factor];  % scale along x & y-axis.  

transformation = { "shearY", "shearX", "shearXY", "rotateO", "scaleX", "scaleY", "scaleXY" };

for i = 1 : size(A, 3)
  
  clf
  
  eigenvalues = eig(A(:, :, i));                              % scaling.
  angle_of_eigenvalues = arg(eigenvalues);       % angle of rotation.
  determinant = det(A(:, :, i));                              % expansion / contraction.
 
  v_prime = A(:, :, i) * v;                                      % v' = Av. 

  subplot(1, 2, 1);
  plot(v(1, :),  v(2, :), 'ro', 'MarkerFaceColor', [1 0 0]);
  axis([-2 2 -2 2]);
  xlabel('x');
  ylabel('y');
  title('Initial');
  daspect([1 1]);
  
  scl = 'yes';
  if ( all(eigenvalues == 1) )
    scl = 'no';  
  end
  
  rot = 'yes';
  if ( all(angle_of_eigenvalues == 0) )
    rot = 'no';  
  end
  
  arc = 'yes';
  if determinant == 1
    arc = 'no';  
  end  
  
  txta = sprintf('Scaling: %s.', scl);
  txtb = sprintf('Rotation: %s.', rot);
  txtc = sprintf('Area Change: %s.', arc);
  
  guess = {txta, txtb, txtc};
  text(-2, 1.5, guess);

  subplot(1, 2, 2);
  plot(v_prime(1, :),  v_prime(2, :), 'bo', 'MarkerFaceColor', [0 0 1]);
  axis([-2 2 -2 2]);
  xlabel('x');
  ylabel('y');
  title( sprintf( 'After %s transformation.', transformation{i} ) );
  daspect([1 1]);
  
  txt1 = sprintf('Eigenvalues, \\lambda = %.2f, %.2f.', eigenvalues);
  txt2 = sprintf('\\lambda-angles = %.2f, %.2f.', angle_of_eigenvalues);
  txt3 = sprintf('det = %.2f.', determinant);
  
  str = {txt1, txt2, txt3};
  text(-2, 1.5, str);
  
  drawnow
  
  file_name = sprintf('D:/Matlab Projects/Experiments with Matlab/%sTransformation.pdf', transformation{i} );
  print(file_name);
  
end


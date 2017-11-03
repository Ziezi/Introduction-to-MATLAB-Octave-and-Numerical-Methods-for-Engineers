<h1>Repository Content:</h1>



<h2>Chapter 1</h2>

1.Exercise13: Implement Ramanujan’s formula for pi approximation.


<h2>Chapter 3</h2>

1.Example: Add three numbers.  


2.Exercise1: Calculate $sinh(x)$.


3.Exercise10: generate variety or error messages. 


4.Exercise11: Output a greeting message to a person with specific name and age.  


5.Exercise12: Calculate the area of a donut.  


6.Exercise13: Find indexes of elements within array that satisfy: $|A[i] - a| < eps$.   


7.Exercise14: Modify the values of an array such that they satisfy: $min < val < max$. 


8.Exercise14b:Script applying `[boundedA] = myBoundingArray(A, top, bottom)`.


9.Exercise2: Create a matrix filled with 1's in checker board pattern.


10.Exercise3: Calculate area of a triangle.


11.Exercise4: Split a matrix into two column-wise.


12.Exercise5: Calculate cylinder area and volume.  


13.Exercise6: Find numbe of odd values in an array.


14.Exercise7: Create a matrix filled with 2's.


15.Exercise8: Concatenate two strings.


16.Exercise9: Create an object consisted of 3 fields.  


17.TryIt1: Calculate simple trigonometric sums.   


18.TryIt2: Calculate all the distances between 3 coordinates.  


19.TryIt3: Add one to a function. 


20.TryIt4:Script file for computing Cylinder Volume and Surface Area.


<h2>Chapter 4</h2>

1.Exercise1: Calculate the tip based on number of people and bill.  


2.Exercise2: Implement a simple calculator.  


3.Exercise3: Find whether a point is inside, outside or on the boundary of a regular polygon.


4.Exercise3b:Script for testing  Function `[S] = myInsidePolygon(polygon, point)`.


5.Exercise4: Modify an array to specific length, padded with 0's at end / trimmed if necessay.


6.Exercise5: Modify an array to specific length, padded with 0's at end / trimmed if necessay. No if else statements.


7.Exercise6: Represent a grade as a letter, `[A+, F]`, based on a  given percentage `[0, 100]`. (Map 40 to 12.) 


8.Exercise7: Verify if sensor readings are measuring same variable.


9.Exercise8: Find the roots of a quadratic equation over \mathcal{C}.  


10.Exercise9: Define a piecewise function according to: $f(x) if x <= a; g(x) if x >= b$, and $0$ otherwise. 


11.TryIt1: Make a thermostat switch based on temperature readings.  


12.TryIt2: Print the parity of a number.  


13.TryIt3: Calculate area or circumference of circle based on argument value .  


<h2>Chapter 5</h2>

1.Exercise10: Find first N primes by trial division.   


2.Exercise11: Find first N Fibonacci that are also Primes.


3.Exercise12: Create a matrix, $Q$, where if $M(i,j)$ - even, $Q(i,j) = sin( p_i / M(i, j) )$; $cos( p_i / M(i, j) )$ otherwise.     


4.Exercise13: Construct a Adjacency List from Adjacency Matrix (from nodes of unidirected graph). 


5.Exercise13b:Script for applying `[node] = myConnectivityMat2Struct(C, names)`.


6.Exercise2: write custom function to find max element in array of doubles. 


7.Exercise3: Find the M largest array elements.   


8.Exercise4: Create a matrix, $M$, with values equal to $sin( A(i,j) )$, if value at $A(i,j)$ - even or $cos( A(i,j) )$, if odd.  


9.Exercise5: Implement matrix multiplication.   


10.Exercise5b:Script applying `[M] = myMatMult(P,Q)`.


11.Exercise6: Years needed to achieve final balance based on initial balance and interest rate.   


12.Exercise7: Find all array indexes containing specific value.   


13.Exercise8: Simulate rolling two dice. (Roll again if same and sum altogether.)  


14.Exercise8b:Script for testing: `[roll] = myMonopolyDice()`.


15.Exercise9: Find if n is prime by trial division.   


16.TryIt1:Script for determining the number of additions in one processor clock cycle.


<h2>Chapter 6</h2>

1.Exercise1: Sum of array elements.   


2.Exercise10: Construct NxN matrix of 0's and 1's in spiral pattern using iteration.  


3.Exercise11: Demonstrate infinite recursion and reaching max depth error message.


4.Exercise13: Solve Towes of Hanoi iterarively.  


5.Exercise15: Sort an integer array using iterative Quick Sort.  


6.Exercise2: Obtain $T_n(x)$ (n-th Chebyshev polynomial of 1st kind) from the recurrence relation: $T_n(x) = 2 * x * T_n-1(x) + T_n-2(x)$, with: $T_0 = 1, T_1 = x$.   


7.Exercise2b: Script for ploting various orders of Chebyshev Polynomials of first kind


8.Exercise3: Obtain Ackerman function from the recurrence relation: $A(x,y) = A(x - 1, A(x, y - 1))$, with $A(0,y) = y + 1$ and $A(x, 0) = A(x - 1, 1)$.  


9.Exercise4: Calculate combinations of k elements out of set containing n.

% from the recurrence relation: $C(n, k) = C(n - 1, k - 1) + C(n - 1, k)$, with $C(j, j) = 1$ and $C(n, 0) = 1$.


10.Exercise5: Express amount of money in terms of the values

% in dollar denominations: banknotes: 100, 50, 20, 10, 5, 1; coins: 0.25, 0.10, 0.05, 0.01.


11.Exercise6: Calculate the Golden Ratio from the continued fraction: $G(n) = 1 + \frac{1}{G(n -1)}$, with $G(1) = 1$; 


12.Exercise7: Calculate the Greatest Common Divisor of a and b

% from the recurrence relation: $gcd(a, b) = gcd( b, rem(a,b) )$, with $gcd(a, 0) = a$;  


13.Exercise8:  Calculate the values in a row of the Pascal Triangle

% or coefficients of m-th order binomial  (polynomial) equation.


14.Exercise9: Construct NxN matrix of 0's and 1's in spiral pattern using recursion.  


15.TryIt1: Calculate $n$ factorial, $n!$, recursively.  


16.TryIt2: Calculate the n-th Fibonacci number recursively.


17.TryIt3: Calculate the n-th Fibonacci number iteratively.  


18.TryIt3b:Script for testing compexity of iterative vs recursive Fibonacci functions.


19.TryIt4: Solve the Towers of Hanoi -recursive.


20.TryIt5: Sort an integer array using Quick Sort - recursive.


<h2>Chapter 7</h2>

1.Exercise7a: Calculate n-th Fibonacci number iteratively using predefined size array.  


2.Exercise7b: Calculate n-th Fibonacci number iteratively expanding an array on each iteration.


3.Exercise7c:Script testing execution time of function using predefined size of arrays (a) and expanding array on each iteration (b).


4.TryIt1: Estimate complexity of a function based on its code. Estimated complexity: $O(n^2)$; and use Octave Profiling facilities to validate: `profile on; ChapterTryIt1(1000); profexport('Chapter7TryIt1', 'Function Profiling')`;


5.TryIt2: calculate n-th Fibonacci using iterative implementation (with memoization?).  


6.TryIt3: Estimate the compexity of n-th Fibonacci using recursive implementation.  


7.TryIt4: Find number of possible division by 2 or n epxressed as 2^out and estimate complexity.


8.TryIt5:Script comparing implemented vs built-in sum function using profiler.


<h2>Chapter 8</h2>

1.Exercise1: Convert a number from binary to decimal representation.  


2.Exercise10: Find the number with specific gap (= 1). 


3.Exercise2: Convert a number from decimal to binary representation.  


4.Exercise3:Script for verifying the validity of the functions from Chapter8 Ex 1 and Ex2, based on their opposite actions.


5.Exercise4: Perform addition between binary numbers.  


6.Exercise6: Convert a IEEE754 floating point to decimal.


7.Exercise7: Construct a IEEE754 binary representation from number in base10

% using custom functions and the standard specifications.


8.Exercise7ver: Convert a number from decimal to IEEE754 standard binary using built-in functions.


9.Exercise8: Compare complexity (based on run time plot) of recursive and iterative implementations of functions returning Fibonacci Numbers.  


10.TryIt1:Script demonstrating computer limited possibility of storing real numbers and its dependance on the value of the represented number: the larger the number, the larger the gap (space between two consecutive representable values).


11.TryIt2:Script showing IEEE754 single precision floating point representation: $n = (-1)^(s) * e^(1 - 127) * (f + 1)$.


12.TryIt3:Script demonstrating double precision floating point overflow and how MATLAB / Octave is handling it.


13.TryIt4:Script demonstrating underflow of double precision floating point number and how MATLAB /Octave is handling it.


<h2>Chapter 9</h2>

1.TryIt1: Demonstrate input type checking.  

<h2>Chapter 10</h2>

1.TryIt1:Script demonstrating the save and load functions; .mat files.


2.TryIt2:Script demonstrating writing to a .txt file; using functions: fopen, fprintf, fclose.


3.TryIt3:Script demonstrating reading from a .txt file and using functions: fopen, fgetl and str2num.


4.TryIt4:Script demonstrating writing to Microsoft Excel files, .xls and the use of function: xlswrite.

% Error message due to bug made me add the line: r_extnd = 0; in the beginning of function: xlswwrite.m in: io package.


5.TryIt5:Script demonstrating reading a .xls file and the use of functions: xlsread().


<h2>Chapter 11</h2>

1.Exercise1:Script drawing a 2D plot of a cycloid.


2.Exercise10: Plot vertcies of Sierpinski Triangle. 


3.Exercise11: Draw Barnsley Fern.  


4.Exercise12: Plot a 3D parametric curve.


5.Exercise12b:Script aplying: `[ ] = myParametricPlotter(f, g, t)`.


6.Exercise13: Plot contour or `surf`.  


7.Exercise13b:Script applying `[] = mySurfacePlotter(F, x, y, option)`.


8.Exercise2:Script drawing sublots with different axis scale of the same function.


9.Exercise3:Script drawing two functions on same plot.


10.Exercise4:Script comparing `hist` vs `bar`.


11.Exercise5:Script drawing the student grade distribution as a pie chart.


12.Exercise6:Script drawing four 3D suplots of: `surf`, `mesh`, `contour` and `contourf`.


13.Exercise7: Plot a n-side regular polygon.  


14.Exercise8: Use `func2str` to display a function formula on a plot.


15.Exercise8b:Script testing `myFunPlotter(f, x)`.


16.Exercise9: Plot polynomials of various degrees.  


17.Exercise9b:Script applying `[] = myPolyPlotter(n, x)`.


18.TryIt1:Script showing basic data visualization via function `plot()`.


19.TryIt10:Script showing 3D plotting and the use of function `plot3()`.


20.TryIt11:Script showing the use of `meshgrid`.


21.TryIt12:Script showing 3D graphs using `surf` and `contour`.


22.TryIt13:Script showing animation of sine wave by successive redrawing of a plot; ctrl + C  to quit.


23.TryIt14:Script showing animation created of successive frames and saved as movie.


24.TryIt14b:Script showing animation created of successive frames which then are converted to movie with the help of other program; Implementation using: ImageMagick/mencoder to manipulate the frames.


25.TryIt2:Script showing a generating of data and displaying it as a function graph.


26.TryIt3:Script showing a function graph with additional paramaters specifying line color and mark type.


27.TryIt4:Script showing plotting multiple data sets on same graph.


28.TryIt5:Script showing the use of graph labels and title.


29.TryIt6:Script showing the use of sprintf in `title()`.


30.TryIt7:Script showing the use of `legend()`.


31.TryIt8:Script showing the use of `axis()` and `grid`.


32.TryIt9:Script for generating various subplots and demonstrate the use of functions: `subplot`, `plot`, `scatter`, `bar`, `loglog`, `semilogx`, `semilogy`. 


<h2>Chapter 12</h2>

1.Exercise2: Find if two vectors are orthogonal up to a specific accuracy.


2.Exercise2b:Script applying myIsOrthogonal(v1, v2, tol).


3.Exercise3: Find if two string are similar (additionally showing Cosine Similarity.)


4.Exercise4: Find linear independent columns. (basis) of a matrix.  


5.Exercise4b:Script tesing myMakeLinInd()


6.Exercise5: Calculate determinant of a matrix

% using recursive Cramer's Rule of expanding into minors.


7.Exercise5b:Script applying [D] = myRecDec(M) and comparing it to the built-in: det().


8.Exercise7: Calculate derivative of a polynomial.

% (differentiating / integrating of polynomials is a linear transformation.)


9.Exercise8: Solve a system of linear equations. Cover all possibilities. 


10.Exercise8b:Script applying [N, x] = myNumSols (A, b).


11.Exercise9: Determine power flow along a network edges, based on power generation and demand nodes.  


12.Exercise9b:Script applying [f] = myFlowCalculator(S, d)


13.TryIt1:Script showing the use of function norm().


14.TryIt10:Script showing a validation of the method for Solving a Linear System of Equations.


15.TryIt11:Script showing Method for finding Solutions of System of Linear Equations.

% In particular, the case of overdetermined system with existing solution.


16.TryIt12:Script showing Method for finding Solutions of System of Linear Equations.

% In particular, the case of infinite numer of solutions.


17.TryIt13:Script demonstrating that a linear combination of solutions of Ax = y 

% and null space vectors of A are still solutions.


18.TryIt2:Script calculating the angle between two vectors.


19.TryIt3:Script showing  a vector expressed as a linear combination.


20.TryIt4:Script checking vector linear dependence.


21.TryIt5:Script showing matrix multiplication error due to inner-dimension mismatch.


22.TryIt6:Script showing det() and the effect of the identity matrix in multiplication.


23.TryIt7:Script showing the use of determinants for finding if matrix is singular; inverse matrices.


24.TryIt8:Script showing Method for checking if a System of Linear Equations has a solution.


25.TryIt9:Script showing Method for finding Solutions of System of Linear Equations.

% In particular, the case of unique solution.


<h2>Chapter 13</h2>

1.Exercise2: Least Square Regression (as a solution of System of Linear Equations).  


2.Exercise2b:Script applying [Beta] = myLSParams (f, x, y)


3.Exercise3: Least Square Regression with linearized exponential functions.  


4.Exercise3b:Script applying [alpha, beta] = myExpFit (x,y).


5.Exercise5:Script applying [beta] = myLinRegression (f, x, y), which is same as Chapter13Exercise2(f, x, y).


6.Exercise6:Script applying [alpha, beta] = myExpRegression (x,y), same as Chapter13Exercise3(x,y).


7.TryIt1:Script demonstrating the equivalent use of 

% x = A \ y;

% x = pinv(A) * y;

% x = inv(A' * A) * A' * y;


8.TryIt2:Script demonstrating fitting a line 

% modeled by the estimation function y = alpha_1 * x + alpha_2

% to a data set using Least Squares Regression.


<h2>Chapter 14</h2>

1.Exercise1: Linear Interpolation.  


2.Exercise1b:Script applying [Y] = myNearestNeighbor (x, y, X).


3.Exercise2: Cubic Spline Interpolation.   


4.Exercise2b:Script applying [Y] = MyCubicSpline(x, y, X).


5.Exercise3: Nearest Neighbor Interpolation.  


6.Exercise3b:Script applying [Y] = myNearestNeighbor (x, y, X).


7.Exercise5: Cubic Spline (Flat) Interpolation (constraints on end points equal to 0).


8.Exercise5b:Script comparing  [Y] = MyCubicSplineFlat(x, y, X) and [Y] = MyCubicSpline(x, y, X).


9.Exercise6: Quintic Spline Interpolation.   


10.Exercise6b:Script applying [Y] = MyQinticSpline(x, y, X).


11.Exercise7: Plot interpolated data using method specified by argument value.  


12.Exercise7: Plot interpolated data using method specified by argument value. Use built-in functions.


13.Exercise7b:Script applying [ ] = myInterpPlotter (x, y, X, option)


14.Exercise8: Cubic Spline Interpolation with slope at end points specified by argument value.


15.Exercise8b:Script applying [Y] =myDCubicSpline (x, y, X, D).


16.Exercise9: Lagrange Polynomial Interpolation. 


17.Exercise9b:Script applying [Y] = myLagrange(x,y,X).


18.TryIt1:Script showing Linear Interpolation.


19.TryIt2:Script showing Cubic Spline Interpolation using built-in functions.


20.TryIt3:Script showing how to find polynomials coefficients used in Cubic Spline Interpolation.


21.TryIt4:Script showing interpolation using Lagrange Polynomials.


<h2>Chapter 15</h2>

1.Exercise3:  Function e^{x^2} approximation through Taylor Series Expansion


2.Exercise3b:Script comparing the values of a function and its Taylor approximation.


3.Exercise4: Function e^{x} approximation through Taylor Series Expansion.    


4.Exercise4b:Script comparing the values of a function and its Taylor approximation.


5.Exercise5b:Script comparing the errors of Taylor approximations of 

% the function: f(x) = sin(x) * cos(x) as sum of product and product of sum.


6.Exercise5c: Approximation of  cos(x) by Taylor Series Expansion.  


7.Exercise5s: Approximation of  sin(x) by Taylor Series Expansion.  


8.Exercise5sc: Approximation of  sin(x) * cos(x) by Taylor Series Expansion.  


9.Exercise6:Script showing 3rd order Taylor approximation of cosh(x) as: (e^x + e^{-x}) / 2, expanded around a = 0.


10.TryIt1:Script producing a graph of the Taylor expansion (till 3rd term) of the function sin(x) between -pi and pi.


11.TryIt2:Script comparing an approximated function value

% using up to 7th order Taylor expansion with exact value.


12.TryIt3:Script demonstrating the use of linear approximation (1st order or till 1st term)

% and its range of validity around the point of expansion.


<h2>Chapter 16</h2>

1.Exercise1: Approximate the N-th root of x using the Newton-Raphson method.  


2.Exercise2: Find interval of values where f(x) == g(x) 

% using the Bisection Method with error metric: |F(m)| < tol.


3.Exercise2b:Script applying [X] = myFixedPoints (f, g, tol, maxiter).


4.Exercise4: Show root approximation and error 

% in each successive step in finding root of f in [a,b]

% using the Bysection Method.   


5.Exercise4b:Script applying [R, E] = myBisection (f, a, b, tol).


6.Exercise5: Store successive root approximations and errors

% of f around x0 using the Newton-Raphson method.  


7.Exercise5b:Script applying [R, E] = myNewton (f, df, x0, tol)


8.Exercise6: Minimize the cost of a pipeline (in terms of the value x).


9.Exercise6b:Script for applying  [x] = myPipeBuilder (C_ocean, C_land, L, H); compared against built-in function.


10.Exercise7:Script finding a value for which the Newton step of a function oscillates indefinitely.


11.TryIt1:Script demonstrating function root approximation using fzero().


12.TryIt2:Script demonstrating function root approximation using fzero().


13.TryIt3: Find root of f in [a,b] with accuracy

% up to: tol using the Bysection Method.  


14.TryIt4:Script showing Function Root Finding via Bisection Method.


15.TryIt5: Find root of f around x0 with 

% accuracy up to: tol, using the Newton-Raphson Method.  


16.TryIt5b:Script demonstrating [R] = myNewton (f, dx, x0, tol).


17.TryIt6:Script showing limitations of Newton-Raphson method.

% In particular derivative of a function that evaluates close to 0.


18.TryIt7:Script showing limitations of Newton-Raphson method.

% In particular, the instability of convergence leading to unintended root, away from the initial guess.


<h2>Chapter 17</h2>

1.Exercise1: Implement forward, central and backward Finite Difference Method

% for approximating derivative of a function evaluated on 1D grid of size N within [a, b].


2.Exercise1b:Script applying [df, X] = myDerCalc (f, a, b, N, option).


3.Exercise2b:Script applying [dy, X] = myNumDiff(f, a, b, n, option) (same as in Exercise 1).


4.Exercise3: Smooth function values from a 1D grid

% and use them to approximate function derivative. 


5.Exercise3b:Script applying [dy, X] = myNumDiffwSmoothing (x, y, n).


6.TryIt1:Script demonstrating derivative approximation by

% calculating function value differences on a 1D grid.


7.TryIt2:Script showing the relation between grid spacing and 

% the error of Finite Difference Function Derivatives Approximation.


<h2>Chapter 18</h2>

1.Exercise1: Numerically Approximate the Integral of a function.


2.Exercise2: Implement Simpson's Method: Interpolate the input sample using Lagrange Polynomial

% and Return Approximation of the area under the curve in the interval [x_1, x_n].


3.Exercise4: Numerically Approximate the Integral of a function.


4.Exercise4b:Script applying [I] = myNumInt(f, a, b, n, option) on few test cases.


5.Exercise5:

%   Calculate the coefficients of the n-th term in Fourier Series.


6.Exercise5a: 

%   Apply [An, Bn] = myFourierCoeff (f, n) and

%   plot the result along with exact function value.


7.Exercise5b:Script applying [An, Bn] = myFourierCoeff (f, n) on few test cases.


8.TryIt1:Script demonstrating Numerical Integration Methods: Riemann, Midpoint Method.

% Approximate the integral of sin(x) in [a, b].


9.TryIt2:Script demonstrating integral approximation using Trapezoid Rule.


10.TryIt3:Script demonstrating Integration Approximation using Simpson's Rule.


11.TryIt4:Script comparing Built-in vs Custom Trapezoidal Rule implementation

% for approximating Integrals of functions.


12.TryIt5:Script demonstrating approximation of a Cumulative Integral using built-in functions.


13.TryIt6:Script demonstrating approximation of Integrals using built-in functions.


<h2>Chapter 19</h2>

1.Exercise1: Represent Logistic Equation.


2.Exercise1b:Script comparing approximation and analytic solution to the Logistis Equation.


3.Exercise2: Represent the Lorenz Equation, 

% which is a simplified system of equations describing the 2D flow of fluid.


4.Exercise2a: Solve the Lorenz Equation using ode45.


5.Exercise2b:Script showing a plot of a solution of the Lorenz Equation.

% and creating a simulation (animation) of particle trajectory (Lorenz Attractor).


6.Exercise3: Represent Mass-Spring-Damper system

% by reducing the order of the ODE describing it.


7.Exercise3b:Script showing a plot of the solutions to the Mass-Spring-Damper system

% in the cases of: no damping, underdapming, critical damping and overdamping.


8.Exercise4:  Implement Forward Euler method for ODE integration.


9.Exercise4b:Script applying [T, S] = myForwardEuler (dS, tSpan, S0)

% and comparing it to ode45 and the exact solution.


10.Exercise5: Implement fourth order Runge-Kutta method for ODE integration.


11.Exercise5b:Script applying [T, S] = myRK4(dS, tSpan, S0) and comparing it to ode45.


12.TryIt1:Script demonstrating Euler Approximation for Exponential Function.


13.TryIt2:Script demonstrating Numerical Stability of ODEs Integration schemes.


14.TryIt3:Script demonstrating built-in ODE solvers and their approximation error.


15.TryIt4:Script demonstrating built-in ODE solvers and their approximation error.


16.TryIt5:Script demonstrating built-in ODE solver: ode45.

---

OS: Windows 10<br>
IDE: Octave-4.2.1  

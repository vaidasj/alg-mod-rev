option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Elastic-plastic torsion COPS 2.0 #15 (TORSION,SEQ=243)

$ontext

Determine the stress potential in an infinitely long cylinder when
torsion is applied.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of internal grid points can be specified using the command
line parameters --nx and --ny. COPS performance tests have been
reported for nx-1 = 50, ny-1 = 25, 50, 75, 100


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Glowinski, R, Numerical Methods for Nonlinear Variational
Problems. Springer Verlag, 1984.

Averick, B M, Carter, R G, More, J J, and Xue, G L, The
MINPACK-2 Test Problem Collection. Tech. rep., Mathematics
and Computer Science Division, Argonne National Laboratory,
1992.

$offtext


$if not set nx $set nx 51
$if not set ny $set ny 26

sets nx grid points in 1st direction / x0*x%nx% /
     ny grid points in 2st direction / y0*y%ny% /

alias(nx,i),(ny,j);

parameters D(nx,ny) Distance to the boundary
           hx       grid spacing for x
           hy       grid spacing for y
           area     area of triangle
           c        some constant  /  5.0 /;

hx   := 1/(card(nx)-1);
hy   := 1/(card(ny)-1);
area := 0.5*hx*hy;

D(i,j) :=  min(min(ord(i)-1,card(nx)-ord(i))*hx,
               min(ord(j)-1,card(ny)-ord(j))*hy);

variables v(nx,ny)  defines the finite element approximation
          stress, linLower, linUpper, quadLower, quadUpper;

Equations defLL, defLU, defQL, defQU, defstress;

defLL.. linLower =e= sum((nx(i+1),ny(j+1)), v[i+1,j] + v[i,j] + v[i,j+1]);

defLU.. linUpper =e= sum((nx(i-1),ny(j-1)), v[i,j] + v[i-1,j] + v[i,j-1]);


defQL.. quadLower =e= sum((nx(i+1),ny(j+1)), sqr((v[i+1,j]-v[i,j])/hx)
                                           + sqr((v[i,j+1]-v[i,j])/hy));

defQU.. quadUpper =e= sum((nx(i-1),ny(j-1)), sqr((v[i,j]-v[i-1,j])/hx)
                                           + sqr((v[i,j]-v[i,j-1])/hy));

defstress.. stress =e= area*(   (quadLower + quadUpper)/2
                            - c*(linLower  + linUpper )/3);


model torsion / all /;

v.lo(i,j) = -d(i,j);
v.up(i,j) =  d(i,j);
v.l (i,j) =  d(i,j);

display d,hx,hy,area;

$if set workspace torsion.workspace = %workspace%;

solve torsion minimizing stress using nlp;

$exit

* eliminate intermediate variables


Equations defstressx;

defstressx..

stress =e= area*(( sum((nx(i+1),ny(j+1)), sqr((v[i+1,j]-v[i,j])/hx) + sqr((v[i,j+1]-v[i,j])/hy))
                 + sum((nx(i-1),ny(j-1)), sqr((v[i,j]-v[i-1,j])/hx) + sqr((v[i,j]-v[i,j-1])/hy)))/2
                -c*( sum((nx(i+1),ny(j+1)), v[i+1,j] + v[i,j] + v[i,j+1])
                   + sum((nx(i-1),ny(j-1)), v[i,j] + v[i-1,j] + v[i,j-1]))/3);

model torsionx / defstressx /;

$if set workspace torsionx.workspace = %workspace%;

solve torsionx minimizing stress using nlp;

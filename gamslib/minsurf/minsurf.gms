option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Minimal surface with obstacle COPS 2.0 #17 (MINSURF,SEQ=245)

$ontext

Find the surface with minimal area, given boundary conditions, and
above an obstacle.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of internal grid points can be specified using the command
line parameters --nx and --ny. COPS performance tests have been
reported for nx-1 = 50, ny-1 = 25, 50, 75, 100


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Friedman, A, Free Boundary Problems in Science and
Technology. Notices Amer. Math. Soc. 47 (2000),
854-861.

$offtext


$if not set nx $set nx 51
$if not set ny $set ny 26

sets nx grid points in 1st direction / x0*x%nx% /
     ny grid points in 2st direction / y0*y%ny% /

alias(nx,i),(ny,j);

parameters hx       grid spacing for x
           hy       grid spacing for y
           area     area of triangle;

hx   := 1/(card(nx)-1);
hy   := 1/(card(ny)-1);
area := 0.5*hx*hy;

variables v(nx,ny) defines the finite element approximation
          surf;
positive variable v;

equation defsurf;

defsurf..

surf/area =e= sum((nx(i+1),ny(j+1)), sqrt(1+sqr((v[i+1,j]-v[i,j])/hx)+sqr((v[i,j+1]-v[i,j])/hy)))
            + sum((nx(i-1),ny(j-1)), sqrt(1+sqr((v[i-1,j]-v[i,j])/hx)+sqr((v[i,j-1]-v[i,j])/hy)));

v.fx['x0'   ,j] = 0;
v.fx['x%nx%',j] = 0;
v.fx[i,'y0'   ] = 1 - sqr(2*(ord(i)-1)*hx-1);
v.fx[i,'y%ny%'] = 1 - sqr(2*(ord(i)-1)*hx-1);


v.lo(i,j)$(((ord(i)-1) >= floor(0.25/hx) and (ord(i)-1) <= ceil(0.75/hx)) and
           ((ord(j)-1) >= floor(0.25/hy) and (ord(j)-1) <= ceil(0.75/hy))) = 1;

v.l(i,j) = 1 - sqr(2*(ord(i)-1)*hx-1);

model minsurf / all /;

$if set workspace minsurf.workspace = %workspace%;

minsurf.workfactor = 2;
solve minsurf minimizing surf using nlp;

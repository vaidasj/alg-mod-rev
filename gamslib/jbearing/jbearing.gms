option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Journal bearing COPS 2.0 #16 (JBEARING,SEQ=244)

$ontext

Given the eccentricity e of the journal bearing, find the pressure
distribution in the lubricant separating the shaft from the bearing.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of internal grid points can be specified using the command
line parameters --nx and --ny. COPS performance tests have been
reported for nx-1 = 50, ny-1 = 25, 50, 75, 100


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Capriz, G, and Cimatti, G, Free Boundary Problems in the
Theory of Hydrodynamic Lubrication: A Survey. In Fasano, A,
and Primicerio, M, Eds, Resarch Notes in Mathematics. Pitman,
1983, pp. 613-635.

Averick, B M, Carter, R G, More, J J, and Xue, G L, The
MINPACK-2 Test Problem Collection. Tech. rep., Mathematics
and Computer Science Division, Argonne National Laboratory,
1992.

$offtext


$if not set nx $set nx 51
$if not set ny $set ny 51

Set  nx       / 0*%nx% /
     ny       / 0*%ny% /
alias (nx,i),(ny,j);

Scalar pi a famous constant
       b  "grid is (0,2*pi)x(0,2*b)" /10/
       e  eccentricity               /0.1/
       hx, hy grid spacing
       area area of triangle;

pi = 2*arctan(inf);
hx = 2*pi/%nx%;
hy = 2*b/%ny%;
area = 0.5*hx*hy;

Parameter wq(nx); wq(nx) = power(1+e*cos((ord(nx)-1)*hx),3);

Positive variable v(nx,ny);
Variable obj;

Equation defobj Objective function;

defobj.. obj =e=
 (hx*hy/12)*sum{(nx(i+1),ny(j+1)), (wq[i]+2*wq[i+1])*
     (sqr((v[i+1,j]-v[i,j])/hx) + sqr((v[i,j+1]-v[i,j])/hy))}+
 (hx*hy/12)*sum{(nx(i+1),ny(j+1)), (2*wq[i+1]+2*wq[i])*
     (sqr((v[i,j+1]-v[i+1,j+1])/hx) + sqr((v[i+1,j]-v[i+1,j+1])/hy))} -
  hx*hy*sum {(nx,ny), e*sin((ord(nx)-1)*hx)*v[nx,ny]};

* Starting point
v.l[nx,ny] = max(sin((ord(nx)-1)*hx),0);

v.fx[nx,   '0'] = 0;
v.fx[nx,'%ny%'] = 0;
v.fx[   '0',ny] = 0;
v.fx['%nx%',ny] = 0;

model bearing /all/;

$if set workspace bearing.workspace = %workspace%;

bearing.workfactor = 2;
solve bearing minimizing obj using nlp;



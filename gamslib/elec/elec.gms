option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Distribution of electrons on a sphere COPS 2.0 #2 (ELEC,SEQ=230)

$ontext

Given n electrons, find the equilibrium state distribution (of
minimal Coulomb potential) of the electrons positioned on a
conducting sphere.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of electrons can be specified using the command line
parameter --np. COPS performance tests have been reported for np = 25,
50, 100, 200


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Morris, J R, Deaven, D M, and Ho, K M, Genetic Algorithm
Energy Minimization for Point Charges on a Sphere. Phys.
Rev. B. 53 (1996), R1740-R1743.

Saff, E B, and Kuijlaars, A, Distributing Many Points on
the Sphere. Math. Intelligencer 19 (1997), 5-11.

$offtext

$if     set n  $set np %n%
$if not set np $set np 25

Set i       electrons /i1 * i%np%/
    ut(i,i) upper triangular part;

Alias (i,j);
ut(i,j)$(ord(j) > ord(i)) = yes;

Variables   x(i) x-coordinate of the electron
            y(i) y-coordinate of the electron
            z(i) z-coordinate of the electron
            potential Coulomb potential;

Equations   obj     objective
            ball(i) points on unit ball;

obj.. potential =e=
  sum{ut(i,j), 1.0/sqrt(sqr(x[i]-x[j]) + sqr(y[i]-y[j]) + sqr(z[i]-z[j]))};

ball(i).. sqr(x(i)) + sqr(y(i)) + sqr(z(i)) =e= 1;


* Set the starting point to a quasi-uniform distribution
* of electrons on a unit sphere

scalar pi a famous constant;
pi = 2*arctan(inf);

parameter theta(i), phi(i);
theta(i) = 2*pi*uniform(0,1);
phi(i)   = pi*uniform(0,1);

x.l(i) = cos(theta(i))*sin(phi(i));
y.l(i) = sin(theta(i))*sin(phi(i));
z.l(i) =               cos(phi(i));

model elec /all/;

elec.workfactor = 5;
solve elec using nlp minimizing potential;

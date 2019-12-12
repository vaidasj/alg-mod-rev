option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Largest small polygon COPS 2.0 #1 (POLYGON,SEQ=229)

$ontext

Finds the polygon of maximal area, among polygons with nv sides and
diameter d <= 1.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of sides can be specified using the command line parameter
--nv. COPS performance tests have been reported for nv = 25, 50, 75,
100


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Graham, R L, The Largest Small Hexagon. J. Combin. Th. 18 (1975),
165-170.

Gay, D, AMPL Models.

$offtext


$if     set n  $set nv %n%
$if not set nv $set nv 25

set i sides / i1*i%nv% /;

alias (i,j);

scalar pi a famous constant;


positive variables
   r(i)      polar radius (distance to fixed vertex)
   theta(i)  polar angle (measured from fixed direction)
variable  polygon_area

equations
   obj
   distance(i,j)
   ordered(i) ;

obj.. polygon_area =e= 0.5*sum(j(i+1), r(i+1)*r(i)*sin(theta(i+1)-theta(i)));

ordered(i+1).. theta(i) =l= theta(i+1);

distance(i,j)$(ord(j) > ord(i))..
   sqr(r(i)) + sqr(r(j)) - 2*r(i)*r(j)*cos(theta(j)-theta(i)) =l= 1;


pi = 2*arctan(inf);

r.up(i)     = 1;
theta.up(i) = pi;

r.fx('i%nv%')    =  0;
theta.fx('i%nv%') = pi;

r.l(i)     = 4*ord(i)*(card(i)+ 1- ord(i))/sqr(card(i)+1);
theta.l(i) = pi*ord(i)/card(i);

model polygon /all/;

$if set workspace polygon.workspace = %workspace%;

solve polygon using nlp maximizing polygon_area;

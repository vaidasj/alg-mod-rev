option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Shape optimization of a cam COPS 2.0 #4 (CAMSHAPE,SEQ=232)

$ontext

Maximize the area of the valve opening for one rotation of a
convex cam with constraints on the curvature and on the radius
of the cam.

This model is from the COPS benchmarking suite.
See http://www-unix.mcs.anl.gov/~more/cops/.

The number of discretization points can be specified using the command
line parameter --n. COPS performance tests have been reported for n =
100, 200, 400, 800


Dolan, E D, and More, J J, Benchmarking Optimization
Software with COPS. Tech. rep., Mathematics and Computer
Science Division, 2000.

Anitescu, M, and Serban, R, A Sparse Superlinearly
Convergent SQP with Applications to Two-Dimensional Shape
Optimization. Tech. rep., Argonne National Laboratory, 1998.

$offtext


$if not set n $set n 100

Set i discretization points /i1 * i%n%/;

Alias (i,j);

Scalar R_v     design parameter related to the valve shape /1/
       R_max   maximum allowed radius of the cam           /2/
       R_min   minimum allowed radius of the cam           /1/
       pi      a famous constant
       alpha   curvature limit parameter                   /1.5/
       d_theta angle between discretization points;

pi = 2*arctan(inf);
d_theta = 2*pi/(5*(%n%+1));

set first(i), last(i), middle(i);
first('i1')  = yes;
last('i%n%') = yes;
middle(i) = yes; middle(first) = no; middle(last) = no;

Variables  r(i)      radius of the cam at discretization points
           rdiff(i)  intermediate
           area      valve area;

Equations  obj          objective
           convexity(i)
           convex_edge1(i)
           convex_edge3(i)
           convex_edge4(i)
           eqrdiff(i);

obj.. area =e= ((pi*R_v)/%n%) * sum(i, r(i));

convexity(middle(i)).. -r(i-1)*r(i) - r(i)*r(i+1) + 2*r(i-1)*r(i+1)*cos(d_theta) =l= 0;

convex_edge1(first(i)).. -R_min*r(i) - r(i)*r(i+1) + 2*R_min*r(i+1)*cos(d_theta) =l= 0;

convex_edge3(last(i)).. -r(i-1)*r(i) - r(i)*R_max + 2*r(i-1)*R_max*cos(d_theta) =l= 0;

convex_edge4(last(i)).. -2*R_max*r(i) + 2*sqr(r(i))*cos(d_theta) =l= 0;

eqrdiff(j(i+1)).. rdiff(i) =e= r(i+1) - r(i);

r.lo(i) = R_min;
r.up(i) = R_max;

rdiff.lo(i(j+1)) = -alpha*d_theta;
rdiff.up(i(j+1)) =  alpha*d_theta;

r.lo('i1') = max(-alpha*d_theta + R_min, r.lo('i1'));
r.up('i1') = min( alpha*d_theta + R_min, r.up('i1'));

r.lo('i%n%') =  max(R_max - alpha*d_theta, r.lo('i%n%'));
r.up('i%n%') =  min(R_max + alpha*d_theta, r.up('i%n%'));

r.up('i1') = min( R_min/(2*cos(d_theta)-1), r.up('i1'));

r.l(i) = (R_min+R_max)/2;

model camshape /all/;

$if set workspace camshape.workspace = %workspace%;

solve camshape using nlp maximizing area;

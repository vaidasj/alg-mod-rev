option QCP=convert;
option QCP=convert;
option QCP=convert;
$title Packing identical size circles in the unit circle (CPACK,SEQ=387)
$ontext
Given the unit circle (of radius 1), find a set of identical
size circles with an optimized (maximal) radius r so that all
such circles are contained by the unit circle, in a non-overlapping
arrangement.

A test example from  the LGO library


Pinter, J D, Nonlinear optimization with GAMS/LGO. 
Journal of Global Optimization 38 (2007), 79-101.
$offtext

$if not set k $set k 5
Sets i / i1 * i%k% /;
alias (i,j);

* Here we define the set ij(i,j) of ordered pairs i,j i<j.
Set ij(i,j); ij(i,j)$(ord(i)<ord(j)) = yes;

Variables
     r     radius of identical sized circles
     x(i)  x coordinate of circle i
     y(i)  y coordinate of circle i;

Equations
     circumscribe(i) Enforce circle is enclose in unit circle
     nooverlap(i,j)  Enforce that circles do not overlap;

circumscribe(i)..    sqr(1-r) =g= sqr(x(i)) + sqr(y(i));
nooverlap(ij(i,j)).. sqr(x(i)-x(j))+sqr(y(i)-y(j)) =g= 4*sqr(r);

x.lo(i) = -1; x.up(i) = 1;
y.lo(i) = -1; y.up(i) = 1;

* starting values for local solvers such that some feasible solution is produced (at least with k=5)
x.l(i) = -0.2 + ord(i) * 0.1;
y.l(i) = -0.2 + ord(i) * 0.1;

* These bound are valid for k>=5
r.lo = 0.05; r.up = 0.4;

model m /all/;
solve m using qcp maximizing r;
display r.l;

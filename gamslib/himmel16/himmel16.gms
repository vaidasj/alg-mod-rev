option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Area of Hexagon Test Problem  (HIMMEL16,SEQ=36)

$Ontext

The physical problem is to maximize the area of a hexagon in which the
diameter must be less than or equal to one. The formulation in Himmelblau
is different from the one given here, because certain fixed variables
have been eliminated. However, the formulation given here is more natural
and easier to understand.  It makes use of the fact that one vertex is fixed
at the origin and uses the vector scalar product to calculate the areas of
all triangles originating from the origin. All terms in x(1) and y(1) thus
vanish when the algebraic expression is simplified.

The problem appears many other places, e.g. as example 108 in W. Hock and
K. Schittkowski: Test Examples for Nonlinear Programming Codes, Lecture
Notes in Economics and Mathematical Systems, 187, Springer Verlag, 1981,
and as the test example in P. E. Gill, W. Murray, M. A. Saunders, and
M. Wright: User's Guide for SOL/NPSOL: A FORTRAN Package for Nonlinear
Programming, Tech. Rep. 83-12, Dept. of Operation Research, Stanford
University.


Himmelblau, D M, Problem Number 16. In Applied Nonlinear Programming.
Mc Graw Hill, New York, 1972.

$Offtext

 Set    i indices for the 6 points /1*6/;

 Alias (i,j);

 Variable x(i)     x-coordinates of the points
          y(i)     y-coordinates of the points
          area(i)  area of the i'th triangle ( 0 -> p(i) -> p(i++1) -> 0
          totarea  total area of the hexagon

 Equations  areadef(i)    area definition for triangle i.
            maxdist(i,j)  maximal distance between i and j
            obj1          first definition of objective
            obj2          second definition of objective;

 maxdist(i,j)$(ord(i) lt ord(j)).. sqr(x(i)-x(j))+sqr(y(i)-y(j)) =l= 1;

 areadef(i)..  area(i) =e= 0.5*(x(i)*y(i++1)-y(i)*x(i++1)) ;

 obj1..        totarea =e= 0.5*sum(i,x(i)*y(i++1)-y(i)*x(i++1));

 obj2..        totarea =e= sum(i,area(i));

 Model small /maxdist,obj1/
       large /maxdist,obj2,areadef/ ;

*
*  initial conditions
*
 x.fx("1") = 0; y.fx("1") = 0; y.fx("2") = 0;
 x.l("2") = 0.5; x.l("3") = 0.5; x.l("4") = 0.5;
 x.l("5") = 0;   x.l("6") = 0;
 y.l("3") = 0.4; y.l("4") = 0.8; y.l("5") = 0.8;
 y.l("6") = 0.4;

 Solve large using nlp maximizing totarea;


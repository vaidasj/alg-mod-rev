option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title  A Transportation Problem with Piecewise Linear Functions (TRNSPWLX,SEQ=386)
$Ontext

This problem finds a least cost shipping schedule that meets
requirements at markets and supplies at factories. This instance
applies economies of scale which results in a non-convex
objective. This is an extension of the trnsport model in the GAMS
Model Library.

The original nonlinear term is "sum((i,j), c(i,j)*sqrt(x(i,j)))". We
use the following discretization f(x) of sqrt(x)

  For x<=50:  f(x) = 1/sqrt(50)*x,
  for x>=400: f(x) = 1/(2*sqrt(400))*(x-400) + sqrt(400)
  in between we discretize with linear interpolation between points

The model is organized as follows:
  1) We set a starting point for the NLP solver so it will get stuck
     in local optimum that is not the global optimum.

  2) We use the generic pwlfunc.inc batinclude to get a piecewise linear
     MIP formulation to get close to the global optimum.

  3) We restart the non-convex NLP from the solution of the discretized
     model and hope that the NLP solver finds the global solution.

This model is based on the model trnspwl in the GAMS Model Library


Dantzig, G B, Chapter 3.3. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

Sets
     i   canning plants   / seattle, san-diego /
     j   markets          / new-york, chicago, topeka / ;

Parameters

     a(i)  capacity of plant i in cases
       /    seattle     350
            san-diego   600  /

     b(j)  demand at market j in cases
       /    new-york    325
            chicago     300
            topeka      275  / ;

Table d(i,j)  distance in thousands of miles
                  new-york       chicago      topeka
    seattle          2.5           1.7          1.8
    san-diego        2.5           1.8          1.4  ;

Scalar f  freight in dollars per case per thousand miles  /90/ ;

Parameter c(i,j)  transport cost in thousands of dollars per case ;

          c(i,j) = f * d(i,j) / 1000 ;

Variables
     x(i,j)  shipment quantities in cases
     z       total transportation costs in thousands of dollars ;

Positive Variable x ;

* Demonstrate how to restrict the model index
set ij(i,j); ij(i,j) = yes;

Equations
     cost        define objective function with economies of scale
     supply(i)   observe supply limit at plant i
     demand(j)   satisfy demand at market j ;

cost ..        z  =e=  sum(ij(i,j), c(i,j)*sqrt(x(i,j))) ;

supply(i) ..   sum(ij(i,j), x(i,j))  =l=  a(i) ;

demand(j) ..   sum(ij(i,j), x(i,j))  =g=  b(j) ;

Model transport /all/ ;

* Start the local NLP solver in a local solution that is not globally optimal
x.l('seattle  ','chicago ') =  25;
x.l('seattle  ','topeka  ') = 275;
x.l('san-diego','new-york') = 325;
x.l('san-diego','chicago ') = 275;

option nlp=conopt;
Solve transport using nlp minimizing z ;

* The first model (formulation a) implements a piecewise linear
* approximation based on the convex combination of neighboring points
* using SOS2 variables with unbounded segments at the beginning and
* end of the discretization

Set s   segments       / s0*s6 /
    sl  segment labels / x, y coordinates, l length, g slope /

Table sqrtp(s,sl) piecewise linear function for sqrt
      x             y      l                 g
s0   50   [sqrt( 50)]   -inf    [ sqrt(50)/50]
s1   50   [sqrt( 50)]     70    [(sqrt(120)-sqrt( 50))/70]
s2  120   [sqrt(120)]     70    [(sqrt(190)-sqrt(120))/70]
s3  190   [sqrt(190)]     70    [(sqrt(260)-sqrt(190))/70]
s4  260   [sqrt(260)]     70    [(sqrt(330)-sqrt(260))/70]
s5  330   [sqrt(330)]     70    [(sqrt(400)-sqrt(330))/70]
s6  400   [sqrt(400)]   +inf    [1/(2*sqrt(400))];

* This following batinclude has a parameter p as first argument that
* defines segments of a piecewise linear function. A start point (x,y) of
* a segment plus length and slope need to be provided provides by this
* parameter. The actual labels for are also provided on the batinclude
* call (arguments 3-6) together with the set of segments (arg 2) and an
* optional index set (idxp) to define an indexed parameter to define multiple
* piecewise linear functions (arg 7). The optional arguments 8 and 9 allow
* the use the same function f with different endogenous arguments (idxm).
*
* The batinclude provides a subset of active segments p_Seg(s), i.e. the
* parameter must have data before the batinclude call. The batinclude also
* provide a couple of macros:
* 1) p_Func(x[,idxp])   evaluates the function at point x
* 2) p_x([idxp][,idxm]) expression to assign x(idxm) value
* 3) p_y([idxp][,idxm]) expression to assign y(idxm) value
*
* The header of pwlfunc.inc describes its use in more detail

$batinclude pwlfunc.inc sqrtp s x y l g '' 'i,j' 'ij'

Equation defcouplex(i,j), defobjdisc;
defcouplex(ij(i,j)).. x(i,j) =e= sqrtp_x(i,j);
defobjdisc..               z =e= sum(ij(i,j), c(i,j)*sqrtp_y(i,j));

model trnspwl / supply, demand, defobjdisc, defcouplex, %sqrtp_EquList% /;

option optcr=0;
solve trnspwl min z using mip;

Solve transport using nlp minimizing z ;

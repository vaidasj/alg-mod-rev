option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Finding Optimal Breakpoints when linearizing a power utility function (SEQ=373)

$Ontext
A power utility function with constant relative risk aversion is often used
in economic and financial modelling. It may be desired, for computational
reasons, to linearize this function when it is used together with constraints
requiring integer variables. This model finds the optimal breakpoints for
such a linearization for a given interval.


Author: 
Kourosh Marjani Rasmussen, July 2011
Technical University of Denmark
Department of Management Engineering
Section for Operations Research,
Financial Engineering Group
$Offtext

$set first s1
$set last  s30

Scalar gamma      relative risk aversion    / 2 /;
Sets   j          number of break points    / %first%*%last% /
       first(j), last(j);
alias (j,jj);

first('%first%') = yes;
last('%last%')   = yes;

* Start and end x-axis values for the linearization interval
Scalars
       b0         start point (positive)    /   5 /
       bm         end point                 / 100 /;

abort$(b0<0)  'b0 should be a positive number', b0
abort$(bm<b0) 'end point needs to be greater than start point', b0, bm;

Variables
       ObjV       The value of the objective function
       b(j)       Breakpoints
       fb(j)      function values for the break points;

b.lo(j) = b0;
b.up(j) = bm;

Equations
       object     The area under the curve
       FBCalc(j)  Calculating the power function values;

object..    ObjV =e=
                       sum(j$(not last(j)),  [b('%last%')-b(j)]*[fb(j)-fb(j-1)])
                 + 0.5*sum(j$(not first(j)), [b(j)-b(j-1)]*[fb(j)-fb(j-1)]);

FBCalc(j).. fb(j) =e= power(b(j),(1-gamma))/(1-gamma);

b.fx('%first%') = b0;
b.fx('%last%') = bm;

Model OptimalLinearization /all/ ;
Solve OptimalLinearization using nlp maximizing ObjV;

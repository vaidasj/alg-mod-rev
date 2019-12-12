option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$title Convexification of bilinear term binary times x (BILINEAR,SEQ=346)

$ontext
The model demonstrates various forumlations to represent bilinear
product terms of one continuous and one binary variable.

A set of 60 products i is produced on a set of machine with a given
total capacity. Some machine are special in the sense that if a
product is produced on one of them, cleaning treatment costs apply
caused by a set of cleaning treatment machines t.

A binary variable, delta(i), indicates that product i is produced on
one of the special machines. The model is simplified regarding the
machine-product relations.

Here we mimic a larger roduction problem, and just require that

     E1.. sum(iE, delta(iE)) =e= 2 ;
     E2.. sum(iO, delta(iO)) =e= 5 ;

which represents the fact that it cannot be avoided to use the special
machine and, thus, to have some cleaning treatment.

If product i is produced on a special machine, then the amount, y(i),
of the by-product is given by the recipe constraint y(i)=0.164*p(i),
where the non-negative variable p(i) is the amount produced on special
machines. For each product there is a specific yield of YS(i) $/ton.
The by-product is burnt and leads to an energy yield of YB(i) $/ton,
where YB(i)<YS(i). The by-product also passes the treatment plant.

The production is limited by the production capacity C, where x(i),
100+i <= x(i) <= XUB, is the amount of product i produced.

The amount produced on special machines is p(i)=x(i)*delta(i).

We compare the non-convex MINLP formulation to equivalent linear
forms of p(i)=x(i)*delta(i) using big-M, convex hull, and indicator
forumlations.  Moreover, a new SOS-1 formulation is presented which is
described in:


Kallrath, J, Combined Strategic Design and Operative Planning in the
Process Industry, 2009. Submitted to Computers & Chemical Engineering
$offtext

$if not set solveNC     $set solveNC     1
$if not set solvebigM1  $set solvebigM1  1
$if not set solvebigM2  $set solvebigM2  0
$if not set solveIndic  $set solveIndic  0
$if not set solveEMPCH  $set solveEMPCH  0
$if not set solveEMPI   $set solveEMPI   0
$if not set solveEMPBM1 $set solveEMPBM1 0
$if not set solveEMPBM2 $set solveEMPBM2 0
$if not set solveSOS1   $set solveSOS1   0

* Modell dimensions
$if not set MaxI $set MaxI 60
$if not set MaxT $set MaxT 10

$eolcom //

Sets i     products to be produced and sold   /i1*i%MaxI%/
     iE(i) products with even ordinal number
     iO(i) products with odd ordinal number
     t     cleaning treatment facilities      /t1*t%MaxT%/;

iE(i) = mod(ord(i),2)=0; iO(i) = not iE(i);

Parameter
     Capacity total machine capacity /20000/
     C(i,t) cleaning treatment costs
     XUB(i) upper bound on production
     XLB(i) lower bound on production
     YS(i)  yield from selling product i
     YB(i)  yield from burning extra waste;

C(i,t)  = sqrt(ord(i)) * ord(t);
C(iE,t) = -C(iE,t) + 5;
XUB(i)  = 10000;
XLB(i)  = 100 + ord(i);
YS(i)   = 0.04 + 0.001*sqrt(ord(i));
YB(i)   = 0.007;

Variables
     z        objective variable
     x(i)     production
     y(i)     waste material produced on special machine
     delta(i) indicator for production on special machine
Positive variables x, y;
Binary variable delta;

Equations
     E1, E2         force use some of the special machine
     ByProductNC(i) by-product produced on special machine
     ProdCap        production capacity
     ObjFuncNC      objective function: yield minus cleaning treatment costs;

ObjFuncNC..      z =e=   sum(i, YS(i)*x(i) + YB(i)*y(i))
                       - sum(t, sqr(sum(i, C(i,t)*x(i)*delta(i)+y(i))));

ProdCap..        sum(i, x(i)) =l= Capacity;

ByProductNC(i).. y(i) =e= 0.164*x(i)*delta(i);

E1..             sum(iE, delta(iE)) =e= 2;

E2..             sum(iO, delta(iO)) =e= 5;

model core / ProdCap, E1, E2 /
model NC non-convex model / core, ByProductNC, ObjFuncNC /;

x.lo(i) = XLB(i); x.up(i) = XUB(i);

* We need a global solver to find optimum of non-convex model
* Solver alternatives: Baron, LindoGlobal, Couenne, SCIP
option miqcp=cplex, optcr=0;

NC.workfactor = 10;
if (%solveNC%, solve NC max z using minlp);

* First bigM Convexification
Positive variable
     p(i)           product x times delta;

Equations
     ByProduct(i)   by-product produced on special machine
     ObjFunc        objective function: yield minus cleaning treatment costs
     bigM1_1, bigM1_2, bigM1_3 bigM convexification of binary times bounded continuous;

ByProduct(i).. y(i) =e= 0.164*p(i);

ObjFunc..      z =e=   sum(i, YS(i)*x(i) + YB(i)*y(i))
                     - sum(t, sqr(sum(i, C(i,t)*p(i)+y(i))));

bigM1_1(i)..   p(i) =l= x(i); // this is not needed because of the sign of p in the objective

bigM1_2(i)..   p(i) =l= XUB(i)*delta(i);

bigM1_3(i)..   p(i) =g= x(i) - XUB(i)*(1-delta(i));

model coreConv / core, ByProduct, ObjFunc /;

model bigM1 / coreConv, bigM1_1, bigM1_2, bigM1_3 /;

p.up(i) = XUB(i);

$onecho > cplex.opt
mipemphasis 3
$offecho
if (%solvebigM1%, bigM1.optfile=1; solve bigM1 max z using miqcp);

* Alternative bigM forumulation
Positive variable slack(i);

Equations
     bigM2_1, bigM2_2, bigM2_3 bigM convexification of binary times bounded continuous;

bigM2_1(i)..   p(i)     =e= x(i) - slack(i);

bigM2_2(i)..   p(i)     =l= XUB(i)*delta(i); // this is not needed because of the sign of p in the objective

bigM2_3(i)..   slack(i) =l= XUB(i)*(1-delta(i));

model bigM2 / coreConv, bigM2_1, bigM2_2, bigM2_3 /;

slack.up(i) = XUB(i);
if (%solvebigM2%, bigM2.optfile=1; solve bigM2 max z using miqcp);

* Cplex Indicator Formulation
Equations
     disj1, disj2  indicator convexification of binary times bounded continuous;

disj1(i)..     p(i) =e= x(i);

disj2(i)..     p(i) =e= 0; // this is not needed because of the sign of p in the objective

model indic / coreConv, disj1, disj2 /;

$onecho > cplex.op2
indic disj1(i)$delta(i) 1
indic disj2(i)$delta(i) 0
cuts 3
$offecho

if (%solveIndic%, indic.optfile=2; solve indic max z using miqcp);

* The EMP (Extended Math Programming) framework explores modeling
* extensions that result in non-traditional math programs (like
* disjunctions) and automate the reformulation into traditional math
* programs (like MIPs). The manually generated big-M and indicator
* formulations above are automatically produced by EMP from a model
* with disjunctions. Moreover, EMP provides a convex hull formulation
* (which is independent of a bigM) for disjunctions.

* EMP Formulations
file femp / "%emp.info%" /; put femp;

$onecho > jams.opt
SubSolver cplex
SubSolverOpt 1
$offecho

* Convex Hull Convexification
putclose 'modeltype miqcp disjunction delta disj1 else disj2';

if (%solveEMPCH%, indic.optfile=1; solve indic max z using emp);

* Cplex Indicator Convexification
putclose 'modeltype miqcp disjunction indic delta disj1 else disj2';

if (%solveEMPI%, indic.optfile=1; solve indic max z using emp);

* Big-M Convexification type 1 (similar to bigM1 formulation)
put 'modeltype miqcp'; loop(i, put / 'disjunction bigM' XUB(i) delta(i) disj1(i) 'else' disj2(i)); putclose;

if (%solveEMPBM1%, indic.optfile=1; solve indic max z using emp);

* Big-M Convexification type 2 (similar to bigM2 forumlation)
put 'modeltype miqcp'; loop(i, put / 'disjunction bigM' XUB(i) 1e-4 1 delta(i) disj1(i) 'else' disj2(i)); putclose;

if (%solveEMPBM2%, indic.optfile=1; solve indic max z using emp);

* SOS1 Formulation
delta.prior(i) = inf; // relax binary requirement of delta

Set j binary choice / 0,1 /;
SOS1 Variables S1(i,j), S2(i,j);

Equations
     defS1_0, defS1_1, defS2_0, defS2_1 selection constraints;

defS1_0(i).. S1(i,'0') =e= delta(i);

defS1_1(i).. S1(i,'1') =e= x(i) - p(i);

defS2_0(i).. S2(i,'0') =e= 1 - delta(i);

defS2_1(i).. S2(i,'1') =e= p(i);

model sos1conv / coreConv, defS1_0, defS1_1, defS2_0, defS2_1 /;

if (%solveSOS1%, solve sos1conv max z using miqcp);

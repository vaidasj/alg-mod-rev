option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Goemans/Williamson Randomized Approximation Algorithm for MaxCut  (MAXCUT,SEQ=338)

$ontext
Let G(N, E) denote a graph. A cut is a partition of the vertices N
into two sets S and T. Any edge (u,v) in E with u in S and v in T is
said to be crossing the cut and is a cut edge. The size of the cut is
defined to be sum of weights of the edges crossing the cut.

This model presents a simple MIP formulation of the problem that is
seeded with a solution from the Goemans/Williamson randomized
approximation algorithm based on a semidefinite programming
relaxation.

The MaxCut instance tg20_7777 is available from the Biq Mac Library
and comes from applications in statistical physics.


Wiegele A., Biq Mac Library - BInary Quadratic and MAx Cut Library.
http://biqmac.uni-klu.ac.at/biqmaclib.html

Goemans M.X., and Williamson, D.P., Improved Approximation Algorithms
for Maximum Cut and Satisfiability Problems Using Semidefinite
Programming. Journal of the ACM 42 (1995), 1115-1145.
http://www-math.mit.edu/~goemans/PAPERS/maxcut-jacm.pdf
$offtext

Set         n       nodes; alias (n,i,j)
Parameter   w(i,j)  edge weights
Set         e(i,j)  edges;

$if not set instance  $set instance tg207777.inc
* Simple AWK script to convert MAXCUT format to GAMS format
$onecho > maxcut.awk
NR==1 { print "set n /1*" $1 "/";
       print "parameter w(n,n) /\n$ondelim" }
NR>1  { print $0 }
END   { print "\n$offdelim\n/;" }
$offecho
$call awk -f maxcut.awk %instance% > %instance%.gms

$offlisting
$include %instance%.gms
$onlisting

$eval maxn card(n)

* We want all edges to be i-j with i<j;
e(i,j) = ord(i)<ord(j);
w(e(i,j)) = w(i,j) + w(j,i);
w(i,j)$(not e(i,j)) = 0;

Option e<w;

* Simple MIP model
Variable x(n)     decides on what side of the cut
         cut(i,j) edge is in the cut
         z        objective
Binary variables x

Equation obj, xor1(i,j), xor2(i,j), xor3(i,j), xor4(i,j);

obj..          z =e= sum(e, w(e)*cut(e));
xor1(e(i,j)).. cut(e) =l= x(i) + x(j);
xor2(e(i,j)).. cut(e) =l= 2 - x(i) - x(j);
xor3(e(i,j)).. cut(e) =g= x(i) - x(j);
xor4(e(i,j)).. cut(e) =g= x(j) - x(i);

model maxcut / all /;

$ontext
Set up the SDP
        max W*Y s.t. Y_ii=1, Y>0
We need to pass on the dual to csdp
        min x1+x2+...+xn s.t. X = F1*x1+F2*x2+...+Fn*xn - W, X>0
with F_i = 1 for F_ii and 0 otherwise
$offtext

Parameter
    c(n)      cost coefficients
    F(n,i,j)  constraint matrix
    F0(i,j)   constant term
    Y(i,j)    dual solution
    L(i,j)    Cholesky factor of dual solution Y;

c(n)     = 1;
F(n,n,n) = 1;
F0(i,j)  = -w(i,j);

execute_unload 'csdpin.gdx' n=m, n, c, F, F0;
execute 'gams runcsdp.inc lo=%gams.lo% --strict=1 && cholesky csdpout.gdx n Y cholesky.gdx L ';
abort$errorlevel 'Problems running RunCSDP. Check listing file for details.'
execute_load 'cholesky.gdx'  L;
execute_load 'csdpout.gdx'   Y;

Scalar SDPRelaxation;
SDPRelaxation = 0.5*sum(e, w(e)*(1-Y(e)));
display SDPRelaxation;

* Check if Cholesky factorization is correct
Parameter Y_, Ydiff;
Y_(i,j) = sum(n, L(i,n)*L(j,n));
Ydiff(i,j) = round(Y(i,j)-Y_(i,j),1e-6);
option Ydiff:8:0:1; abort$card(Ydiff) Ydiff;

* Now do the random hyperplane r
Parameter r(n);
Set S(n), T(n), bestS(n);
Scalar wS weight of cut S, maxwS best weight /-inf/, cnt;

for (cnt=1 to 10,
  r(n) = uniform(-1,1);
  S(n) = sum(i, L(n,i)*r(i)) < 0;
  T(n) = yes; T(S) = no;
  wS   = sum(e(S,T), w(S,T) + w(T,S));
  if (wS>maxwS, maxwS = wS; bestS(n) = S(n));
);
display maxwS;

* use computed feasible solution as starting point for MIP solve
x.l(bestS) = 1;
cut.l(e(i,j)) = x.l(i) xor x.l(j);

* SCIP does this by default, for other solvers we need to enable it
$if %gams.mip% == cplex  $echo mipstart 1 > cplex.opt
$if %gams.mip% == cbc    $echo mipstart 1 > cbc.opt
$if %gams.mip% == gurobi $echo mipstart 1 > gurobi.opt
$if %gams.mip% == sulum  $echo mipstart 1 > sulum.opt
$if %gams.mip% == xpress $echo loadmipsol 1 > xpress.opt

maxcut.optfile = 1;
solve maxcut max z using mip;

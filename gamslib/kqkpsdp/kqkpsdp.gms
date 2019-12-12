option RMIQCP=convert;
option RMIQCP=convert;
option RMIQCP=convert;
$Title SDP Convexifications of the Cardinality Constraint Quadratic Knapsack Problem (KQKPSDP,SEQ=355)

$ontext
This model solves the Cardinality Constraint Quadratic Knapsack Problem
(kQKP) using a SDP confexification methods.

The convexification method requires the solution of a semidefinite
program.  The communication with the SDP solver is done through ASCII
files.


Plateau M.C., Reformulations quadratiques convexes pour la
programmation quadratique en variables 0-1. PhD thesis, 
Conservatoire National des Arts et Metiers, CEDRIC, 2006.

Guignard, M., Extension to Plateau Convexification Method for
Nonconvex Quadratic 0-1 Programs. Tech. rep., The Wharton School, 2008.
$Offtext

$onechoV > kQKP.awk
/^$/ {}  # do nothing for empty lines
!/^$/ { 
    if (1==startweight) {
        printf("\nParameter w(i) weigths /\n");
        for (i=1; i<=n; i++) printf("n%d %d\n",i,$i);
        printf("$offdelim\n/\n");
        startweight = 0;
    }
    if (1==startprofit) {
        printf("Table p(i,i) profits \n$ondelim\n");
        for (i=0; i<=n; i++) printf("n%d ",i);
        printf("\n"); startprofit = 2; i=1;
    }
    if (2==startprofit) {
        printf("n%d %s\n",i,$0);
        if (n==i)
            startprofit = 0;
        else
            i++;
    }
    if ($2 == "#n:") {
        n = $1;
        printf("$setglobal n %d\nset i /n1*n%d/;\n", n, n);
    }
    if ($2 == "#capacity")
        printf("scalar cap capacity /%d/;\n", $1);
    if ($2 == "#k:")
        printf("scalar ncard cardinality /%d/;\n", $1);
    if ($1 == "#Profits:") startprofit = 1;
    if ($1 == "#Weights:") startweight = 1;
}
$offecho
$if not set instance $set instance 50_25
$call awk -f kQKP.awk %instance%.inc > kQKP%instance%.gms
$if errorlevel 1 $abort problems with awk

set dummy /z/;
Set i           knapsack items;
alias (i,j)
Parameters
    p(i,j)  profits of item pairs
    w(i)    weigths of items
    cap     capacity of knapsack
    ncard   cardinality of knapsack;


$offlisting
$include kQKP%instance%.gms
$onlisting

$ontext
Setup of SDP problem to get u and v

max sum((i,j), p(i,j)*X(i,j)
s.t. -ncard*x(i) + sum(j, X(i,j)) =e= 0   for all i  (SDP1)
     X(i,i) = x(i)                                   (SDP2)
     sum(i, x(i))      =e= ncard;                    (SDP3)
     sum(i, w(i)*x(i)) =l= cap                       (SDP4)
     z                 =e= 1                         (SDP5)

     (z x^t)
     (x  X ) is PSD

CSDP gets the problem in SDPA format:

(D)    max tr(F0*Y)
       st  tr(Fi*Y)=ci           i=1,2,...,m
                 Y >= 0
$offtext

Set n              /z,#i/
    m              /k1*k%n%,i1*i%n%, ncard, cap, zdef/
    mk(m)          /k1*k%n%/
    mi(m)          /i1*i%n%/
    mkmap(m,i)     /#mk:#i/
    mimap(m,i)     /#mi:#i/;

Parameter
    c(m)      rhs
    F(m,*,*)  constraint matrix
    F0(*,*)   objective term
    mLE(m)    SDP constraints with =l=
    xvec(m)   dual solution;

F0(i,j)$(ord(i)>ord(j))  = p(i,j);
F0('z',i)                = p(i,i)/2;

* SDP1
F(mk,'z',i)$mkmap(mk,i) = -ncard;
F(mk,i,j)$mkmap(mk,i)   = 1 + 1$sameas(i,j);
c(mk)                   = 0;

* SDP2
F(mi,'z',i)$mimap(mi,i) = -1.0;
F(mi,i,i)$mimap(mi,i)   = 2;
c(mi)                   = 0;

* SDP3
F('ncard','z',i) = 1.0;
c('ncard')       = 2*ncard;

* SDP4
F('cap','z',i) = w(i);
c('cap')       = 2*cap;
mLE('cap')     = yes;

* SDP5
F('zdef','z','z') = 1;
c('zdef')         = 1;

execute_unload 'csdpin.gdx' n, m, mLE, c, F, F0;
execute 'gams runcsdp.inc lo=%gams.lo% --strict=1';
abort$errorlevel 'Problems running RunCSDP. Check listing file for details.'
execute_load 'csdpout.gdx', xvec;

Parameter a(i), u(i);
a(i) = sum(mkmap(mk,i),xvec(mk));
u(i) = sum(mimap(mi,i),xvec(mi));

display a, u;

* Simple MIQP model
Binary variable 
   x(i)     select item in knapsack;
Variable 
   obj      objective;

Equation
   defobj   profit of knapsack
   defcobj  profit of knapsack
   defcap   capacity limitation of knapsack
   defcard  cardinality requirement of knapsack;

defcobj..  obj =e= sum(i, p(i,i)*x(i)) + sum((i,j)$(ord(i)>ord(j)), 2*x(i)*p(i,j)*x(j)) 
                   - sum(i, 2*a(i)*x(i)*(sum(j, x(j))-ncard))
                   - sum(i, 2*(u(i)+0.001)*x(i)*(x(i)-1));

defobj..  obj =e= sum(i, p(i,i)*x(i)) + sum((i,j)$(ord(i)>ord(j)), 2*x(i)*p(i,j)*x(j));

defcap..  sum(i, w(i)*x(i)) =l= cap;

defcard.. sum(i, x(i)) =e= ncard;

model kQKP  /  defobj, defcap, defcard /;
model ckQKP / defcobj, defcap, defcard /;

solve ckQKP max obj using rmiqcp;

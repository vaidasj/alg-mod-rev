option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Synthesis of General Distillation Sequences (NONSHARP,SEQ=120)

$Ontext

   This GAMS file contains the implementation of the Generalized Benders'
   Decomposition method for the mathematical formulation based on the
   superstructure proposed in the paper "Synthesis of General Distillation
   Sequences - Nonsharp Separations" (Aggarwal and Floudas, 1990). The
   superstructure features simple columns (single feed and top and bottom
   products) and no heat integration between columns is considered. The
   formulation is a mixed-integer nonlinear programming (MINLP) problem.
   The implementation is based on the algorithmic procedure APROS (Paules
   and Floudas, 1989).


Morari, M, and Grossmann, I E, Eds, Chemical Engineering Optimization
Models with GAMS. Computer Aids for Chemical Engineering Corporation,
1991.

Aggarwal, A, and Floudas, C A, Synthesis of General Distillation
Sequences: Nonsharp Separation. Computers and Chemical Engineering 14,
6 (1990), 631-653.

$Offtext

$Onnestcom Inlinecom {{ }} Eolcom ##
{{
===========================================================================

                      copyright(C) 1989 A. Aggarwal & C.A. Floudas
                                        Dept. of Chemical Engineering
                                        Princeton University
                                        Princeton, NJ 08544-5263

===========================================================================
                    -----------------------------
                    ** Three Component Example **
                    -----------------------------
         _____________________________________________________
        |   Comp.   |    Feed    |   Product 1  |  Product 2  |
        |___________|____________|______________|_____________|
        |  propane  |    100.0   |     30.0     |    70.0     |
        | i-butane  |    100.0   |     50.0     |    50.0     |
        | n-butane  |    100.0   |     30.0     |    70.0     |
        |___________|____________|______________|_____________|

===========================================================================
}}

Option
     limrow = 0
     limcol = 0
     decimals = 4
     solprint = off ;

*==========================================================================
* Declare Sets
*==========================================================================

Sets

{{ Basic Sets - These sets define the problem i.e. number of components
   in the feed stream, columns in the superstructure and no. of product
   streams }}

    cp               components /a,b,c/
    col              columns /col-1*col-2/
    pr               products /prod-1,prod-2/
    stm              column streams /top,bot/

{{ Derived Sets - These sets are used to define the mapping of the
   superstructure for the problem at any stage }}

    bypass(pr)              overall pass to product pr from initial feed
    acol(col)               existing columns
    prstream(col,stm,pr)    stream to product pr from column col
    inter(col,col,stm)      column i fed by column j top or bottom
    key(col,stm,cp)         key components for column col
    link(col,stm,cp)        nondistribution of nonkeys

{{ Duplicate Sets For Saving Full Mapping - These sets are used for
   saving the full mapping of the original superstructure }}

    savprst(col,stm,pr)     save full representation of prstream
    savinter(col,col,stm)   save full representation of feedtop
    savkey(col,stm,cp)      save full representation of keys
    savlink(col,stm,cp)     save full representation of link

{{ Sets For Algorithm - These are the static and dynamic sets needed
   to implement the iterative algorithm }}

    km               static iterations /1*150/
    kloop            loop counter /1*20/
    k(km)            dynamic iterations /1/
    count(km)        dynamic counter /1/     ;

Alias(col,colp) ;


*==========================================================================
* Define Mapping Of Sets
*==========================================================================

{{ The set "bypass" defines the set of streams of overall bypasses to the
   final products. If an overall bypass stream for a particular product
   does not exist in the superstructure then that element for this set is
   set to "NO" }}

bypass(pr) = YES ;

{{ The set "inter" defines interconnections between columns based upon the
   superstructure. e.g. "inter('col-1','col-2','top')" refers to a stream
   to column 1 from column 2 top }}

inter(colp,col,stm) = NO ;
inter('col-1','col-2','top') = YES ;
inter('col-2','col-1','bot') = YES ;

{{ The set "key" defines the key components for each column in the
   superstructure. e.g. "key('col-1','top','a') = YES" defines the light key
   for column 1 to be component a }}

key(col,stm,cp) = NO ;
key('col-1','top','a') = YES ;
key('col-2','top','b') = YES ;
key('col-1','bot','b') = YES ;
key('col-2','bot','c') = YES ;

{{ The set "link" is used to restrict distribution of nonkeys in the top
   and bottom streams of a column. Each element of this set represents
   the nonexistence of a particular component in a particular stream }}

link(col,stm,cp) = NO ;
link('col-1','top','c') = YES ;
link('col-2','bot','a') = YES ;

{{ The set "prstream" defines the set of streams from various columns to
   the final products. If it is known that one or more of such streams
   cannot exist then they can be deleted from the formulation by setting
   the corresponding elements of this set to "NO" }}

prstream(col,stm,pr) = YES ;

Display bypass,inter,key,link,prstream ;

{{ The full mapping representation of the superstructure is saved in
   the save sets defined earlier }}

savprst(prstream(col,stm,pr)) = prstream(col,stm,pr) ;
savinter(inter(colp,col,stm)) = inter(colp,col,stm) ;
savkey(key(col,stm,cp)) = key(col,stm,cp) ;
savlink(col,stm,cp) = link(col,stm,cp) ;


*==========================================================================
* Declare Parameters & Scalars
*==========================================================================

Parameters

{{ Define the component flowrates for the feedstream }}

    feed(cp)         feed of each component
                     /a  100
                      b  100
                      c  100/

{{ Define the various coefficients for the cost expression for each column.
   These coefficients are determined by regression analysis of cost data
   generated by doing column simulations for each column for a range of
   flowrates, feed composition and key component recoveries }}

    cost(col)        alpha coeff.
                     /col-1    0.23947
                      col-2    0.75835/
    a1(col)          a1 coeff.
                     /col-1   -0.0139904
                      col-2   -0.0661588/
    a2(col,stm)      a2 coeff.
                     /col-1.top    0.0093514
                      col-2.top    0.0338147
                      col-1.bot    0.0077308
                      col-2.bot    0.0373349/
    a3(col,cp)       a3 coeff.(corresponds to feed composition)
                     /col-1.a   -0.0005719
                      col-2.a    0.0016371
                      col-1.b    0.0042656
                      col-2.b    0.0288996
                      col-1.c    0.0
                      col-2.c    0.0/

{{ Define parameters for storage of cost coefficients for each lagrange
   function }}

    mcost(km,col)
    ma1(km,col)
    ma2(km,col,stm)
    ma3(km,col,cp)

{{ Define parameters for storage of lagrange multipliers for primal
   problems }}

    mint(km,col)

{{ Define parameters for storage of lagrange multipliers for relaxed primal
   problems }}

    mlint(km,col)

{{ Define parameters for storage of variable values for primal problems }}

    zk(km)
    finitk(km,col)
    fink(km,col)
    fk(km,col,stm)
    fintk(km,colp,col,stm)
    fprk(km,col,stm,pr)
    fbyk(km,pr)
    cfink(km,col,cp)
    xkin(km,col,cp)
    xk(km,col,stm,cp)
    reck(km,col,stm,cp)

{{ Define parameters to represent current values of complicating variables
   given by the master problem }}

    yp(col)

{{ Miscellaneous parameters }}

    cut(km)
    cutcol(km,col)
    nfeas(km)        feasibility of primal problem
    xinit(cp)        composition of streams from initial splitter

Scalars

    totfeed          total flow to the superstructure
    flag             check to run primal /1/
    kend             stopping criteria for algorithm /1/
    iter             iteration number /0/
    zup              upper bound
    zlo              lower bound
    np               number of products  ;

np = card(pr) ;

{{ The table gives the compositions of the desired product streams }}

Table              out(cp,pr)     product amounts

                   prod-1    prod-2

    a               30.0      70.0
    b               50.0      50.0
    c               30.0      70.0   ;

*==========================================================================
* Declare Variables
*==========================================================================

Variables

    c                total cost of distillation sequence
    alp              sum of infeasibilities
    mu               master solution

Positive Variables

{{ The positive variables define the material balance for the superstructure
   and the names are self explanatory }}

    finit(col)         flow from initial splitter to column col
    fin(col)           total flow to column col
    f(col,stm)         flow rate of column top & bottom product streams
    fint(colp,col,stm) flow rate of interconnecting streams
    fpr(col,stm,pr)    flow rate of streams to products
    fby(pr)            flow rate of bypass streams

    cfin(col,cp)       component flow to column col

    xin(col,cp)        composition of stream to column col
    x(col,stm,cp)      composition of column product streams

    rec(col,stm,cp)    recovery of key components

{{ The following are slack variables used for relaxing the constraints of
   the primal problem for the formulation of the relaxed primal problem.
   Each inequality constraint f(x) < 0 is relaxed by the addition of a
   positive slack variables sa to give :
                          f(x) < sa                                     }}

    saint(col)           sa for logical constraints

Binary Variables

{{ The binary variables define the existence or nonexistence of a particular
    column in the sequence. A value of 1 means that the column exists,
    a value of 0 denotes nonexistence }}

    y(col)               existence of column col ;

*==========================================================================
* Declare Equations
*==========================================================================

Equations

{{ PRIMAL PROBLEM EQUATIONS }}

lpobj                 objective function

spblinit              initial splitter balance
spblcol(col,stm)      splitter balances at each column top & bottom outlets
mixbal(col,cp)        mixer balance equations at inlet of each column
colbal(col,cp)        component balance equations around each column
keybal(col,stm,cp)    key component balances for each column
probal(pr,cp)         component balance equations for each product
cfloin(col,cp)        equations defining component flowrates for column inlet
molsum(col,stm)       constraint for sum of mole fractions for column products
molsumin(col)         constraint for sum of mole fractions for column inlet
dist(col,stm,cp)      constraint defining the nondistribution of nonkeys

intcon(col)           logical constraints

{{ RELAXED PRIMAL PROBLEM EQUATIONS }}

infeas                sum of infeasibilities as objective function

lintcon(col)          relaxed logical constraints

{{ MASTER PROBLEM EQUATIONS }}

bnd                   lower bound on solution of master problem
lagrange(km)          lagrange functions for primal problems
laerr(km)             lagrange functions for relaxed primal problems
intcut(km)            integer cuts ;

*==========================================================================
* Define Equations
*==========================================================================

{{ PRIMAL PROBLEM EQUATIONS }}

lpobj..
    c =E= sum(acol(col),(cost(col)*yp(col) + (a1(col) +
            sum(key(col,stm,cp),a2(col,stm)*rec(col,stm,cp)) +
            sum(cp,a3(col,cp)*xin(col,cp)))*fin(col))) ;

spblinit..
      sum(acol(col),finit(col)) + sum(pr,fby(pr)) =E= totfeed ;

spblcol(acol(col),stm)..
      sum(inter(colp,col,stm),fint(colp,col,stm)) +
      sum(prstream(col,stm,pr),fpr(col,stm,pr)) - f(col,stm) =E= 0 ;

mixbal(acol(col),cp)..
    finit(col)*xinit(cp) + sum(inter(col,colp,stm),fint(col,colp,stm)*
    x(colp,stm,cp)) - cfin(col,cp) =E= 0 ;

colbal(acol(col),cp)..
    cfin(col,cp) - sum(stm,f(col,stm)*x(col,stm,cp)) =E= 0 ;

keybal(key(col,stm,cp))..
    cfin(col,cp)*rec(col,stm,cp) - f(col,stm)*x(col,stm,cp) =E= 0 ;

probal(pr,cp)$(ord(pr) ne np)..
    sum(prstream(col,stm,pr),fpr(col,stm,pr)*x(col,stm,cp)) +
    fby(pr)*xinit(cp) - out(cp,pr) =E= 0 ;

cfloin(acol(col),cp)..
    fin(col)*xin(col,cp) - cfin(col,cp) =E= 0 ;

molsum(acol(col),stm)..
    sum(cp,x(col,stm,cp)) - 1 =E= 0 ;

molsumin(acol(col))..
    sum(cp,xin(col,cp)) - 1 =E= 0 ;

dist(link(col,stm,cp))..
    x(col,stm,cp) =E= 0 ;

intcon(col)..
      fin(col) - totfeed*yp(col) =L= 0 ;

{{ RELAXED PRIMAL PROBLEM EQUATIONS }}

infeas.. alp =E= sum(col,saint(col)) ;

lintcon(col)..
      fin(col) - totfeed*yp(col) =L= saint(col) ;

{{ FULL NLP EQUATIONS }}

{{ MASTER PROBLEM EQUATIONS }}

bnd.. mu =G= zlo ;

lagrange(k)$(nfeas(k) eq 1)..

      sum(col,(mcost(k,col)*y(col) + (ma1(k,col) +
          sum(savkey(col,stm,cp),ma2(k,col,stm)*reck(k,col,stm,cp)) +
          sum(cp,ma3(k,col,cp)*xkin(k,col,cp)))*
          fink(k,col))) +                                  ## objective function

      sum(col,mint(k,col)*(fink(k,col) - totfeed*y(col)))  ## logical const.
                                         =L= mu ;

laerr(k)$(nfeas(k) eq 0)..

      sum(col,mlint(k,col)*(fink(k,col) - totfeed*y(col))) ## logical const.
                                         =L= 0 ;

intcut(k)..
      sum(col,cutcol(k,col)*y(col)) =L= cut(k) ;

{{ Bounds for all material balance variables }}

totfeed = sum(cp,feed(cp)) ;
xinit(cp) = feed(cp)/totfeed ;

rec.up(col,stm,cp) = 1 ;
rec.lo(col,stm,cp) = 0.85 ;

finit.lo(col) = 0 ;
fin.lo(col) = 0 ;
f.lo(col,stm) = 0 ;
fint.lo(savinter(colp,col,stm)) = 0 ;
fpr.lo(savprst(col,stm,pr)) = 0 ;
fby.lo(pr) = 0 ;
finit.up(col) = totfeed ;
fin.up(col) = totfeed ;
f.up(col,stm) = totfeed ;
fint.up(savinter(colp,col,stm)) = totfeed ;
fpr.up(savprst(col,stm,pr)) = totfeed ;
fby.up('prod-1') = 90 ;
fby.up('prod-2') = 150 ;
cfin.lo(col,cp) = 0 ;
cfin.up(col,cp) = feed(cp) ;

*==========================================================================
* Declare Models
*==========================================================================

Model primal /lpobj,spblinit,spblcol,mixbal,colbal,keybal,probal,cfloin,
              molsum,molsumin,dist,intcon/ ;

Model relax /infeas,spblinit,spblcol,mixbal,colbal,keybal,probal,cfloin,
             molsum,molsumin,dist,lintcon/ ;

Model master /bnd,lagrange,laerr,intcut/ ;

*==========================================================================
* Begin Solving Problem
*==========================================================================

{{* STARTING POINT - The user has to provide a set of values of the
  * complicating variables for the algorithm to start. For finding a
  * feasible starting point, the full NLP can be solved (by fixing the
  * binary variables). Even though the algorithm is designed to start from
  * an infeasible starting point also, it helps the performance to provide
  * a feasible starting point }}

yp('col-1') = 1 ;
yp('col-2') = 1 ;

finit.l('col-1') = 60 ;
finit.l('col-2') = 0 ;
fin.l('col-1') = 60 ;
fin.l('col-2') = 40 ;
f.l('col-1','top') = 20 ;
f.l('col-2','top') = 20 ;
f.l('col-1','bot') = 40 ;
f.l('col-2','bot') = 20 ;
fint.l('col-1','col-2','top') = 0 ;
fint.l('col-2','col-1','bot') = 40 ;
fpr.l('col-1','top','prod-1') = 0 ;
fpr.l('col-1','top','prod-2') = 20 ;
fpr.l('col-1','bot','prod-1') = 0 ;
fpr.l('col-1','bot','prod-2') = 0 ;
fpr.l('col-2','top','prod-1') = 20 ;
fpr.l('col-2','top','prod-2') = 0 ;
fpr.l('col-2','bot','prod-1') = 0 ;
fpr.l('col-2','bot','prod-2') = 20 ;
fby.l('prod-1') = 90 ;
fby.l('prod-2') = 150 ;

cfin.l('col-1','a') = 20 ;
cfin.l('col-1','b') = 20 ;
cfin.l('col-1','c') = 20 ;
cfin.l('col-2','a') = 0 ;
cfin.l('col-2','b') = 20 ;
cfin.l('col-2','c') = 20 ;

{{ The upper and lower bounds are initialized to large positive and negative
   numbers respectively }}

zup = 1000 ;
zlo = -1000000 ;

*==========================================================================
* Begin Iterations *
*==========================================================================

k(km) = NO ;

Loop(kloop$kend,                     ##  START OF LOOP
iter = iter + 1 ;                    ##  update iteration number
count(km) = yes$(ord(km) eq iter) ;  ##  current element
k(km)= k(km) + count(km) ;           ##  add current element to dynamic set

{{ Modify sets to current configuration based on current values of the
   binary variables. If a binary variable corresponding to a particular
   column is not active then all streams connected to that column are
   dropped from the superstructure }}

acol(col) = YES$yp(col) ;
prstream(savprst(col,stm,pr)) = YES$yp(col) ;
inter(savinter(colp,col,stm)) = YES$yp(col) ;
inter(inter(col,colp,stm)) = YES$yp(col) ;
key(savkey(col,stm,cp)) = YES$yp(col) ;
link(savlink(col,stm,cp)) = YES$yp(col) ;

{{ Store the values of the cost coefficients for the Lagrange function
   based on the current mapping }}

mcost(count,acol(col)) = cost(col) ;
ma1(count,acol(col)) = a1(col) ;
ma2(count,acol(col),stm) = a2(col,stm) ;
ma3(count,acol(col),cp) = a3(col,cp) ;

{{ Solve the relaxed primal problem }}

Solve relax using nlp minimizing alp ;

{{ The next statement checks for the feasiblity of the relaxed primal
   problem and sets the stopping criteria flag "kend" to 0 if the relaxed
   primal problem dees not have a feasible solution }}

if(((relax.modelstat ne %modelstat.Optimal%) and
    (relax.modelstat ne %modelstat.LocallyOptimal%) and
    (relax.modelstat ne %modelstat.FeasibleSolution%)),
             kend = 0 ) ;

{{ Store the lagrange multipliers as parameters }}

mlint(count,acol(col)) = -lintcon.m(col) ;

{{ Store the values of noncomplicating variables as parameters }}

finitk(count,acol(col)) = finit.l(col) ;
fink(count,acol(col)) = fin.l(col) ;
fk(count,acol(col),stm) = f.l(col,stm) ;
fintk(count,inter(colp,col,stm)) = fint.l(colp,col,stm) ;
fprk(count,prstream(col,stm,pr)) = fpr.l(col,stm,pr) ;
fbyk(count,pr) = fby.l(pr) ;
cfink(count,acol(col),cp) = cfin.l(col,cp) ;
xkin(count,acol(col),cp) = xin.l(col,cp) ;
xk(count,acol(col),stm,cp) = x.l(col,stm,cp) ;
reck(count,key(col,stm,cp)) = rec.l(col,stm,cp) ;

nfeas(count) = 0 ;
flag = 0 ;

{{ The value of sum of infeasibilities is checked at this stage }}

If((alp.l le .00001),

    Solve primal using nlp minimizing c ;

{{ If primal is feasible store the lagrange multipliers as parameters,
   objective function and update upper bound }}

    If(((primal.modelstat eq %modelstat.Optimal%) or
        (primal.modelstat eq %modelstat.LocallyOptimal%)),
       mint(count,acol(col)) = -intcon.m(col) ;
       zk(count) = c.l ;
       nfeas(count) = 1 ;
       If((c.l le zup),
          zup = c.l ) ;

{{ Store the values of noncomplicating variables as parameters and
   display them }}

       finitk(count,acol(col)) = finit.l(col) ;
       fink(count,acol(col)) = fin.l(col) ;
       fk(count,acol(col),stm) = f.l(col,stm) ;
       fintk(count,inter(colp,col,stm)) = fint.l(colp,col,stm) ;
       fprk(count,prstream(col,stm,pr)) = fpr.l(col,stm,pr) ;
       fbyk(count,pr) = fby.l(pr) ;
       cfink(count,acol(col),cp) = cfin.l(col,cp) ;
       xkin(count,acol(col),cp) = xin.l(col,cp) ;
       xk(count,acol(col),stm,cp) = x.l(col,stm,cp) ;
       reck(count,key(col,stm,cp)) = rec.l(col,stm,cp) ;

       Display finit.l,fin.l,f.l,fint.l,fpr.l,fby.l,cfin.l,xin.l,x.l,rec.l ) ) ;

{{ Store the values of the complicating variables as parameters to formulate
   the integer cuts }}

   cut(count) = sum(col,yp(col)) - 1 ;
   cutcol(count,col) = 2*yp(col) - 1 ;

{{ Solve the master problem }}

Solve master using mip minimizing mu ;

{{ The next six statements check for the feasiblity of the master problem
   and set the stopping criteria flag "kend" to 0 if the master problem has
   become infeasible }}

kend$(master.modelstat eq %modelstat.Infeasible%)              = 0 ;
kend$(master.modelstat eq %modelstat.LocallyInfeasible%)       = 0 ;
kend$(master.modelstat eq %modelstat.IntermediateInfeasible%)  = 0 ;
kend$(master.modelstat eq %modelstat.FeasibleSolution%)  = 0 ;
kend$(master.modelstat eq %modelstat.IntermediateNon-Integer%) = 0 ;
kend$(master.modelstat eq %modelstat.IntegerInfeasible%)       = 0 ;

{{ If the master problem has a feasible solution, the lower bound is
   updated }}

zlo$kend = mu.l ;

{{ The stopping criteria is checked next. If the upper and lower bounds have
   crossed or are almost equal, "kend" is set to 0 }}

kend$((zup le zlo) or ((zup-zlo) le .001)) = 0 ;

{{ The values of the complicating variables produced by the master problem
   are stored as parameters (to be used in the next iteration) and
   displayed }}

yp(col) = y.l(col) ;
Display yp ;

{{ Display iteration number, sum of infeasibilites for this iteration, and
   the lower and upper bounds at the end of this iteration }}

Display iter,alp.l,zlo,zup ) ;       ##  END OF LOOP
*==========================================================================

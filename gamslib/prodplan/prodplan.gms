option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title  A Production Planning Example (PRODPLAN, SEQ=356)
$ontext

This uncapacitated lot-sizing problem finds the least cost production plan
meeting demand requirements.  There are costs given for producing, stocking,
and setting up the machines.

Four solving approaches are presented:
1) Solving the original model as a MIP
2) Solving a tight reformulation as an RMIP
3) Solving a tight reforumulation without stock as an RMIP
4) Solving the original model as an RMIP using a separation algorithm


Pochet, Y, and Wolsey, L A, Production Planning by Mixed Integer
Programming (Springer Series in Operations Research and Financial
Engineering). Springer-Verlag New York, Inc., 2006.

$offtext
*1) Initial tiny formulation

Sets t       Time periods / t1*t8 /
     ut(t,t) Upper triangle;

Alias (t,tt,k);

Parameters
     DEMAND(T) Demand per period / (t1,t2) 400, (t3,t4) 800, (t5*t8) 1200 /
     SETUPCOST Setup cost per period         / 5000 /
     PRODCOST  Production cost per period    /  100 /
     INVCOST   Production cost per period    /    5 /
     STOCKINI  Production cost per period    /  200 /
     BigM(T)   Max production - BigM
     ;
*We assume that the initial stock is lower equal than the demand in the first period
abort$(Demand('t1') < STOCKINI) 'Initial stock is too large';

ut(k,t) = ord(k) <= ord(t);

BigM(t) = sum(k$(ord(k) >= ord(t)), DEMAND(k) - STOCKINI$(ord(t)=1));

Display ut, BigM;

Variables
     s(t) Inventory in period t
     x(t) Production in period t
     y(t) Setup in period t
     cost
Binary variable y; Positive variables s,x;

Equations
     Balance(t)     Stock balance
     Production(t)  Production set-up
     Mincost        Objective function
     ;

Mincost.. cost =e= sum(t, ifthen(ord(t)<card(t),INVCOST,INVCOST/2)*s(t))
                 + sum(t, SETUPCOST*y(t) + PRODCOST*x(t));

Production(t)..  x(t) =L= BigM(t)*y(t);

Balance(t).. STOCKINI$(ord(t)=1) + s(t-1) + x(t) =e= DEMAND(t) + s(t);

Model tiny / Mincost, Production, Balance /;

tiny.optcr=0;

Solve tiny minimizing cost using MIP;


*2) Multi-commodity formulation (tight reformulation)
Variables
     smc(t,t) Inventory entered in period i for period t
     xmc(t,t) Production in period i for demand in t
Positive variables smc,xmc;

Equations
     Balancemc(t,t)     Stock balance
     Productionmc(t,t)  Production set-up
     Mincostmc          Objective function
     ;

Mincostmc.. cost =e= sum(ut, PRODCOST*xmc(ut) + INVCOST*smc(ut))
                   + sum(t, SETUPCOST*y(t));

Balancemc(ut(k,t)).. STOCKINI$(ord(t)=1) + smc(k-1,t) + xmc(k,t)
                   =E= smc(k,t) + diag(k,t)*DEMAND(t);

Productionmc(ut(k,t)).. xmc(k,t) =L= (DEMAND(t) - STOCKINI$(ord(t)=1))*y(k);

Model tinymc / Mincostmc, Balancemc, Productionmc /;

Solve tinymc minimizing cost using RMIP;


*3) Multi-commodity formulation without stock (tight reformulation)
Parameter
     dist(t,t) Distance between time periods;

dist(ut(k,t)) = ord(t)-ord(k); Display dist;

Equations
     Demandmcws(t)      Demand satisfaction
     Mincostmcws        Objective function
     ;

Mincostmcws.. cost =e= sum(ut, PRODCOST*xmc(ut) + INVCOST*dist(ut)*xmc(ut))
                     + sum(t, SETUPCOST*y(t));

Demandmcws(t).. sum(ut(k,t), xmc(k,t)) =g= DEMAND(t) - STOCKINI$(ord(t)=1);

Model tinymcws / Mincostmcws, Demandmcws, Productionmc /;

Solve tinymcws minimizing cost using RMIP;


*4) Separation Algorithm
Sets j           Iterations  /j1*j10/
     n(j,t)      Set of cuts
     Scon(j,t,t) Set of violated constraints;
n(j,t)=no; Scon(j,t,t)=no;

Alias (t,l), (j,jj);

Parameter
     D(t,t)     Accumulated demand
     left(t,t)  Left side of cut;
D(ut(t,k)) = sum[tt$(ord(tt) <= ord(k) and ord(tt) >= ord(t)), DEMAND(tt)];

Equation
     cuts(j,t) Cuts for the RMIP (complete linear description);
cuts(n(jj,t)).. sum(Scon(jj,t,k), x(k) - D(k,t)*y(k)) =l= s(t);

Model tinycuts / tiny, cuts /;

Scalar more    / 1 /
       epsilon / 1e-6 /;

file fx; put fx;

*If STOCKINI < DEMAND(t1) there has to be production in the first period
y.fx('t1') = 1;

loop(j$more,
 Solve tinycuts using RMIP min cost;
 option limcol=0, limrow=0, solprint=silent;
*Store the left hand side of potential cuts
 left(ut(tt,l)) = x.l(tt)-d(tt,l)*y.l(tt);
*Use only those LHS which are greater zero
 Scon(j,l,tt) = left(tt,l) > epsilon;
*If the sum of those is greater than the inventory level: violation found
*Add this cut to the model
 n(j,l)= sum[Scon(j,l,tt), left(tt,l)] - epsilon > s.l(l);
*Proceed if at least one cut was added during this iteration
 more = sum(n(j,l), yes);
);

Put_utility$(not more) 'log' /
  '>>>>Integer solution found. A total of 'sum(n(j,t),1):0:0' cuts were added.';

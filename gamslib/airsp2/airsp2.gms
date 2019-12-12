option LP=convert;
option LP=convert;
option LP=convert;
$Title Aircraft allocation - stochastic optimization with DECIS (AIRSP2,SEQ=196)

$Ontext

The objective of this model is to allocate aircrafts to routes to maximize
the expected profit when traffic demand is uncertain. Several problems
are solved with standard LP solvers and DECIS:

     fixed demand
     expected value
     deterministic equivalent

     DECIS formulation with sampling
                       exact (deterministic equivalent)
                       expected value

Also see models AIRCRAFT and AIRSP.


Dantzig, G B, Chapter 28. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

$if not set decisalg $set decisalg decism

set i     aircraft types and unassigned passengers / a, b, c, d /
    j     assigned and unassigned routes           / route-1, route-2, route-3, route-4, route-5 /
;

table  c(i,j)       costs per aircraft (1000s)

          route-1    route-2    route-3     route-4     route-5
 a          18         21         18          16           10
 b                     15         16          14            9
 c                     10                      9            6
 d          17         16         17          15           10
;
table  pcap(i,j)    passenger capacity of aircraft i on route j

         route-1     route-2     route-3     route-4     route-5
 a          16         15          28          23          81
 b                     10          14          15          57
 c                      5                       7          29
 d           9         11          22          17          55
;
parameter aircraft(i)  aircraft availability  / a   10
                                                b   19
                                                c   25
                                                d   15 /;

parameter fixeddemand(j) fixed demand (passengers in hundreds)
       / route-1 250
         route-2 120
         route-3 180
         route-4  90
         route-5 600 /;

parameter costbumped(j) costs associated with bumping passengers
       / route-1 13
         route-2 13
         route-3  7
         route-4  7
         route-5  1 /;


*---------------------------------------------------------------------
* First we solve the "fixed demand" (deterministic demand) case.
* Notice that Dantzig reports a slightly different optimal solution
* for this problem in table 28-2-II on page 583. The solution
* reported there is slightly infeasible.
*---------------------------------------------------------------------

positive variable x(i,j)    number of aircraft type i assigned to route j;
positive variable bumped(j) passengers bumped;
variable          z         objective variable;

equation          avail(i)  aircraft availability constraints;
equation          demand(j) demand constraints;
equation          cost      objective;


cost..       z =e= sum((i,j), c(i,j)*x(i,j)) + sum(j, costbumped(j)*bumped(j));
avail(i)..   sum(j, x(i,j)) =l= aircraft(i);
demand(j)..  sum(i, pcap(i,j)*x(i,j)) + bumped(j) =g= fixeddemand(j);


model fixed /cost,avail,demand/;

solve fixed using lp minimizing z;

parameter results(*,i,j) first stage results;
parameter obj(*);

results('Fixed demand',i,j) = x.l(i,j);
obj('Fixed demand') = z.l;

*---------------------------------------------------------------------
* Now introduce stochastic demand
*---------------------------------------------------------------------

option limcol=0,limrow=0;

set k possible outcomes /k1*k5/;

table  stochasticdemand(j,k)     demand distribution on route j
             k1      k2     k3     k4     k5
 route-1    200     220    250    270    300
 route-2     50     150
 route-3    140     160    180    200    220
 route-4     10      50     80    100    340
 route-5    580     600    620
;

table  probability(j,k)  "probabilities corresponding to sd(j,k)"

              k1     k2     k3     k4     k5
 route-1      .2     .05    .35    .2     .2
 route-2      .3     .7
 route-3      .1     .2     .4     .2     .1
 route-4      .2     .2     .3     .2     .1
 route-5      .1     .8     .1

;

*---------------------------------------------------------------------
* Solve expected value problem directly
* expected value of demand is slightly different from
* fixed demand.
*---------------------------------------------------------------------

parameter expdemand(j) expected value demand;
expdemand(j) =  sum(k, probability(j,k)*stochasticdemand(j,k));
display expdemand, fixeddemand;

equation expvaldemand(j);

expvaldemand(j)..  sum(i, pcap(i,j)*x(i,j)) + bumped(j) =g= expdemand(j);

model expval /cost,avail,expvaldemand/;

solve expval using lp minimizing z;

results('Expected value problem',i,j) = x.l(i,j);
obj('Expected value problem') = z.l;
display results;

*---------------------------------------------------------------------
* Solve deterministic equivalent problem
* There are 750 scenario's.
*---------------------------------------------------------------------

set s scenarios / scen1 * scen750 /;
alias (k,k1,k2,k3,k4,k5);

set ss(s) auxiliary set;
scalar jprob joint probabilities;
scalar cnt counter;

parameter scenprob(s) scenario probabilities;
parameter scendemand(s,j) demand for route j under scenario s;

cnt = 0;
loop( (k1,k2,k3,k4,k5),

   jprob =     probability('route-1',k1)*probability('route-2',k2)*
               probability('route-3',k3)*probability('route-4',k4)*
               probability('route-5',k5);

   if(jprob,

         cnt = cnt + 1;

* set ss to current element
         ss(s) = no;
         ss(s)$(ord(s) = cnt) = yes;

         scenprob(ss) = jprob;
         scendemand(ss,'route-1') =  stochasticdemand('route-1',k1);
         scendemand(ss,'route-2') =  stochasticdemand('route-2',k2);
         scendemand(ss,'route-3') =  stochasticdemand('route-3',k3);
         scendemand(ss,'route-4') =  stochasticdemand('route-4',k4);
         scendemand(ss,'route-5') =  stochasticdemand('route-5',k5);
   );
);

scalar sumprob;
sumprob = sum(s,scenprob(s));
display sumprob;
abort$(abs(sumprob - 1) > 0.001) "Error in probabilities";

positive variables scenbumped(s, j) passengers bumped under scenario s;
variables          capacityuse(j)   intermediate variables to reduce number of nonzeroes;

equations deteqobj, deteqdemand(s,j),defcap(j);

deteqobj .. z =e= sum((i,j), c(i,j)*x(i,j)) +
                  sum(s, scenprob(s)* sum(j, costbumped(j)*scenbumped(s,j)));

*deteqdemand(s,j).. sum(i, pcap(i,j)*x(i,j)) + scenbumped(s,j) =g= scendemand(s,j);
* the above formulation is intuitive but repeats sum(i, pcap(i,j)*x(i,j)) for
* every s, we introduce the intermediate variable capacityuse instead.

deteqdemand(s,j).. capacityuse(j) + scenbumped(s,j) =g= scendemand(s,j);

defcap(j).. capacityuse(j) =e= sum(i, pcap(i,j)*x(i,j));

model deteq /deteqobj, avail, deteqdemand, defcap /;

solve deteq using lp minimizing z;

results('Deterministic equivalent',i,j) = x.l(i,j);
obj('Deterministic equivalent') = z.l;

*---------------------------------------------------------------------
* Output stochastic file
*---------------------------------------------------------------------

file stg / MODEL.STG /;
put stg "INDEP DISCRETE"/;
loop(j,
   loop(k$probability(j,k),
       put "RHS demand ",j.tl," ",stochasticdemand(j,k)," PERIOD2 ",probability(j,k)/;
   );
);
putclose;

$ontext
The file MODEL.STG will look like:

INDEP DISCRETE
RHS demand route-1            200.00 PERIOD2         0.20
RHS demand route-1            220.00 PERIOD2         0.05
.
.
RHS demand route-5            600.00 PERIOD2         0.80
RHS demand route-5            620.00 PERIOD2         0.10

$offtext

*---------------------------------------------------------------------
* Define stages
*---------------------------------------------------------------------

x.stage(i,j) = 1;
bumped.stage(j) = 2;

avail.stage(i) = 1;
demand.stage(j) = 2;


*---------------------------------------------------------------------
* Output a MINOS option file
*---------------------------------------------------------------------

file mopt / MINOS.SPC /;
put mopt;
put "begin"/;
put "rows 250"/;
put "columns 250"/;
put "elements 10000"/;
put "end"/;
putclose;

*---------------------------------------------------------------------
* solve the stochastic model
*---------------------------------------------------------------------

option lp=%decisalg%;
solve fixed using lp minimizing z;
results('DECIS default sampling',i,j) = x.l(i,j);
obj('DECIS default sampling') = z.l;


*---------------------------------------------------------------------
* Let DECIS solve the model exactly
* Stochastic Universe option: 4 "ISTRAT"
*---------------------------------------------------------------------

file decopt / %decisalg%.opt /;
put decopt;
put '4 "ISTRAT"'/;
putclose;

fixed.optfile=1;
solve fixed using lp minimizing z;

results('DECIS universe problem',i,j) = x.l(i,j);
obj('DECIS universe problem') = z.l;

*---------------------------------------------------------------------
* Solve expected value problem using DECIS
*---------------------------------------------------------------------

put decopt;
put '1 "ISTRAT"'/;
putclose;

option lp=%decisalg%;
solve fixed using lp minimizing z;

results('DECIS expected value problem',i,j) = x.l(i,j);
obj('DECIS expected value problem') = z.l;

option obj:2:0:1;
display obj;

option results:2:1:2;
display results;

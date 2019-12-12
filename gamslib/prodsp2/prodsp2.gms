option LP=convert;
option LP=convert;
option LP=convert;
$title Stochastic Programming Example, reformulated for GAMS/DECIS (PRODSP2,SEQ=200)
$ontext

The problem consists of determining the product mix for a furniture shop with two
workstations: carpentry and finishing. The availability of labor in man-hours at
the two stations is limited. There are four product classes, each consuming a
certain number of man-hours at the two stations. Each product earns a certain
profit and the shop has the option to purchase labor from outside. The objective
is to maximize the profit.

The problem is solved for 300 scenarios.

See also PRODSP.


King, A J, Stochastic Programming Problems: Examples from the
Literature. In Ermoliev, Y, and Wets, R J, Eds, Numerical
Techniques for Stochastic Optimization Problems. Springer Verlag,
1988, pp. 543-567.

$offtext

$if not set decisalg $set decisalg decism


Sets i product class / class-1*class-4 /
     j workstation   / work-1 *work-2  /
     s Nodes         / s1*s300 /

Parameters c(i) profit / class-1 12,class-2 20, class-3 18, class-4 40 /
           q(j) cost   / work-1 5, work-2 10 /
           h(j,s)   available labor
           t(j,i,s) labor required

table trand(j,*,i) min and max values
            class-1 class-2 class-3 class-4
work-1.min    3.5    8         6      9
work-1.max    4.5   10         8     11
work-2.min     .8     .8       2.5   36
work-2.max    1.2    1.2       3.5   44 ;

t(j,i,s) = uniform(trand(j,'min',i),trand(j,'max',i));

h('work-1',s) = normal(6000,100);
h('work-2',s) = normal(4000, 50);


*--------------------------------------------------------------------------
* first the original deterministic equivalent
* this is a straight LP
*--------------------------------------------------------------------------

Variables EProfit  expected profit
          x(i)     products sold
          v(j,s)   labor purchased
positive variable x,v

Equations obj       expected cost definition
          lbal(j,s) labor balance;

obj.. EProfit =e=  sum(i, c(i)*x(i)) - 1/card(s)*sum((j,s), q(j)*v(j,s));

lbal(j,s).. sum(i, t(j,i,s)*x(i)) =l= h(j,s) + v(j,s);


model mix universe model / obj, lbal /;

mix.solprint$(card(s) > 10) = %solprint.Quiet%;

solve mix using lp maximizing eprofit;

display eprofit.l,x.l;

parameter stage1(*,i) hold the stage 1 results;

stage1('deterministic',i) = x.l(i);

*--------------------------------------------------------------------------
* Now the DECIS formulation
*--------------------------------------------------------------------------

Equations
  obj2      cost function
  lbal2(j)  labor balance
  extra     prevent unbounded relaxed master problem
;

variables
  profit    to be maximized
  v2(j)     labor purchased
;
positive variable v2;

parameter t2(j,i) mean values;
t2(j,i) = (trand(j,'min',i) + trand(j,'max',i))/2;

parameter h2(j) mean values / work-1 6000, work-2 4000 /;


obj2.. profit =e= sum(i, c(i)*x(i)) - sum(j, q(j)*v2(j));
lbal2(j).. sum(i, t2(j,i)*x(i)) =l= h2(j) + v2(j);

extra.. sum(i, c(i)*x(i)) =l= 1000000;

model mix2 decis model /obj2,lbal2, extra/;

* output the stochastic file using the scenarios
* calculated above. This generates a large stochastic file.
file stg / MODEL.STG /;
put stg;
put 'BLOCKS DISCRETE'/;
loop(s,
     put 'BL BLOCK1 PERIOD2 ',(1/card(s)):8:6/;
     loop((i,j),
          put 'x ',i.tl,' lbal2 ',j.tl,' ',t(j,i,s):12:6/;
     );
     loop(j,
         put 'RHS lbal2 ',j.tl,' ',h(j,s):12:6/;
     );
);
putclose;


*output a MINOS option file

file mopt / MINOS.SPC /;
put mopt;
put "begin"/;
put "rows 1000"/;
put "columns 1000"/;
put "elements 100000"/;
put "end"/;
putclose;

*assign stages
x.stage(i) = 1;
v2.stage(j) = 2;
lbal2.stage(j) = 2;
extra.stage=1;

option lp=%decisalg%;
solve mix2 using lp maximizing profit;


stage1('decis using scenarios',i) = x.l(i);

*--------------------------------------------------------------------------
* Let DECIS solve the model exactly
* Stochastic Universe option: 4 "ISTRAT"
*--------------------------------------------------------------------------

file decopt / %decisalg%.opt /;
put decopt;
put '4 "ISTRAT"'/;
putclose;

mix2.optfile=1;

solve mix2 using lp maximizing profit;


stage1('decis using scenarios, exact',i) = x.l(i);




*--------------------------------------------------------------------------
* Better use of the stochastic file: independent distributions
*--------------------------------------------------------------------------

scalar p;
p = 1/card(s);

put stg;
put 'INDEP DISCRETE'/;
loop((i,j),
     loop(s,
          put 'x ',i.tl,' lbal2 ',j.tl,' ',t(j,i,s):12:6,' PERIOD2 ',p:8:6/;
    );
);
loop(j,
     loop(s,
          put 'RHS lbal2 ',j.tl,' ',h(j,s):12:6,' PERIOD2 ',p:8:6/;
     );
);
putclose;


* this problem is way too big to solve exactly so turn off the
* option strategy 4.
mix2.optfile=0;

solve mix2 using lp maximizing profit;

stage1('decis indep. dist.',i) = x.l(i);

display stage1;

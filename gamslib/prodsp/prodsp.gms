option LP=convert;
option LP=convert;
option LP=convert;
$title Stochastic Programming Example (PRODSP,SEQ=186)
$ontext
The problem consists of determining the product mix for a furniture shop with two
workstations: carpentry and finishing. The availability of labor in man-hours at
the two stations is limited. There are four product classes, each consuming a
certain number of man-hours at the two stations. Each product earns a certain
profit and the shop has the option to purchase labor from outside. The objective
is to maximize the profit.


King, A J, Stochastic Programming Problems: Examples from the
Literature. In Ermoliev, Y, and Wets, R J, Eds, Numerical
Techniques for Stochastic Optimization Problems. Springer Verlag,
1988, pp. 543-567.

$offtext



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

Variables EProfit  expected profit
          x(i)     products sold
          v(j,s)   labor purchased
positive variable x,v

Equations obj       expected cost definition
          lbal(j,s) labor balance;

obj.. EProfit =e=  sum(i, c(i)*x(i)) - 1/card(s)*sum((j,s), q(j)*v(j,s));

Equation foo(i) dummy stage 0 constraint for OSLSE;
foo(i).. x(i) =g= 0;

lbal(j,s).. sum(i, t(j,i,s)*x(i)) =l= h(j,s) + v(j,s);

model mix / all /;

mix.solprint$(card(s) > 10) = %solprint.Quiet%;

solve mix using lp maximizing eprofit;

display eprofit.l,x.l;


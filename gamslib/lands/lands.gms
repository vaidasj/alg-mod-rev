option LP=convert;
option LP=convert;
option LP=convert;
$title Optimal Investment (LANDS,SEQ=188)
$ontext
The following two-stage problem consists of determining the optimal
capacity investment in various types of power plants so as to meet
next period demands for electricity. Four power plants are considered
and they can operate in three different modes. The next period demand
for each of the three modes are to be met. There is a budget
constraint and also a constraint on the minimum total capacity.


Louveaux, F V, and Smeers, Y, Optimal Investments for Electricity
Generation: A Stochastic Model and a Test Problem. In
Ermoliev, Y, and Wets, R J, Eds, Numerical Techniques for
Stochastic Optimization Problems. Springer Verlag, 1988,
pp. 445-452.

This problem will be solved in two steps, we solve each scenario
separately and then all three scenarios together.
$offtext

sets i  power plant type / plant-1*plant-4 /
     j  operating mode   / mode-1*mode-3 /

parameter c(i) investment cost / plant-1 10, plant-2 7, plant-3 16, plant-4 6 /
          d(j) energy demand   / mode-1 na, mode-2 3, mode-3 2 /

table f(i,j) operating cost
         mode-1 mode-2 mode-3
plant-1    40     24     4
plant-2    45     27     4.5
plant-3    32     19.2   3.2
plant-4    55     33     5.5

scalar m min installed capacity / 12 /
       b budget limit           /120 /;

Variables x(i)    capacity installed
          y(i,j)  operating level
          cost    total cost
Positive Variables x,y;

Equations defcost    definition of total cost
          mincap     minimum installed capacity
          bbal       budget constraint
          powbal(i)  power balance
          dembal(j)  demand balance;

defcost.. cost =e= sum(i, c(i)*x(i)) + sum((i,j), f(i,j)*y(i,j));

mincap..  sum(i, x(i)) =g= m;

bbal..   sum(i, c(i)*x(I)) =l= b;

powbal(i).. sum(j, y(i,j)) =l= x(i);

dembal(j).. sum(i, y(i,j)) =g= d(j);

model det / all /;



set s nodes     / s-1*s-3 /
parameter dvar(s) / s-1 3,  s-2 5,  s-3 7 /
          prob(s) / s-1 .3, s-2 .4, s-3 .3 /

Parameter repdet Scenario report;

loop(s,
   d('mode-1') = dvar(s);
   solve det minimizing cost using lp;
   repdet('cost',s) = cost.l;
   repdet(i,s)      = x.l(i);
   repdet('prob',s) = prob(s);
   det.solprint=%solprint.Quiet% );

*** make model stochastic

parameter ds(j,s) stochastic demand;

Positive Variable ys(i,j,s)  operating level

Equations defcosts    definition of total cost
          powbals(i,s)  power balance
          dembals(j,s)  demand balance;

defcosts.. cost =e= sum(i, c(i)*x(i))
                  + sum((i,j,s), prob(s)*f(i,j)*ys(i,j,s));

powbals(i,s).. sum(j, ys(i,j,s)) =l= x(i);

dembals(j,s).. sum(i, ys(i,j,s)) =g= ds(j,s);

model stoc / defcosts,mincap,bbal,powbals,dembals /;

ds(j,s)        = d(j);
ds('mode-1',s) = dvar(s);

solve stoc minimizing cost using lp;
repdet('cost','hedge') = cost.l;
repdet(i,'hedge')      = x.l(i);

display repdet;


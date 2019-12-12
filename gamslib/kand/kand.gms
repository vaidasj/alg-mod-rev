option LP=convert;
option LP=convert;
option LP=convert;
$title Stochastic Programming (KAND,SEQ=187)
$ontext
A refinery can blend raw materials into different products. At present, the management is trying
to decide how much of each of the raw materials to purchase and stock, so that they can be
blended to satisfy the demand for the products in future time periods. The demand has to be
completely satisfied, and in case of raw material shortage the products can be outsourced at a
higher cost. There is an inventory constraint on how much raw material can be stocked in total.


Kall, P, and Wallace, S W, Stochastic Programming. John Wiley and
Sons, Chichester, England, 1994.

$offtext


sets i raw materials / raw-1, raw-2 /
     j products      / p-1,p-2 /
     t time periods  / time-1, time-2 /
     n nodes         / n-1*n-12 /
alias(n,nn);

Parameters c(i) present cost of raw materials / raw-1 2, raw-2 3/

table a(j,i) yields

       raw-1 raw-2
p-1     2    6
p-2     3    3.4

table f(j,t) cost of outsourcing
      time-1  time-2
p-1     7       10
p-2    12       15

scalar b inventory capacity / 50 /;


table stdat(n,*) scenario tree data
     prob   p-1  p-2
n-1   .3    200  180
n-2   .4    180  160
n-3   .3    160  140

n-4   .2    200  180
n-5   .5    180  160
n-6   .3    160  140

n-7   .3    200  180
n-8   .4    180  160
n-9   .3    160  140

n-10  .4    200  180
n-11  .4    180  160
n-12  .2    160  140

set tn(t,n) time node mapping / time-1.(n-1*n-3), time-2.(n-4*n-12) /
    tree(n,n) / n-1.(n-4*n-6), n-2.(n-7*n-9), n-3.(n-10*n-12) /

parameter dem(n,j) stochastic demand
          prob(n)  node probability;

dem(n,j) = stdat(n,j);

prob(n)$tn('time-1',n) = stdat(n,'prob');
prob(n)$tn('time-2',n) = sum(tree(nn,n), stdat(nn,'prob')*stdat(n,'prob'));

display prob;

variables x(i,t) raw material purchased for use in time t
          y(j,t,n) outsourced products
          cost
positive variables x,y;

equations obj   total cost definition
          bal   purchase limit
          dembal(j,t,n) demand balance;

obj.. cost =e= sum((i,t), c(i)*x(i,t)) + sum((j,tn(t,n)), prob(n)*f(j,t)*y(j,tn));

bal.. sum((i,t), x(i,t)) =l= b;

dembal(j,tn(t,n)).. sum(i, a(j,i)*x(i,t)) + y(j,tn) =g= dem(n,j);

model kand / all /;

solve kand min cost us lp;

*  In order to use the SPOSL system we need to insert some dummy links
*  between stages two and three. Without these links, the SPOSL system will
*  identify only a two stage problem with different subproblem structures.
*  The value EPS is used to insert a constraint entry with numerical values
*  of zero.

equation dembalx(j,t,n) demand balance modified to include back link;

dembalx(j,tn(t,n)).. sum(i, a(j,i)*x(i,t)) + y(j,tn) =g= dem(n,j)
                    + eps*sum(tree(nn,n), y(j,t-1,nn));

model kandsp / obj, bal, dembalx /;

solve kandsp min cost us lp;

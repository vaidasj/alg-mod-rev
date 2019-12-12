option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Robust Optimization (ROTDK,SEQ=185)
$Ontext

Robust Optimization


Laguna, M, Applying Robust Optimization to Capacity Expansion of
One Location in Telecommunications with Demand Uncertainty.
Management Science 44, 11 (1998), 101-110.

$Offtext

SETS s scenarios / 1*1000/
     t time periods / t1*t12 /
     j components / C001*C010 /

alias(t,tt);

PARAMETERS
     di(s,t) increment
     D(t,s)  demand
     c(j)    capacity size
     p(j)    capacity cost
     mu      mean capacity parameter
     sigma   std capacity parameter;

mu = 100; sigma = 10;

c(j) = round(uniform(1,mu));
p(j) = round(mu + c(j) + uniform(-sigma,sigma));

di(s,t)$(ord(s) <= 0.25*card(s)) = round(normal( 50,10));
di(s,t)$(ord(s)  > 0.25*card(s) and ord(s) <= 0.75*card(s)) = round(normal(100,20));
di(s,t)$(ord(s)  > 0.75*card(s)) = round(normal(150,40));

d(t,s) = sum(tt$(ord(tt) <= ord(t)), di(s,tt));
*display c,p,di,d;

parameters dis(t) discount factor
           w      shortage penalty;

dis(t) = power(.86,ord(t)-1);
w      = 5;

variables x(j,t) expansion
          z(s) max capacity shortage
          cap(t) installed capacity
          obj;

integer variable x; positive variable z;

equations capbal(t)   capacity balance
          dembal(t,s) demand balance
          objdef;


objdef.. obj =e= sum((j,t), dis(t)*p(j)*x(j,t))
               + w/card(s)*sum(s, z(s));

capbal(t).. cap(t) =e= cap(t-1) + sum(j, c(j)*x(j,t));

dembal(t,s).. cap(t) + z(s) =g= d(t,s);

model rotdk / all /;

option limcol=0,limrow=0;
* do not reset optcr if already set to a nondefault value
if {(.1 = %gams.optcr%), option optcr = 0.05; };

solve rotdk min obj us mip;


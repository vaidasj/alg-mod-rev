option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Dynamic open pit mining extraction (OPENPIT,SEQ=309)
$ontext
This is an example of how to model material extractions that
have sequencing requirements with a multi-period decision process.
A segment has to be extracted completely before we can start on
the next segment. Segments not completely extracted have to be
extracted in the next time period or remain partially extracted in
the last time period. The requirement of full extraction adds
complications to the modeling within the multi-period framework.


Reference: GAMS Development Corporation, Formulation and Language
Example.
$offtext

$if NOT set tmx $set tmx 4
$if NOT set smx $set smx 50
$if NOT set pmx $set pmx 4

set t extraction periods     / t1*t%tmx% /
    s extraction segments    / s1*s%smx% /
    p pits                   / p1*p%pmx% /;


parameter nev(p,s)  net extraction benefit
          evo(p,s)  extraction volume
          demand(t) product demand
          rho       discount rate
          delta(t)  discount factor;

parameter fix(p) offset for random  value
          var(p) var for random values;

* produce random input data with differing net benefit profiles
fix(p) = uniform(-1,+1); var(p) = -sign(fix(p))*uniform(1,5);
nev(p,s) = (fix(p) + var(p)/card(s)*(ord(s)-1));
evo(p,s) = uniform(.1,1);
* set demand to 70 percent of total resource
demand(t) = sum((p,s), evo(p,s))*0.7/card(t);

rho = 0.1; delta(t) = power(1+rho,1-ord(t));

binary variables
   b(p,s,t)   segment can be extracted
   e(p,s,t)   last extracted segment and start
   open(p,s)  segments activated
integer variable
   ej(p,t)    period of last segment
positive variable
   out(p,s,t) extraction level
   pout(p,t)  pit output
variables
   obj       total discounted net income

equations
   eone(p,t)      extraction sequence ends only once
   etwo(p,t)      extraction ending sequence
   ethree(p,t)    sequencing of end start
   opendef(p,s,t) set open to one
   openlow(p,s)   set open to zero
   brun(p,s,t)    define staircase for B
   defpout(p,t)   define pit output
   dem(t)         total demand
   outlim(p,s,t)  extraction limit
   outmax(p,s)    total extraction limit
   outall(p,s)    force complete extraction except last one
   defobj;

eone(p,t)..     sum(s, e(p,s,t)) =e= 1;

etwo(p,t)..     ej(p,t)   =e= sum(s, ord(s)*e(p,s,t));
ethree(p,t-1).. ej(p,t-1) =l= ej(p,t);

brun(p,s,t)..  b(p,s,t) =e= b(p,s-1,t) - e(p,s-1,t) + e(p,s,t-1) +
(ord(t)=1 and ord(s)=1);

defpout(p,t).. pout(p,t) =e= sum(s, out(p,s,t));

dem(t)..  sum(p, pout(p,t)) =e= demand(t);


opendef(p,s,t).. open(p,s) =g= b(p,s,t);
openlow(p,s)..   open(p,s) =l= sum(t, b(p,s,t));

outlim(p,s,t)..  out(p,s,t) =l= evo(p,s)*b(p,s,t);

outall(p,s).. sum(t, out(p,s,t)) =g= evo(p,s)*open(p,s+1);
outmax(p,s).. sum(t, out(p,s,t)) =l= evo(p,s)*open(p,s);

defobj.. obj =e= sum((p,s,t), delta(t)*nev(p,s)*out(p,s,t));

model extract /all /;

if(card(s)*card(p)*card(t) > 200,
   option limrow=0,limcol=0,solprint=off,optcr=0.01
else
   option optcr=0; display evo,nev );

* limit single pit output to 80 percent of demand
pout.up(p,t) = 0.8*demand(t);

solve extract using mip max obj;

display ej.l,e.l,b.l,out.l,pout.l;

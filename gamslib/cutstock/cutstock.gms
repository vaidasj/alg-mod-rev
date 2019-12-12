option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Cutting Stock - A Column Generation Approach (CUTSTOCK,SEQ=294)

$ontext
 The task is to cut out some paper products of different sizes from a
 large raw paper roll, in order to meet a customer's order. The objective
 is to minimize the required number of paper rolls.


P. C. Gilmore and R. E. Gomory, A linear programming approach to the
cutting stock problem, Part I, Operations Research 9 (1961), 849-859.

P. C. Gilmore and R. E. Gomory, A linear programming approach to the
cutting stock problem, Part II, Operations Research 11 (1963), 863-888.
$offtext

Set  i    widths    /w1*w4/
Parameter
     r    raw width /100/
     w(i) width     /w1  45
                     w2  36
                     w3  31
                     w4  14/
     d(i) demand    /w1  97
                     w2 610
                     w3 395
                     w4 211/

* Gilmore-Gomory column generation algorithm

Set  p        possible patterns  /p1*p1000/
     pp(p)    dynamic subset of p
Parameter
     aip(i,p) number of width i in pattern growing in p;


* Master model
Variable xp(p)     patterns used
         z         objective variable
Integer variable xp; xp.up(p) = sum(i, d(i));

Equation numpat    number of patterns used
         demand(i) meet demand;

numpat..     z =e= sum(pp, xp(pp));
demand(i)..  sum(pp, aip(i,pp)*xp(pp)) =g= d(i);

model master /numpat, demand/;

* Pricing problem - Knapsack model
Variable  y(i) new pattern;
Integer variable y; y.up(i) = ceil(r/w(i));

Equation defobj
         knapsack knapsack constraint;

defobj..     z =e= 1 - sum(i, demand.m(i)*y(i));
knapsack..   sum(i, w(i)*y(i)) =l= r;

model pricing /defobj, knapsack/;

* Initialization - the initial patterns have a single width
pp(p) = ord(p)<=card(i);
aip(i,pp(p))$(ord(i)=ord(p)) = floor(r/w(i));
*display aip;

Scalar done  loop indicator /0/
Set    pi(p) set of the last pattern; pi(p) = ord(p)=card(pp)+1;

option optcr=0,limrow=0,limcol=0,solprint=off;

While(not done and card(pp)<card(p),
   solve master using rmip minimizing z;
   solve pricing using mip minimizing z;

* pattern that might improve the master model found?
   if(z.l < -0.001,
      aip(i,pi) = round(y.l(i));
      pp(pi) = yes; pi(p) = pi(p-1);
   else
      done = 1;
   );
);
display 'lower bound for number of rolls', master.objval;

option solprint=on;
solve master using mip minimizing z;

Parameter patrep Solution pattern report
          demrep Solution demand supply report;

patrep('# produced',p) = round(xp.l(p));
patrep(i,p)$patrep('# produced',p) = aip(i,p);
patrep(i,'total') = sum(p, patrep(i,p));
patrep('# produced','total') = sum(p, patrep('# produced',p));

demrep(i,'produced') = sum(p,patrep(i,p)*patrep('# produced',p));
demrep(i,'demand') = d(i);
demrep(i,'over') = demrep(i,'produced') - demrep(i,'demand');

display patrep, demrep;

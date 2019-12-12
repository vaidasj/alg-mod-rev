option MCP=convert;
option MCP=convert;
option MCP=convert;
$title Models of Spatial Competition in MCP Form (HARKMCP,SEQ=128)
$Ontext

  A spatial equilibrium model is used to demonstrate different
  ways of modeling market behavior. An earlier version (HARKER)
  used optimization to solve these problems. In this version,
  the problems are solved as complementarity problems.


Harker, P T, Alternative Models of Spatial Competition. Operations
Research 34, 3 (1986), 410-425.

$Offtext

sets  n     nodes    / one, two, three, four, five, six /
      l(n)  regions  / one, two, three /;

alias (l,lp),(n,np);

*       linear demand function:

*               d(p) = (rho - p) / eta

*       linear marginal cost function:

*               c(y) = alpha + 2 * beta * y


table coefs(l,*)  demand and supply data

            alpha   beta     rho      eta

one         1       0.5      19       0.2
two         2       0.4      27       0.01
three       1.5     0.3      30       0.3


*       the market is structured on a network.  the total transport cost
*       on the ij link is given by:

*               tcij = kappaij  * xij + nuij * xij^3

table pairs(n,np,*)  transport data

           kappa     nu
one.four     1       .5
one.five     2       .2
two.six      3       .3
three.six    1       .4
four.one     2       .3
four.five    1       .1
four.six     1       .1
five.one     3       .5
five.four    2       .2
five.six     1      1.0
six.two      2       .25
six.three    2       .2
six.four     1       .9
six.five     3       .8

set arc(n,np) active arcs;
arc(n,np) = yes$pairs(n,np,"kappa");

positive variables

                d(l)            consumer demand,
                c(n)            marginal cost,
                y(n)            production,
                x(n)            total sales,
                p(l)            consumer price,
                t(n,np)         transport;

equations

*       equations for basic model:

                demand(l)       inverse demand function (linear),
                supply(n)       node balance condition,
                mkt(l)          market clearance,
                mrmc(l)         pricing equation,
                tcost(n,np)     transport cost equation,
                cost(n)         marginal cost of supply;

*       market structure flags:

scalar  monopoly        indicator for monopoly pricing /0/,
        acp             indicator for average cost pricing of transport/0/;


*       in these equations the associated variable is listed after
*       the description:


*       inverse demand functions (d):

demand(l)..     coefs(l,"eta") * d(l) =g= coefs(l,"rho") - p(l);


*       node balance (c):

supply(n)..     y(n)$l(n) + sum(np$arc(np,n), t(np,n)) =g=

                x(n)$l(n) + sum(np$arc(n,np), t(n,np));

*       supply-demand balance (p):

mkt(l)..        x(l) =g= d(l);

*       pricing equation relating marginal cost to consumer price (x):

mrmc(l)..       c(l) =g= p(l) - (x(l) * coefs(l,"eta"))$monopoly;

*       transport activity zero profit condition (with adjustment
*       depending on whether suppliers use average or marginal cost):

tcost(n,np)$arc(n,np)..

        c(n) + pairs(n,np,"kappa") + (3 - (2)$acp) *

                 pairs(n,np,"nu") * t(n,np) * t(n,np) =g= c(np);

*       marginal cost equations:

cost(l)..        coefs(l,"alpha") + 2 * coefs(l,"beta") * y(l) =g= c(l);


*       define the model and the equation.variable associations:

model harker    /demand.d,supply.c,mkt.p, mrmc.x,tcost.t,cost.y/;


*       additional variables for oligopoly model:

positive
variables
        cc(l,n)         cost of supply to node n by producer l,
        xx(l,n)         supply from producer l to market lp,
        tt(l,n,np)      shipments by producer l from node n to np;

*       revised equations for oligopoly model:

equations
                altsupply(l,n)          node balance equation,
                altmkt(l)               demand balance,
                altmrmc(lp,n)           pricing equations,
                alttcost(l,n,np)        transport margins,
                altcost(l)              supply price equation,
                tdef(n,np)              total transport demand;

set  prd(l,n)   indicator set for producer type l operating at node n;
prd(l,n) = no;
prd(l,l) = yes;

*       material balance:

altsupply(lp,n)..

        y(lp)$prd(lp,n) + sum(np$arc(np,n), tt(lp,np,n)) =g=

                xx(lp,n)$l(n) + sum(np$arc(n,np), tt(lp,n,np));

*       demand balance:

altmkt(l)..     sum(lp, xx(lp,l)) =g= d(l);

*       pricing equation:

altmrmc(lp,l)..   cc(lp,l) =g=
                                p(l) - xx(lp,l) * coefs(l,"eta");

*       transport activity zero profit condition:

alttcost(l,n,np)$arc(n,np)..

        cc(l,n) + pairs(n,np,"kappa") + (3 - (2)$acp) *

                 pairs(n,np,"nu") * t(n,np) * t(n,np) =g= cc(l,np);

*       total transport demand (this equation and variable t is
*       included in the monopoly model only to improve sparsity of
*       the alttcost constraint).

tdef(n,np)$arc(n,np)..

        t(n,np) =e= sum(l, tt(l,n,np));

*       marginal cost of supply:

altcost(l)..

        coefs(l,"alpha") + 2 * coefs(l,"beta") * y(l) =g= cc(l,l);

model harkoli  /demand.d,    altsupply.cc, altmkt.p, altmrmc.xx,
                alttcost.tt, altcost.y, tdef.t/;

parameters rep1 transport summary,
           rep2 supply demand and price summary;

t.l(n,np) = 0;
y.l(l) = 25;
x.l(n) = 1;
c.l(n) = 1;
d.l(l) = 1;
p.l(l) = 1;
t.fx(n,np)   $(not arc(n,np)) = 0;
tt.fx(l,n,np)$(not arc(n,np)) = 0;

*       solve four alternative models, all based on the same data:

*       1. classical spatial price equilibrium: perfectly competitive
*       producers and suppliers facing average cost pricing
*       of transportation:

        monopoly=0; acp=1;
        solve harker using mcp;
        rep1(n,np,      "cspe2") = t.l(n,np);
        rep2("supply",l,"cspe2") = y.l(l);
        rep2("demand",l,"cspe2") = d.l(l);
        rep2("price ",l,"cspe2") = p.l(l);

*       2. monopoly pricing equilibrium in which the firm owns both
*       means of production and distribution network (hence, marginal
*       cost pricing prevails at both the factory and the railhead):

        monopoly=1; acp=0;
        solve harker using mcp;
        rep1(n,np,      "monop1") = t.l(n,np);
        rep2("supply",l,"monop1") = y.l(l);
        rep2("demand",l,"monop1") = d.l(l);
        rep2("price ",l,"monop1") = p.l(l);

*       3. monopoly pricing equilibrium in which the firm uses the
*       distribution network with average cost pricing:

        monopoly=1; acp=1;
        solve harker using mcp;
        rep1(n,np,      "monop2") = t.l(n,np);
        rep2("supply",l,"monop2") = y.l(l);
        rep2("demand",l,"monop2") = d.l(l);
        rep2("price ",l,"monop2") = p.l(l);

*       4. multi-producer oligopoly model with average cost pricing
*       of transportation links:

        monopoly=0;  acp=1;
        solve harkoli using mcp;
        rep1(n,np,      "oligop") = t.l(n,np);
        rep2("supply",l,"oligop") = y.l(l);
        rep2("demand",l,"oligop") = d.l(l);
        rep2("price ",l,"oligop") = p.l(l);

*       compare the results from these computations with those
*       which are reported by gams test problem harker.85 in which
*       a consumer-producer surplus methods and a diagonalization
*       algorithm use minos to solve the equilibrium system:


        display rep1, rep2;


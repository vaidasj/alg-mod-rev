option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Optimal Pricing and Extraction for OPEC  (PINDYCK,SEQ=28)
$Ontext

This model finds the optimal pricing and extraction of oil for
the OPEC cartel.


Pindyck, R S, Gains to Producers from the Cartelization of
Exhaustible Resources. Review of Economics and Statistics 60
(1978), 238-251.

$Offtext

Sets t       overall time horizon  / 1974*1990 /
     to(t)   optimization period   / 1975*1990 /

Parameter demand(t) equilibrium world demand for fixed prices;
          demand(to) = 1. + 2.3*1.015**(ord(to)-1);

Variables p(t)    world price of oil
          td(t)   total demand for oil
          s(t)    supply of oil by non-opec countries
          cs(t)   cumulative supply by non-opec countries
          d(t)    demand for opec-oil
          r(t)    opec reserves
          rev(t)  revenues in each period
          profit

Positive Variables  p,td,s,cs,d,r

Equations tdeq(t) total demand equation
          seq(t)  supply equation for non-opec countries
          cseq(t) accounting equation for cumulative supply
          deq(t)  demand equation for opec
          req(t)  accounting equation for opec reserves
          drev(t) yearly objective function value
          tprofit total objective function;

$Double

tdeq(t-1)..   td(t)   =e= 0.87*td(t-1) - 0.13*p(t) + demand(t);
seq(t-1)..    s(t)    =e= 0.75*s(t-1) + (1.1+0.1*p(t))*1.02**(-cs(t)/7);
cseq(t-1)..   cs(t)   =e= cs(t-1) + s(t);
deq(to)..     d(to)   =e= td(to) - s(to);
req(t-1)..    r(t)    =e= r(t-1) - d(t);
drev(to)..    rev(to) =e= d(to)*(p(to)-250/r(to));
tprofit..     profit  =e= sum(to,rev(to)*1.05**(1-ord(to)));

$Single

*
*  fixed initial conditions
*
td.fx("1974") =  18; s.fx ("1974") = 6.5;
r.fx ("1974") = 500; cs.fx("1974") = 0.0;

td.l(to) = 18; s.l(to)= 7; cs.l(to) = 7*ord(to);
d.l (to) = td.l(to)-s.l(to); p.l(to) = 14;

Loop(t$to(t), r.l(t) = r.l(t-1)-d.l(t) );

Display td.l, s.l, cs.l, d.l, r.l;

Model robert / all /; Solve robert maximizing profit using nlp;

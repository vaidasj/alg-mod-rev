option LP=convert;
option LP=convert;
option LP=convert;
$Title Vertically Integrated Company  (PAPERCO,SEQ=102)
$Inlinecom { }

$Ontext

   This is an alternative formulation of the model PAPERCO found in
   Computational Economics, Chapter 9. This version introduces
   several sets to partition the equation and variable space into
   four groups. This example further shows how to implement the
   suggested scenarios by using a LOOP statement.


Thompson, G, and Thor, S, Computational Economics: Economic Modeling
with Optimization Software. The Scientific Press, San Francisco, 1991.

$Offtext

Sets  l  log suppliers  / company, farmer /
      w  wood products  / ground, chips /
      p  pulp types     / pulp-1, pulp-2 /
      q  paper types    / kraft, newsprint, printing /


Table ap(w,p) pulp manufacturing input requirements

           pulp-1   pulp-2
ground      .6        .3
chips       .4        .7

Table aq(p,q) paper manufacturing input requirements

            kraft  newsprint  printing
pulp-1       .68      .45        .25
pulp-2       .32      .55        .75


Table cw(w,p) wood shipment cost

            pulp-1   pulp-2
(ground
 chips )     40        55

Table cp(p,q) pulp shipment cost

            kraft  newsprint  printing
pulp-1        40      60         70
pulp-2        55      50         45

Table sdat(q,*) sales data

             lower     upper
kraft         18        25
newsprint     12        15
printing       0         7

Parameter pq(q) sales price / kraft 265, newsprint 275, printing 310 /
          pp(p) price of pulp
          pc(w) / ground 18, chips 16 /

Scalar plog / 65 /

Positive Variables

   logs(l)         purchases of logs (tons)
   xw(w,p)         shipments of wood products (tons)
   pulp(p)         production of pulp (tons)
   xp(p,q)         shipments of pulp (tons)
   paper(q)        production and sales of paper products (tons)
   sales(p)        sales of pulp (tons)
   purchase(p)     purchase of pulp (tons)
Variables
   profit          net operating income

Equations
   logbal
   wbal(w,p)
   pbal(p)
   qbal(p,q)
   obj;

logbal..     .97*sum(l, logs(l)) =e= sum((w,p), xw(w,p));

wbal(w,p)..   xw(w,p) =e= ap(w,p)*pulp(p);

pbal(p)..     sum(q, xp(p,q)) =e= purchase(p) - sales(p) + pulp(p);

qbal(p,q)..   xp(p,q) =e= aq(p,q)*paper(q);

obj..  profit =e= sum(p, pp(p)*sales(p))              { sales of pulp }
                + sum(q, pq(q)*paper(q))              { sales of paper }
                - sum(l, plog*logs(l))                { cost of logs }
                - sum((p,q), cp(p,q)*xp(p,q))         { transport cost of pulp }
                - sum((w,p), (cw(w,p)+pc(w))*xw(w,p)) { transport cost of wood }
                - sum(p, pp(p)*purchase(p));

Model wood / all /;

paper.lo(q) = sdat(q,'lower');
paper.up(q) = sdat(q,'upper');

Set scenario scenario identifier  / scenario-1*scenario-3 /

Table  psdat(scenario,p,*) bounds on pulp trade (tons)

               pulp-1.s pulp-1.p   pulp-2.s pulp-2.p
scenario-1
scenario-2        3        5          3        5
scenario-3        6        6         10       10

Table  ppdat(scenario,p) price data for pulp trade ($ per tons)

               pulp-1  pulp-2
scenario-1       120     140
scenario-2       120     140
scenario-3       120     150

Loop(scenario,
   purchase.up(p) = psdat(scenario,p,'p');
   sales.up(p)    = psdat(scenario,p,'s');
   pp(p)          = ppdat(scenario,p);
   Solve wood maximizing profit using lp;
   Option limcol=0, limrow=0 ;              );


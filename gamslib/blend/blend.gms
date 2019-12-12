option LP=convert;
option LP=convert;
option LP=convert;
$Title Blending Problem I  (BLEND,SEQ=2)
$Ontext

A company wishes to produce a lead-zinc-tin alloy at minimal cost.
The problem is to blend a new alloy from other purchased alloys.


Dantzig, G B, Chapter 3.4. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

Sets alloy  products on the market / a, b, c, d, e, f, g, h, i /
     elem   required elements      / lead, zinc, tin /

Table  compdat(*,alloy)  composition data (pct and price)

         a    b    c    d    e    f    g    h   i
lead    10   10   40   60   30   30   30   50   20
zinc    10   30   50   30   30   40   20   40   30
tin     80   60   10   10   40   30   50   10   50
price  4.1  4.3  5.8  6.0  7.6  7.5  7.3  6.9  7.3

Parameters rb(elem)  required blend / lead = 30, zinc = 30, tin = 40 /
           ce(alloy) composition error (pct-100);

    ce(alloy) = sum(elem, compdat(elem,alloy)) - 100; display ce;

Variables v(alloy) purchase of alloy (pounds)
          phi      total cost

Positive Variable v

Equations pc(elem)  purchase constraint
          mb        material balance
          ac        accounting: total cost;

pc(elem).. sum(alloy, compdat(elem,alloy)*v(alloy)) =e= rb(elem);

mb..       sum(alloy, v(alloy)) =e= 1;

ac..       phi =e= sum(alloy, compdat("price",alloy)*v(alloy));

Models b1 problem without mb / pc, ac /
       b2 problem with mb    / pc,mb,ac /

Parameter report(alloy,*) comparison of model 1 and 2;

Solve b1 minimizing phi using lp; report(alloy,"blend-1") = v.l(alloy);
Solve b2 minimizing phi using lp; report(alloy,"blend-2") = v.l(alloy);

Display report;


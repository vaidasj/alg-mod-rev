option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Chance Constraint Feed Mix Problem  (CHANCE,SEQ=26)
$Ontext

Cattle feed problem with chance constraints. Two problems are
formulated, a deterministic model and the chance constraint
version deterministic equivalent.


Bracken, J, and McCormick, G P, Chapter 9. In Selected Applications of
Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 94-100.

$Offtext

sets f  feeds     / barley, oats, sesame, grnd-meal /
     n  nutrients / protein, fats /

parameters  price(f)  feed prices (fgld per ton) / barley    24.55
                                                   oats      26.75
                                                   sesame    39.00
                                                   grnd-meal 40.50 /
            req(n)    requirements (pct) / protein = 21, fats = 5 /

      table char(*,n,f) feed characteristics (pct)

                 barley    oats     sesame    grnd-meal
mean.protein     12.0      11.9      41.8       52.1
mean.fats         2.3       5.6      11.1        1.3
variance.protein   .28       .19     20.5         .62

variables  cost   total cost per ton
            x(f)   feed mix (pct)
positive variable x;

equations   cdef   cost definition
            mc     mix constraint
            nbal(n) nutrient balance
            cc(n)   chance constraint ;

cdef..  cost =e= sum(f, price(f)*x(f));

mc..    sum(f, x(f)) =e= 1;

nbal(n).. sum(f, char("mean",n,f)*x(f)) =g= req(n);

cc(n)..   sum(f, char("mean",n,f)*x(f)) - 1.645*sqrt(sum(f, char("variance",n,f)*sqr(x(f)))) =g= req(n);

models det    deterministic model / cdef, mc, nbal /
       chance chance model        / cdef, mc, cc /

parameter mix Mixing report;

solve det    minimizing cost using lp;  mix(f,'det   ') = x.l(f);
solve chance minimizing cost using nlp; mix(f,'chance') = x.l(f);

display mix;

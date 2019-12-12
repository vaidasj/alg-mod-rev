option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Bid Evaluation (BID,SEQ=19)
$Ontext

A company obtains a number of bids from vendors for the supply
of a specified number of units of an item. Most of the submitted
bids have prices that depend on the volume of business.


Bracken, J, and McCormick, G P, Chapter 3. In Selected Applications of
Nonlinear Programming. John Wiley and Sons, New York, 1968, pp. 28-36.

$Offtext

sets  v       vendors       / a, b, c, d, e /
      s       segments      / 1*5 /
      vs(v,s) vendor bit possibilities
      cl      column labels / setup, price, q-min, q-max /

scalar req requirements / 239600.48 / ;

  table bid(v,s,cl)  bid data

               setup      price     q-min    q-max
a.1          3855.84     61.150              33000
b.1        125804.84     68.099     22000    70000
b.2                      66.049     70000   100000
b.3                      64.099    100000   150000
b.4                      62.119    150000   160000
c.1         13456.00     62.190             165600
d.1          6583.98     72.488              12000
e.1                      70.150              42000
e.2                      68.150     42000    77000;


*  get minimum domains and ripple total cost up the segments

vs(v,s)          = bid(v,s,'q-max');

loop(vs(v,s+1),
   bid(v,s+1,'setup') = bid(v,s,'setup')
                      + bid(v,s,'q-max')*(bid(v,s,'price')-bid(v,s+1,'price')));
display bid;


variables  c        total cost
           pl(v,s)  purchase level
           plb(v,s) purchase decision
binary variable plb;

equations  demand     demand constraint
           costdef    cost definition
           minpl(v,s) min purchase
           maxpl(v,s) max purchase
           oneonly(v) at most one deal;

demand..   req =e= sum(vs, pl(vs));

costdef..  c   =e= sum(vs, bid(vs,'price')*pl(vs)
                         + bid(vs,'setup')*plb(vs));

minpl(vs).. pl(vs) =g= bid(vs,'q-min')*plb(vs);

maxpl(vs).. pl(vs) =l= bid(vs,'q-max')*plb(vs);

oneonly(v)..  sum(vs(v,s), plb(vs)) =l= 1;

model bideval / all /;

option optcr=0.0; solve bideval minimizing c using mip;


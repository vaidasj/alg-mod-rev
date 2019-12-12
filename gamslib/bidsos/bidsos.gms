option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Bid Evaluation with SOS2 Sets  (BIDSOS,SEQ=163)
$Ontext
  A company obtains a number of bids from vendors for the supply
  of a specified number of units of an item. Most of the submitted
  bids have prices that depend on the volume of business. A formulation
  with 0/1 variables is shown in the original gamslib model BID. Here
  we use SOS2 sets (at most two variables can be basic but have to be
  adjacent. SOS2 variables are a convenient way to interpolate non-
  convex but separable functions.


Bracken, J, and McCormick, G P, Chapter 3. In Selected Applications
of Nonlinear Programming. John Wiley and Sons, New York, 1968,
pp. 28-36.

$Offtext

sets  v       vendors       / a, b, c, d, e /
      s       segments      / nodeal, 0*5 /
      vs(v,s) vendor bit possibilities
      cl      column labels / setup, price, q-min, q-max ,cost /

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


*  get minimum domains ripple total cost up the segments
*  cost will contain the total segment cost

bid(v,'0','cost') = bid(v,'1','setup') + bid(v,'1','q-min')*bid(v,'1','price');
loop((v,s)$bid(v,s,'q-max'),
   bid(v,s,'cost') = bid(v,s-1,'cost')
                   + (bid(v,s,'q-max')-bid(v,s,'q-min'))*bid(v,s,'price'));
display bid;

vs(v,s)          = bid(v,s,'q-max');
vs(v,'nodeal')   = yes;
vs(v,'0')        = yes;


     variable   c        total cost
sos2 variables  pl(v,s)  purchase level       (sos2 type variable)


equations  demand     demand constraint
           costdef    cost definition
           convex     convexity definition for segments;

demand..   req =e= sum(vs, bid(vs,'q-max')*pl(vs));

costdef..  c   =e= sum(vs, bid(vs,'cost') *pl(vs));

convex(v).. sum(vs(v,s), pl(vs)) =e= 1;

model bideval / all /;

option optcr=0.0; solve bideval minimizing c using mip;

parameter rep purchase report;
rep(v) = sum(vs(v,s), bid(vs,'q-max')*pl.l(vs)); display rep;


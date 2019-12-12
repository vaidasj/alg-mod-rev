option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$TITLE Optimal Design for Chemical Batch Processing (BATCHDES,SEQ=119)

$Ontext

   A chemical batch process having three processing stages: mixing,
   reaction and centrifuge separation, produce two products. This
   model is used to determine the number and sizes of units to
   operate in parallel at each stage. The resulting model is
   nonlinear and mixed integer;


Morari, M, and Grossmann, I E, Eds, Chemical Engineering Optimization
Models with GAMS. Computer Aids for Chemical Engineering Corporation,
1991.

Kocis, G R, and Grossmann, I E, Global Optimization of Nonconvex MINLP
Problems in Process Synthesis. Independent Engineering Chemical
Research 27 (1988), 1407-1421.

$Offtext
Sets         i         products         / a , b /
             j         stages           /mixer, reactor, centrifuge/
             k         potential number of parallel units  / 1 * 3 /

Scalar       h         horizon time (available time hrs)  /6000./
             vlow      lower bound for size of batch unit /250./
             vupp      upper bound for size of batch unit /2500./

Parameters   q(i)      demand of product i  /
                        a   200000
                        b   150000        /
             alpha(j)  cost coefficient for batch units
                      / mixer        250.
                        reactor      500.
                        centrifuge   340. /
             beta(j)   cost exponent for batch units
                      / mixer        0.6
                        reactor      0.6
                        centrifuge   0.6  /

* the parameters below are defined to obtain the original variables
             actv(j)   actual volume (l)
             actb(i)   actual batch sizes (kg)
             acttl(i)  actual cycle times (hrs)
             actn(j)   actual number of units in parallel
             coeff(k)  represent number of parallel units   ;

coeff(k) = log(ord(k))  ;

Table        s(i,j)    size factor for product i in stage j (kg per l)
           mixer     reactor   centrifuge
   a          2         3         4
   b          4         6         3

Table        t(i,j)    processing time of product i in batch j (hrs)
           mixer     reactor   centrifuge
   a          8        20         4
   b         10        12         3

Variables    y(k,j)    binary variable denoting stage existence
             v(j)      volume of stage j (l)
             b(i)      batch size of product i (kg)
             tl(i)     cycle time of product i (hrs)
             n(j)      number of units in parallel stage j
             cost      total cost of batch processing units ($)  ;

Binary   Variables     y(k,j) ;
Positive Variables     v(j) , b(i) , tl(i) , n(j) ;

Equations    vol(i,j)   calculate volume of stage j
             cycle(i,j) calculate cycle time of product i
             time       time constraint
             units(j)   calculate number of processing units per stage
             lim(j)     limit selection to one number
             obj        objective function definition ;

* convexified formulation of model equations
* volume requirement in stage j
vol(i,j)..   v(j)  =g=  log(s(i,j)) +b(i) ;

* cycle time for each product i
cycle(i,j).. n(j) + tl(i)  =g=  log(t(i,j)) ;

* constraint for production time
time..       sum(i , q(i) * exp(tl(i) - b(i))) =l= h ;

* relating number of units to 0-1 variables
units(j)..   n(j)  =e=       sum(k , coeff(k) * y(k,j)) ;

* only one choice for parallel units is feasible
lim(j)..     sum(k , y(k,j)) =e= 1 ;

* defining objective function
obj..        cost  =g=  sum(j ,alpha(j)*(exp(n(j) + beta(j)*v(j))));

Model   batch   / all / ;

* bounds section
v.lo(j)   =  log(vlow) ;
v.up(j)   =  log(vupp);
n.up(j)   =  log(3.) ;

* tight lower bounds are computed below for cycle times and batch sizes
Parameters   tllow(i)       lower bound on tl(i)
             tlupp(i)       upper bound on tl(i) ;

tllow(i)  =  smax(j, t(i,j) / exp(n.up(j))) ;
tlupp(i)  =  smax(j, t(i,j) ) ;

tl.lo(i)  =  log(tllow(i)) ;
tl.up(i)  =  log(tlupp(i)) ;

Parameters   blow(i)        lower bound on b(i)
             bupp(i)        upper bound on b(i)  ;

blow(i)  =  q(i) * ( smax(j, t(i,j) / exp(n.up(j))))/ h;
bupp(i)  =  min( q(i) , smin(j , exp(v.up(j))/s(i,j))) ;

b.lo(i)   =  log(blow(i)) ;
b.up(i)   =  log(bupp(i)) ;

*  initial point
* binary variables set for 3 units per stage

y.l(k,j)              = 0.;
y.l('3','mixer')      = 1;
y.l('3','reactor')    = 1;
y.l('3','centrifuge') = 1;
n.l(j)                = sum( k , coeff(k)*  y.l(k,j) ) ;

* batch sizes are set at the mid-point between bounds
b.l(i)    = (b.up(i) + b.lo(i))/2 ;
v.l(j)    = smax(i ,  log(s(i,j)) + b.l(i)) ;
tl.l(i)   = smax(j ,  log(t(i,j))-n.l(j)) ;

Option optcr=0;
Solve batch using minlp minimizing cost ;

* converting variables into original form
actv(j)  = exp(v.l(j)) ;
actb(i)  = exp(b.l(i)) ;
acttl(i) = exp(tl.l(i));
actn(j)  = exp(n.l(j)) ;

* optimal design
Display actv, actb, acttl, actn ;

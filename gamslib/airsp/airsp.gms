option LP=convert;
option LP=convert;
option LP=convert;
$Title Aircraft allocation - stochastic optimization (AIRSP,SEQ=189)

$Ontext

   The objective of this model is to allocate aircrafts to routes to maximize
   the expected profit when traffic demand is uncertain. Three different
   formulations are presented:

     * the original lambda formulation
     * a stochastic equivalent with sampling
     * a stochastic equivalent with all scenarios


Dantzig, G B, Chapter 28. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext


Set i     aircraft types and unassigned passengers / a, b, c, d /
    j     assigned and unassigned routes           / route-1, route-2, route-3, route-4, route-5 /
    h     demand states                            /    1*5   /
    ss    nodes                                    / s1*s1000  /
    s(ss) actual ord temp nodes
    ij(i,j) possible assignments
    jh(j,h) possible demand states

Alias(h,hp,h1,h2,h3,h4,h5);

Table  dd(j,h)     demand distribution on route j

             1       2      3      4      5
route-1    200     220    250    270    300
route-2     50     150
route-3    140     160    180    200    220
route-4     10      50     80    100    340
route-5    580     600    620

Table  lambda(j,h)  probability of demand state h on route j

              1      2      3      4      5
route-1      .2     .05    .35    .2     .2
route-2      .3     .7
route-3      .1     .2     .4     .2     .1
route-4      .2     .2     .3     .2     .1
route-5      .1     .8     .1

Table  c(i,j)       costs per aircraft (1000s)

         route-1    route-2    route-3     route-4     route-5
a          18         21         18          16           10
b                     15         16          14            9
c                     10                      9            6
d          17         16         17          15           10

Table  p(i,j)    passenger capacity of aircraft i on route j

        route-1     route-2     route-3     route-4     route-5
a          16         15          28          23          81
b                     10          14          15          57
c                      5                       7          29
d           9         11          22          17          55

Parameter aa(i)       aircraft availability               / a   10, b   19, c   25, d   15 /
          k(j)        revenue lost (1000 per 100  bumped) / (route-1,route-2) 13, (route-3,route-4) 7, route-5 1 /
          ed(j)       expected demand
          deltb(j,h)  incremental demand
          gamma(j,h)  probability of demand segment
          drand(j,ss) sampled demand
          sample(j)   sampled mean
          num         temp value
          prob(ss)    scenario probability
          probxx      temp probability value;

ij(i,j) = p(i,j);
jh(j,h) = lambda(j,h);

ed(j)          = sum(h, lambda(j,h)*dd(j,h));
deltb(jh(j,h)) = dd(j,h)-dd(j,h-1);
gamma(j,h)     = sum(hp$(ord(hp) >= ord(h)), lambda(j,hp));


display deltb,gamma,ed;

Positive Variables
   x(i,j)    number of aircraft type i assigned to route j
   z(j)      allocated capacity
   bh(j,h)   passengers bumped
   bs(j,ss)  passengers bumped

Variables phi     total expected costs
          oc      operating cost
Equations
   ab(i)     aircraft balance
   cb(j)     capacity balance
   dbh(j,h)  demand balance
   dbs(j,ss) demand balance
   ocd       operating cost definition
   objh      objective function
   objs      objective function;

 ab(i)..   sum(ij(i,j), x(ij)) =l= aa(i);

 cb(j)..   z(j) =e= sum(ij(i,j), p(ij)*x(ij));

 dbh(j,h).. dd(j,h)    - bh(j,h) =l= z(j);
 dbs(j,s).. drand(j,s) - bs(j,s) =l= z(j);

 ocd..     oc =e= sum((i,j), c(i,j)*x(i,j));

 objh ..    phi =e= oc + sum(j, k(j)*sum(jh(j,h),lambda(j,h)*bh(j,h)));
 objs..     phi =e= oc + sum(j, k(j)*sum(s, prob(s)*bs(j,s)));

 Model  alloch aircraft allocation  / ab, cb, dbh, ocd, objh /
        allocs aircraft allocation  / ab, cb, dbs, ocd, objs /;

option limcol=0,limrow=0,solprint=off;

parameter rep quick report;

solve alloch minimizing phi using lp;
rep(i,j,'alloch') = x.l(i,j);
rep('ev',' ','alloch') = phi.l;

* set up a sample of some size

s(ss) = (ord(ss) <= 100);

loop((j,s),
   num = uniform(0,1);
   drand(j,s) =  sum(jh(j,h)$(num < gamma(jh)), deltb(j,h)));
prob(s) = 1/card(s);
sample(j) = sum(s, drand(j,s))/card(s);

display sample;

solve allocs minimizing phi using lp;
rep(i,j,'allocs') = x.l(i,j);
rep('ev',' ','allocs') = phi.l;

*  enumerate all scenarios

prob(s) = 0;
s(ss)   = no;
s('s1') = yes;
loop((h1,h2,h3,h4,h5),
   probxx =  lambda('route-1',h1)
            *lambda('route-2',h2)
            *lambda('route-3',h3)
            *lambda('route-4',h4)
            *lambda('route-5',h5);
   if(probxx,
      drand('route-1',s) = dd('route-1',h1);
      drand('route-2',s) = dd('route-2',h2);
      drand('route-3',s) = dd('route-3',h3);
      drand('route-4',s) = dd('route-4',h4);
      drand('route-5',s) = dd('route-5',h5);
      prob(s) = probxx;
*     s(ss) = s(ss-1)   this looks nice but is very slow
      s(ss+1)$s(ss) = yes;
      s(ss-1)$s(ss) = no ) );
s(ss) = prob(ss);

solve allocs minimizing phi using lp;
rep(i,j,'allocss') = x.l(i,j);
rep('ev',' ','allocss') = phi.l;

display rep;

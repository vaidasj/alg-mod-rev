option LP=convert;
option LP=convert;
option LP=convert;
$Title Elementary Production and Inventory Model  (ROBERT,SEQ=37)

$Ontext

A manufacturer can produce three different products requiring the
storage of two raw materials. Expected profits change over time and
remaining raw materials are valued.


Fourer, R, Modeling Languages versus Matrix Generators For Linear
Programming. ACM Transaction of Mathematical Software 9, 2 (1983),
143-183.

$Offtext


 Sets  p     products       / low, medium, high /
       r     raw materials  / scrap, new /
       tt    long horizon   / 1*4 /
       t(tt) short horizon  / 1*3 /


 Table  a(r,p)  input coefficients

          low  medium  high
 scrap      5     3      1
 new        1     2      3


 Table  c(p,t)  expected profits

            1    2    3
 low       25   20   10
 medium    50   50   50
 high      75   80  100


 Table  misc(*,r)  other data

            scrap  new
 max-stock    400  275
 storage-c     .5    2
 res-value     15   25

 Scalar m maximum production / 40 /;

 Variables  x(p,tt)  production and sales
            s(r,tt)  opening stocks
            profit

 Positive variables x, s;

 Equations  cc(t)    capacity constraint
            sb(r,tt) stock balance
            pd       profit definition ;

 cc(t)..     sum(p, x(p,t)) =l= m;

 sb(r,tt+1).. s(r,tt+1) =e= s(r,tt) - sum(p, a(r,p)*x(p,tt));

 pd.. profit =e= sum(t, sum(p, c(p,t)*x(p,t))-sum(r, misc("storage-c",r)*s(r,t)))
               + sum(r, misc("res-value",r)*s(r,"4"));

 s.up(r,"1") = misc("max-stock",r);

 Model robert / all /

 Solve robert maximizing profit using lp;

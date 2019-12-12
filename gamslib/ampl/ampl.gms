option LP=convert;
option LP=convert;
option LP=convert;
$Title AMPL Sample Problem  (AMPL,SEQ=74)

$Ontext

   A sample problem to demonstrate the power of modeling systems


Fourer, R, Gay, D M, and Kernighan, B W, AMPL: A Mathematical Programming
Language. AT\&T Bell Laboratories, Murray Hill, New Jersey, 1987.

$Offtext

Sets p  products        / nuts, bolts, washers /
     r  raw materials   / iron, nickel /
     tl extended t      / 1 * 5 /
     t(tl)  periods     / 1 * 4 /
     first(tl)          / 1     /
     last(tl)           /     5 /

Parameters b(r) initial stock  /  iron  35.8 , nickel  7.32  /
           d(r) storage cost   /  iron    .03, nickel   .025 /
           f(r) residual value /  iron    .02, nickel  -.01  /

Scalar     m  maximum production / 123 /

Table a(r,p) raw material inputs to produce a unit of product

        nuts  bolts  washers
iron    .79    .83    .92
nickel  .21    .17    .08

Table c(p,t) profit

           1     2    3    4
nuts     1.73  1.8  1.6  2.2
bolts    1.82  1.9  1.7   .95
washers  1.05  1.1   .95 1.33

Variables  x(p,tl) production level
           s(r,tl) storage at beginning of period
           profit  income minus cost

Positive Variables x, s

Equations limit(t)      capacity constraint
          balance(r,tl) raw material balance
          obj           profit definition;

limit(t)..         sum(p, x(p,t)) =l= m ;

balance(r,tl+1)..  s(r,tl+1) =e= s(r,tl) - sum(p, a(r,p)*x(p,tl)) ;

obj..  profit =e= sum((p,t), c(p,t)*x(p,t))
                + sum((r,tl), ( -d(r)$t(tl) + f(r)$last(tl) )*s(r,tl));

s.up(r,first) = b(r);

Model ampl maximum revenue production problem / all /

Solve ampl maximizing profit using lp;


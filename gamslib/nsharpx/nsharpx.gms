option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title Synthesis of General Distillation Sequences (NSHARPX,SEQ=226)
$Ontext

   This is a direct MINLP formulation of the gamslib model NONSHARP, which
   solves this problem with a special Benders method called APROS. The initial
   GAMS implementation was done by Skip Paules.


Aggarwal, A, and Floudas, C A, Synthesis of General Distillation
Sequences: Nonsharp Separation. Computers and Chemical Engineering
14, 6 (1990), 631-653.

$Offtext

Sets  c  components     / a, b, c        /
      i  columns        / col-1*col-2    /
      p  products       / prod-1, prod-2 /
      s  column streams / top, bot       /

*   Derived Sets - These sets are used to define the mapping of the
*   superstructure for the problem at any stage

      inter(i,i,s)  column i fed by column j top or bottom  /
                    col-1.col-2.top, col-2.col-1.bot  /
      key(i,s,c)    key components for column  /
                    col-1.top.a, (col-2.top,col-1.bot).b, col-2.bot.c /
      link(i,s,c)   nondistribution of nonkeys  /
                    col-1.top.c, col-2.bot.a /

Alias(i,j) ;

Parameters

  feed(c)  feed of each component  /a  100, b  100, c  100 /
  cost(i)  alpha coeffs  / col-1    0.23947  ,  col-2    0.75835   /
  a1(i)    a1 coeffs   / col-1   -0.0139904,  col-2   -0.0661588 /
  a2(i,s)  a2 coeffs   / col-1.top  0.0093514, col-2.top    0.0338147
                         col-1.bot  0.0077308, col-2.bot    0.0373349 /
  a3(i,c)  a3 coeffs (corresponds to feed composition)
                       / col-1.a   -0.0005719, col-2.a    0.0016371
                         col-1.b    0.0042656, col-2.b    0.0288996
                         col-1.c    0.0      , col-2.c    0.0         /
  out(c,p) product composition /
                         a.prod-1 80, b.prod-1 30, c.prod-1 20
                         a.prod-2 20, b.prod-2 70, c.prod-2 80  /
  xinit(c) composition of flow finite and fby
  totfeed  total flow to the superstructure ;

totfeed  = sum(c, feed(c));
xinit(c) = feed(c)/totfeed;

Variable
    cobj    total cost

Positive Variables
    finit(i)     flow from initial splitter to column i
    fin(i)       total flow to column i
    f(i,s)       flow rate of column top & bottom product streams
    fint(i,j,s)  flow rate of interconnecting streams
    fpr(i,s,p)   flow rate of streams to products
    fby(p)       flow rate of bypass streams
    cfin(i,c)    component flow to column i
    xin(i,c)     composition of flow fin
    x(i,s,c)     composition of flow f
    rec(i,s,c)   recovery of key components

Binary Variables
    y(i)         existence of column i ;

Equations
   obj           objective function
   spblinit      initial splitter balance
   spblcol(i,s)  splitter balances at each column top & bottom outlets
   mixbal(i,c)   mixer balance equations at inlet of each column
   colbal(i,c)   component balance equations around each column
   keybal(i,s,c) key component balances for each column
   probal(p,c)   component balance equations for each product
   cfloin(i,c)   equations defining component flowrates for column inlet
   molsum(i,s)   constraint for sum of mole fractions for column products
   molsumin(i)   constraint for sum of mole fractions for column inlet
   dist(i,s,c)   constraint defining the nondistribution of nonkeys
   intcon(i)     logical constraints ;


obj.. cobj =E= sum(i, cost(i)*y(i)
             + ( a1(i) + sum(key(i,s,c), a2(i,s)*rec(key)) +  sum(c, a3(i,c)*xin(i,c)))*fin(i));

spblinit..     sum(i, finit(i)) + sum(p, fby(p)) =E= totfeed ;

spblcol(i,s).. f(i,s) =e= sum(inter(j,i,s), fint(inter)) + sum(p, fpr(i,s,p)) ;

mixbal(i,c)..  cfin(i,c) =e= finit(i)*xinit(c) + sum(inter(i,j,s), fint(inter)*x(j,s,c));

colbal(i,c)..  cfin(i,c) =e= sum(s, f(i,s)*x(i,s,c));

keybal(key(i,s,c))..  cfin(i,c)*rec(key) =e= f(i,s)*x(key);

probal(p,c)..  sum((i,s), fpr(i,s,p)*x(i,s,c)) +  fby(p)*xinit(c) =e= out(c,p);

cfloin(i,c)..  fin(i)*xin(i,c) =e= cfin(i,c) ;

molsum(i,s)..  sum(c, x(i,s,c)) =E= 1 ;

molsumin(i)..  sum(c, xin(i,c)) =E= 1 ;

dist(link)..   x(link) =E= 0 ;

intcon(i)..    fin(i) =l= totfeed*y(i) ;

cfin.up(i,c) = feed(c);
rec.lo(key)  = .85; rec.up(key) = 1;

Model nonsharp / all / ;

finit.up(i)    = totfeed;
fin.up(i)      = totfeed;
f.up(i,s)      = totfeed;
fint.up(i,j,s) = totfeed;
fpr.up(i,s,p)  = totfeed;

x.up(i,s,c) = 1; xin.up(i,c) = 1;

* we need to give initial values and bounds to avoid getting
* stuck at an infeasible point when the NLP solver starts up

y.l(i) = 1/card(i);

finit.l(i)    = totfeed/card(i);
fin.l(i)      = finit.l(i);
f.l(i,s)      = fin.l(i)/card(s);
fint.l(i,j,s) = f.l(i,s)/card(j);
fpr.l(i,s,p)  = f.l(i,s)/card(p);

x.l(i,s,c) = 1/card(c);

xin.l(i,c) = 1/card(c);

cfin.l(i,c) = sum(s, f.l(i,s)*x.l(i,s,c));

solve nonsharp using MINLP minmizing cobj;

option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Relief Mission (RELIEF,SEQ=353)
$ontext

Huts or villages are located at 20 location on a 10 x 10 grid. The problem
is to find the two best drop locations for relief packages such that the total
distance traveled by villagers is minimized.

We look at this problem as a plant location problem and trace the efficiency
frontier of multiple drops. The optimal solution for two drops is D.8 and E.2.

Another interesting question may be: how many other drop locations are there that
have a total distance traveled with, say, 3 percent of the best location.


Toczek J, Relief Mission, ORMS Today 37, 4 (2010), page 14

$offtext
$eolcom !

sets r rows     / A*J  /
     c columns  / 1*10 /
     d drops    / d1*d20 /

table dem(r,c) relief demands

   1 2 3 4 5 6 7 8 9 10
A          1
B          1       1  1
C  1         1   1 1  1
D    1         1      1
E    1             1
F                1
G    1
H    1       1
I
J                1    1

alias(r,rr),(c,cc)


set       huts(r,c)    hut locations
parameter dis(r,c,r,c) Eucledian distances
          numdrops     number of drops
          maxdem       maximum drop demand;

huts(r,c) = dem(r,c);
maxdem    = sum(huts, dem(huts));
dis(huts(r,c),rr,cc) = edist(r.pos-rr.pos,c.pos-cc.pos);


variables drop(r,c)     drop locations
          walk(r,c,r,c) distances walked from huts to nearest drop zone
          total         total distance walked
Binary variable drop; positive variable walk;

equations demand, supply, deftotal, defnumdrop;

demand(huts)..  sum((r,c), walk(huts,r,c)) =e= 1;

supply(r,c)..  sum(huts, walk(huts,r,c)) =l= drop(r,c)*maxdem;

deftotal..     total =e= sum((huts,r,c), dis(huts,r,c)*walk(huts,r,c));

defnumdrop..   sum((r,c), drop(r,c)) =e= numdrops;

model m / all /;


* --------------------------
* get best two drop solution
* --------------------------

numdrops = 2;
option limrow=0,limcol=0, optcr=0, solvelink=2, reslim=10;
m.solprint=0;
solve m min total using mip;
display drop.l;


* ------------------------
* trace efficient frontier
* ------------------------

parameter QDrep Quick and Dirty Report;

loop(d,
   numdrops = d.pos;
   solve m min total using mip;
   m.solprint=2;
   ! we use round() because a MIP code (CPLEX) may return fractional values
   QDrep(r,c,d)$round(drop.l(r,c)) = sum ( huts, dis(huts,r,c)*walk.l(huts,r,c)) + EPS*huts(r,c)*drop.l(r,c);
   QDrep('max','dist',d)           = smax((huts,r,c), dis(huts,r,c)*walk.l(huts,r,c));
   QDrep('tot','dist',d)           = sum ((huts,r,c), dis(huts,r,c)*walk.l(huts,r,c));
   QDrep('CPU','used',d)           = m.resusd  );

display QDrep;


* ----------------------------------------------------------------
* find all drop points within x percent of best for two drop points
*
* To exclude the n'th integer solution we can write:
*     cut(n)..  sum(i, abs(x(i)-xsol(i,n)) =g= 1;
* simulating abs() will give
*     cut(n).. sum((r,c), cutval(n,r,c)*drop(r,c)) =l= 1 ;
* where cutval() contains solutions to be excluded
* ----------------------------------------------------------------

set nn max number of close solutions / n1*n50 /
    n(nn) dynamic set ;

parameters limit          total distance for drop points
           objval(nn)     total miles traveled
           cutval(nn,r,c) all possible solutions for cut generation;

numdrops = 2; solve m min total using MIP; limit = 1.03*total.l;

Equation cut(nn)  known solutions to be eliminated;

cut(n).. sum((r,c), cutval(n,r,c)*drop(r,c)) =l= 1 ;

model mm / m, cut /;

n(nn) = no;  ! clear set of cuts

mm.solvestat = %solvestat.NormalCompletion%;
mm.modelstat = %modelstat.Optimal%;

mm.solprint=0;

Loop(nn$(mm.solvestat=%solvestat.NormalCompletion% and
         mm.modelstat=%modelstat.Optimal% and
         total.l < limit),
   n(nn) = yes;   ! add element to set
   cutval(nn,r,c) = round(drop.l(r,c));
   solve mm min total using mip;
   mm.solprint=0;
   objval(nn) = total.l );

option cutval:0:1:1; display objval,cutval;

parameter hits; hits(r,c) = sum(nn, cutval(nn,r,c)); display hits;







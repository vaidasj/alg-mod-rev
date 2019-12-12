option LP=convert;
option LP=convert;
option LP=convert;
$title Decomposition Principle - Animated (DECOMP,SEQ=164)
$Ontext
  The coordinator of a Central Agency must procure tanker services
  to assist his distribution. A subcontractor handles all the
  shipping details. This scenario is used to demonstrate the
  decomposition principle. For details see chapter 23-2 of Dantzig's
  original text on Linear Programming.


Dantzig, G B, Chapter 23.2. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

sets i plants     / plant-1, plant-2 /
     j terminals  / term-1*term-4 /


   table c(i,j) cost matrix

         term-1  term-2  term-3  term-4
plant-1    3       6       6       5
plant-2    8       1       3       6


   table t(i,j) tankers required

         term-1  term-2  term-3  term-4
plant-1                    2
plant-2            2

parameters a(i)   availability  / plant-1  9, plant-2  8 /
           b(j)   requirements  / term-1 2, term-2 7, term-3 3, term-4 5 /
           ctank  tanker cost
           cship  shipping cost

variables cost   total cost
          tank   total tankers used
          ship   shipping cost
          x(i,j) shipments
positive variable x

equations defcost  cost definition
          defship  shipping cost
          deftank  tanker usage
          supply(i) supply balance
          demand(j) demand balance ;

defcost.. cost =e= cship*ship + ctank*tank;

defship.. ship =e= sum((i,j), c(i,j)*x(i,j));

deftank.. tank =e= sum((i,j), t(i,j)*x(i,j));

supply(i).. sum(j, x(i,j)) =L= a(i);

demand(j).. sum(i, x(i,j)) =g= b(j);

model sub / defcost, defship, deftank, demand, supply /;

sets  ss    master column labels / 1*10 /
      s(ss) active columns;

parameter mcost(ss) cost solutions
          mtank(ss) tanker solutions;

variables  mobj
           lam(ss)  column selection
positive variable lam;

equations cbal   cost balance
          tbal   tanker balance
          convex  combination;

cbal..  mobj  =e= sum(s, mcost(s)*lam(s));

tbal..  sum(s, mtank(s)*lam(s)) =l= 9;

convex.. sum(s, lam(s)) =e= 1;

model master / cbal, tbal,convex /;

parameter rep(ss,*);
* --- get first solution with zero cost for tankers

cship = 1;
ctank = 0;
solve sub using lp minimizing cost;
mcost('1') = ship.l;
mtank('1') = tank.l;

* --- get second solution with zero cost for tankers

option limcol=0,limrow=0;
solve sub using lp minimizing tank;
mcost('2') = ship.l;
mtank('2') = tank.l;

* --- solve first master problem

s('1') = yes; s('2') = yes;

solve master using lp minimizing mobj;

rep('2','obj')  = mobj.l;
rep('2','s-pi') = convex.m;
rep('2','t-pi') = -tbal.m;
rep('2','gap')  = inf;

* --- now we are ready to iterate between master and sub problem;

loop(ss$((not s(ss)) and (rep(ss-1,'gap') > .01)),

   ctank = -tbal.m;

   solve sub using lp minimizing cost;
   mcost(ss) = ship.l;
   mtank(ss) = tank.l;
   s(ss)     = yes;

   solve master using lp minimizing mobj;

   rep(ss,'obj')  = mobj.l;
   rep(ss,'s-pi') = convex.m;
   rep(ss,'t-pi') = -tbal.m;
   rep(ss,'bnd')  = rep(ss-1,'obj') - rep(ss-1,'s-pi')
                   + mcost(ss) + mtank(ss)* rep(ss-1,'t-pi');
   rep(ss,'best-bnd') = max(rep(ss-1,'best-bnd'),rep(ss,'bnd'));
   rep(ss,'gap')      = rep(ss,'obj') - rep(ss,'best-bnd');  );

display mcost, mtank, rep;

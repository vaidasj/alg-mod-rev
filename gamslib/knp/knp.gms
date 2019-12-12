option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Kissing Number Problem using Variable Neighborhood Search (KNP,SEQ=321)

$ontext
Determining the maximum number of k-dimensional spheres of radius
r that can be adjacent to a central sphere of radius r is known
as the Kissing Number Problem (KNP). The problem has been solved
for 2 (6), 3 (12) and very recently for 4 (24) dimensions. Here
is a nonlinear (nonconvex) mathematical programming model known
as the distance formulation for the solution of the KNP. We solve
the problem by using the Variable Neighbourhood Search Algorithm.

http://en.wikipedia.org/wiki/Kissing_number_problem

Kucherenko, S, Belotti, P, Liberti, L, and Maculan, N,
New formulations for the Kissing Number Problem.
Discrete Applied Mathematics, 155:14, 1837--1841, 2007.
http://dx.doi.org/10.1016/j.dam.2006.05.012
$offtext

$eolcom //

$if not set dim      $set dim 4
$if not set nspheres $set nspheres 24

Set k Dimension /k1*k%dim%/
    i Spheres   /s1*s%nspheres%/;
alias (i,j);

Variable x(i,k) position of the center of the i-th sphere around the central sphere
         z      feasibility indicator;

Equation eq1(i)    sphere centers have distance 2 from the center sphere
         eq2(i,j)  minimum pairwise sphere separation distance;

eq1(i).. sum(k, sqr(x(i,k))) =e= 4;

eq2(i,j)$(ord(i) < ord(j)).. sum(k, sqr(x(i,k)-x(j,k))) =g= 4*z;

model kissing /all/;

scalar lo / -2 /, up / 2 /;

x.lo(i,k) = lo;
x.up(i,k) = up;
x.l(i,k)  = uniform(lo,up);

Parameter p(i,k)  center points of best solution
          bestobj feasibility indicator of best solution / 0 /
          bestbnd best bound on optimal value / inf /
          maxnk   major iteration limit (search space)  /20/
          maxns   minor iteration limit (random starts) /5/
          nk      major iteration /1/
          ns      minor iteration;

kissing.solvelink = %solvelink.CallScript%;

solve kissing max z using nlp;

* Store solution as best solution
if( kissing.modelstat = %modelstat.LocallyOptimal% or kissing.modelstat = %modelstat.Optimal% or kissing.modelstat = %modelstat.FeasibleSolution%,
  bestobj = z.l;
  p(i,k) = x.l(i,k);
else
* Do not start VNS, if we have no solution
  maxnk = 0;
);

* Store dual bound, if available
bestbnd$(kissing.objest <> NA) = min(bestbnd, kissing.objest);

* Variable Neighborhood Search Algorithm
option solprint = off, limrow = 0, limcol = 0;
while( nk <= maxnk and bestobj < 1 and bestbnd >= 1 and kissing.solvestat <> %solvestat.UserInterrupt%,
  ns = 1;

  repeat
    // Sample a new point in the neighborhood of best point
    x.l(i,k) = uniform(p(i,k)-nk*(p(i,k)-lo)/maxnk, p(i,k)+nk*(up-p(i,k))/maxnk);
    
    solve kissing max z using nlp;
    
    // in case we have no solution make sure z.l is small enough to avoid update of bestobj
    z.l$(kissing.modelstat<>%modelstat.Optimal% and
         kissing.modelstat<>%modelstat.FeasibleSolution% and
         kissing.modelstat<>%modelstat.LocallyOptimal%) = bestobj-1;

    // update dual bound
    bestbnd$(kissing.objest <> NA) = min(bestbnd, kissing.objest);

    ns = ns + 1;
  until (ns = maxns + 1) or (z.l > bestobj) or (bestbnd < 1) or (kissing.solvestat = %solvestat.UserInterrupt%);

  if( z.l <= bestobj,
    // enlarge neighborhood and do minor iterations again
    nk = nk + 1;
  else
    // update best bound, recenter neighborhood, and restart with small neighborhood
    bestobj = z.l;
    p(i,k) = x.l(i,k);
    nk = 1;
  );
  
  display bestbnd, bestobj;
);

if( bestobj >= 1,
  display 'KNP(%dim%) >= %nspheres%';
elseif bestbnd < 1,
  display 'KNP(%dim%) < %nspheres%';
elseif nk > maxnk,
  display 'Most likely: KNP(%dim%) < %nspheres%';
elseif maxnk = 0,
  display 'Could not solve initial NLP';
else
  display 'VNS was interrupted';
);

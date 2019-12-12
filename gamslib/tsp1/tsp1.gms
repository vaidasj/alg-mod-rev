option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Traveling Salesman Problem - One (TSP1,SEQ=177)
$eolcom //
$Ontext

 This is the first problem in a series of traveling salesman
 problems. In this problem we first solve an assignment
 problem as a relaxation of the TSP. Subtours of this solution
 are detected and printed. The subtours are then eliminated via
 cuts (constraints that eliminate solution with subtours).

 Note: we deal here with an unsymmetric TSP. If symmetric
       one can add 2 cuts in each cycle: forward and
       backward.

 Additional information can be found at:

 http://www.gams.com/modlib/adddocs/tsp1doc.htm


Kalvelagen, E, Model Building with GAMS. forthcoming

de Wetering, A V, private communication.

$Offtext

$include br17.inc
*
* For this simple algorithm the problem is too difficult
* so we consider only the first 6 cities.

set i(ii) / i1*i6 /;

*  options. Make sure MIP solver finds global optima.
option optcr=0;


model assign /objective, rowsum, colsum/;

solve assign using mip minimizing z;

* find and display tours
*
set t tours  /t1*t17/; abort$(card(t) < card(i)) "Set t is possibly too small"
parameter tour(i,j,t)  subtours;
Singleton Sets
          from(i)      contains always one element: the from city
          next(j)      contains always one element: the to city
          tt(t)        contains always one element: the current subtour;
     Sets visited(i)   flag whether a city is already visited;
   scalar goon         go on flag used to control loop;

* initialize
from(i)$(ord(i)=1) = yes;    // turn first element on
tt(t)$(ord(t)=1)   = yes;    // turn first element on

loop(i,
   next(j)$(x.l(from,j)>0.5) = yes;    // check x.l(from,j)=1 would be dangerous
   tour(from,next,tt) = yes;           // store in table
   visited(from) = yes;                // mark city 'from' as visited
   from(j) = next(j);
   if(sum(visited(next),1)>0,          // if already visited...
      tt(t) = tt(t-1);
      loop(k$(not visited(k)),         // find starting point of new subtour
         from(k) = yes;
      )
   )
)

display tour;

* subtour elimination by adding cuts
*
* the logic to detect if there are subtours is similar
* to the code above

set cc /c1*c100/; alias(cc,ccc); // we allow up to 100 cuts

set curcut(cc)  current cut always one element
    allcuts(cc) total cuts;

parameter cutcoeff(cc, i, j);

equations cut(cc) dynamic cuts;

cut(allcuts).. sum((i,j), cutcoeff(allcuts,i,j)*x(i,j)) =l= card(i)-1;

model tspcut /objective, rowsum, colsum, cut/;

curcut(cc)$(ord(cc)=1) = yes;
scalar ok;
goon = 1;
loop(ccc$goon,
   from(i)    = ord(i) eq 1;      // initialize from to first city
   visited(i) = no;
   ok = 1;
   loop(i$((ord(i) < card(i)) and ok),       // last city can be ignored
      next(j) = x.l(from,j)>0.5;             // find next city
      visited(from) = yes;
      from(j)       = next(j);
      ok$sum(visited(next),1) = 0 );         // we have detected a subtour

   if(ok = 1,
      goon = 0;           // done: no subtours
   else                   // else: introduce cut
      cutcoeff(curcut, i, j)$(x.l(i,j) > 0.5) = 1;
          // next one is needed in the general case but not for TSP
          // cutcoeff(curcut, i, j)$(x.l(i,j) < 0.5) = -1;
      allcuts(curcut) = yes;   // include this cut in set
      curcut(cc) = curcut(cc-1);  // get next element
      solve tspcut using mip minimizing z;
      tspcut.solprint=%solprint.Quiet% ); );

* print solution in proper order
set xtour ordered tour;
from(i)    = ord(i) eq 1;      // initialize from to first city
visited(i) = no;
ok=1;
loop(t$ok,
   next(j) = x.l(from,j)>0.5;  // find next city
   xtour(t,from,next) = yes;
   visited(from) = yes;
   from(j)       = next(j);
   ok$sum(visited(next),1) = 0 );         // we have detected a subtour

option xtour:0:0:1; display xtour,x.l;

abort$(goon = 1) "Too many cuts needed";

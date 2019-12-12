option LP=convert;
option LP=convert;
option LP=convert;
$Title On-the-Job Training  (JOBT,SEQ=5)

$Ontext

An optimal schedule for hiring, firing, producing and storing of a
commodity is desired for the completion of a large delivery contract.
This formulation is slightly different from the one in the book. The
period number 6 has been eliminated and the salary on firing has
been added to the 5th period (all workers are fired by the end of
period 5). The implicit relationship w("5") = f("6") holds.


Dantzig, G B, Chapter 3.7. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

$Offtext

Set       t     time periods  (weeks)   / 1*5 /

Scalars   rho   worker productivity       (units per worker) /     8  /
          alpha trainer capability     (workers per trainer) /     6  /
          wage  worker wages         ($ per week per worker) /   100  /

Parameter si(t) initial stock of goods      (units)   / 1  10  /
          wi(t) initial number of workers (workers)   / 1  20  /
          sf(t) salary on firing              ( $ )   / 5 100  /
          d(t)  demand schedule             (units)   / 1 100, 2 200, 3 300
                                                        4 400, 5 200        /

Positive Variables
  p(t)     production level in period t             (units)
  s(t)     goods stored in period t                 (units)
  u(t)     unmet demand in period t                 (units)
  w(t)     total potential productive workers     (workers)
  h(t)     workers hired                          (workers)
  f(t)     workers fired                          (workers)

Variables
  phi      total cost                                   ($)

Equations
  cb(t)    commodity balance                        (units)
  wb(t)    worker balance - between periods       (workers)
  wd(t)    worker balance - job differentiation   (workers)
  obj      objective function                         ( $ );

cb(t).. s(t) =e= s(t-1) + p(t) - d(t) - u(t-1) + u(t) + si(t);

wb(t).. w(t) =e= w(t-1) - f(t) + h(t) + wi(t);

wd(t).. w(t) =g= p(t)/rho + (1 + 1/alpha)*h(t);

obj.. phi =e= sum(t, 10*s(t) + 30*u(t) + (wage + sf(t))*w(t) );

Model jobs job training model / all /;

Solve jobs minimizing phi using lp;


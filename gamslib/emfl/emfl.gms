option QCP=convert;
option QCP=convert;
option QCP=convert;
$TITLE Existing Multi Facility Location Problem - Cone Format (EMFL, SEQ=273)

$ONTEXT

 Euclidian multi-facility location problem using second order
 cone constraints. Given a set of m existing facilities,
 we compute the coordinates of n new facilities on a rectangular
 grid subject to minimizing the weighted sum of the euclidian
 distances between facilities.

 We use quadratic cone constraints to model the euclidian
 distances.

 Vanderbei, R, online at
 http://www.princeton.edu/~rvdb/ampl/nlmodels/facloc/emfl_socp.mod

 Optional inputs:
   --old        number of existing facilities
   --new        number of new facilities
   --N1         number of facilities in X direction on grid
   --N2         number of facilities in Y direction on grid

  Note that we must have new=N1*N2

$OFFTEXT

*   Note that the number of new facilities must be new=N1*N2
$if not set old $set old 200
$if not set N1  $set N1    5
$if not set N2  $set N2    5
$if not set N   $eval new  %N1%*%N2%

Set m  "old facilities"                    /m1*m%old%/
    nX "number facilities in x direction"  /nX1*nX%N1%/
    nY "number facilities in y direction"  /nY1*nY%N2%/
    n  "total number of new facilities"    /n1*n%new%/
    d  "dimension"                         /"x-axis", "y-axis"/
;

Alias(nn,n);

Parameter
    coords(m,d) "coordinates of existing facilities"
    w(m,n)      "weights associated with new-old facility pairs"
    v(n,n)      "weights associated with new-new facility pairs"
;

Positive Variable
   x(n,d) "coordinates of new facilities"
   s(m,n) "euclidian distance between new-old facilities"
   t(n,n) "euclidian distance between new-new facilities"
;

Variable
   diff_o(m,n,d)
   diff_n(n,nn,d)
   obj;


Equation
   objective
   diff_o_eq(m,n,d)  "compute distance between new-old"
   diff_n_eq(n,nn,d) "compute distance between new-new"
   old_dist(m,n)     "distance between new-old facilities"
   new_dist(n,n)     "distance between new-new facilities"
;

objective..         obj            =E= sum( (m,n), w(m,n)*s(m,n)) +
                                       sum( (n,nn), v(n,nn)*t(n,nn));

diff_o_eq(m,n,d)..  diff_o(m,n,d)  =E= x(n,d) - coords(m,d);

diff_n_eq(n,nn,d).. diff_n(n,nn,d) =E= x(n,d) - x(nn,d);

* Explicit cone syntax for MOSEK
*old_dist(m,n)..     s(m,n)         =C= sum(d, diff_o(m,n,d));
*new_dist(n,nn)..    t(n,nn)        =C= sum(d, diff_n(n,nn,d));

old_dist(m,n)..     sqr(s(m,n))    =G= sum(d, sqr(diff_o(m,n,d)));
new_dist(n,nn)..    sqr(t(n,nn))   =G= sum(d, sqr(diff_n(n,nn,d)));

Model facility /all/;

*   Specify existing coordinates via uniform distribution
coords(m,d) = uniform(0,1);

*   Compute weights: 0.2 for new-new facility pairs
v(n,nn)$[ord(n)<ord(nn)] = 0.2;

*   Initial guess of new facility coordinates distributed evenly
*   on x-y rectangle
loop((nX,nY),
   loop(n$[ord(n)=( ord(nX)+card(nX)*(ord(nY)-1) )],
      x.L(n,'x-axis') = (ord(nX)-0.5 )/card(nX);
      x.L(n,'y-axis') = (ord(nY)-0.5 )/card(nY);
   )
)

*   Compute weights based on distance of coord and initial guess of
*   new facility coordinates
loop((m,n),
  if( abs(coords(m,'x-axis')-x.L(n,'x-axis'))    <= 1/[2*card(nX)] and
         abs(coords(m,'y-axis')-x.L(n,'y-axis')) <= 1/[2*card(nY)],
      w(m,n) = 0.95;
  elseif( abs(coords(m,'x-axis')-x.L(n,'x-axis')) <= 2/[2*card(nX)] and
         abs(coords(m,'y-axis')-x.L(n,'y-axis'))  <= 2/[2*card(nY)] ),
      w(m,n) = 0.05;
  else
      w(m,n) = 0;
  );
);

solve facility using qcp minimizing obj;

display x.L;


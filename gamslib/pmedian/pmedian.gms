option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title P-Median problem  (pmedian,SEQ=408)
$ontext
The pmedian problem is defined as follows: given a set I={1...n} of
locations and a transportation cost W between each pair of
locations. Select a subset S of p location minimizing the sum of the
distances between each location and the closest one in S.

There are currently 40 data files from the OR-LIB
http://people.brunel.ac.uk/~mastjjb/jeb/orlib/pmedinfo.html

These data files are the 40 test problems from Table 2 of
J.E.Beasley "A note on solving large p-median problems" European
Journal of Operational Research 21 (1985) 270-273.

 pmed15      1729                1734


J.E.Beasley "A note on solving large p-median problems" European
Journal of Operational Research 21 (1985) 270-273.
$offtext

$if not set instance $set instance pmed15.inc
$if not exist "%instance%" $abort File of instance does not exist

$onechoV > pm.awk
BEGIN { nr=0 }
!/^#/ {
   if (nr==0) {
     n = $1;
     printf("set n /0*%d/; Scalar p /%d/;\n", n-1,$3);
     printf("Table w(n,n) distances\n$ondelim\nn");
     for (i=0; i<n; i++) printf(",%d",i);
   } if (nr>0)
     printf("\n%d %s",nr-1,$0);
   nr++;
}
END {
   printf("\n$offdelim\n;")
}
$offecho
$set fn %gams.scrdir%tlinst.%gams.scrext%
$call awk -f pm.awk %instance% > "%fn%"
$if errorlevel 1 $abort problems with awk call

$offlisting
$include "%fn%"
$onlisting

alias (n,i,j);
Scalar wMax; wMax = smax((i,j), w(i,j));

Variables
    x(n)          location selection
    costs(n,n)    costs between location i and j
    cost(n)       cost to serve i
    obj           objective;
Binary variables x;

Equation
    defp          select p locations
    defcosts(i,j) 'costs between location i and j is w(i,j) or inf (=2*wMax))'
    defcost(i)    cost to serve i is the smallest cost between i and other locations
    defobj        objective
;

$ifthen set MIP
  Positive Variable diff(i,j)
  Binary Variable bdiff(i,j)
  Equation defcosts2(i,j), defdiffZero(i,j);

  defcosts(i,j)..    costs(i,j) =g= 2*wMax - 2*wMax*x(j);

  defcosts2(i,j)..   cost(i) =e= costs(i,j) - diff(i,j);

  defdiffZero(i,j).. diff(i,j) =l= 2*wMax - 2*wMax*bdiff(i,j);

  defcost(i)..       sum(j, bdiff(i,j)) =g= 1;
$else
  defcosts(i,j)..    costs(i,j) =e= ifthen (x(j)>=0.5, w(i,j), 2*wMax);

  defcost(i)..       cost(i) =e= smin(j, costs(i,j));
$endif

defp..             sum(n, x(n)) =e= p;

defobj..           obj =e= sum(n, cost(n));

model pmedian /all/;

costs.lo(i,j) = w(i,j);
$ifthen set MIP
  solve pmedian us mip min obj;
$else
  solve pmedian us minlp min obj;
$endif

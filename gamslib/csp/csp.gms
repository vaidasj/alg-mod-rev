option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Closest String Problem (CSP,SEQ=306)
$ontext
The closest-string problem (CSP) finds a center string that minimizes
the Hamming distance between the center string and all other strings.
The Hamming distance counts the nonmatching characters. For example,
'CATCC' and 'CTTGC' have a Hamming distance of 2.

Three formulations are presented. Formulations 1 and 2 can only be used
for small problems. Formulation 3 is the most intuitive formulation
and works well with general purpose MIP codes.

It should be noted that the root node heuristic of CPLEX performs
very well. With an absolute gap of one or two, CPLEX finds solution within
a few seconds for all suggested sizes. For example, the setting below
will result in solutions that are either within 1.0 from he global optimum
or less than 1 percent:

option optcr=0.01, optca=1.99;


Meneses, C N, Lu, Z, Oliveira, C A S, and Pardalos, P M,
Optimal Solutions for the Closest-String Problem via Integer Programming.
INFORMS Journal on Computing 16, 4 (2004), 419-429.

$offtext

$eolcom //

set n  strings
    m  character sequence
    a  alphabet;

parameter x(n,m) string values;

$if NOT set letters $set letters   26
$if NOT set strings $set strings    4
$if NOT set length  $set length     6


set n / s1*s%strings% /, m /c1*c%length% /, a / a1*a%letters% /;

* sample data from paper

table x(n,m)
   c1 c2 c3 c4 c5 c6
s1  4  9  6  6  5 18   // differ
s2 13  5  4  9  1 14   // median
s3 12  5 14  7 20  8   // length
s4 13  5  4  9 21 13 ; // medium

* recognize sample data
$if NOT %strings%+%length%+%letters% == 4+6+26
x(n,m) = UniformInt(1,card(a));

if(card(n)*card(m) > 50,
   option limcol=0,limrow=0,solprint=off, reslim=10
          optcr=0.01, optca=1.999
else
   option reslim=5, optcr=0.0, optca=0.999 );

*** Formulation P1

Variables d      maximum difference between t and x
          t(m)   reference string
          z(n,m) string is different;
binary variable z;

equations e1(n)   lower bound for d
          e2(n,m) lower bound on difference
          e3(n,m) upper bound on difference;

e1(n).. sum(m, z(n,m)) =l= d;

* x <> t
e2(n,m).. t(m) =l= t.up(m)*z(n,m) + x(n,m)*(1-z(n,m));
e3(n,m).. t(m) =g= t.lo(m)*z(n,m) + x(n,m)*(1-z(n,m));

t.lo(m) = smin(n, x(n,m));
t.up(m) = smax(n, x(n,m));

model p1A / e1,e2,e3 /;

parameter report Summary report;

report(m,'t.lo') = t.lo(m);
report(m,'t.up') = t.up(m);

solve p1A min d us mip;
report(m,'p1A') = t.l(m);
report('objective','p1A') = p1a.objval;
report('Est Global','p1A') = ceil(p1a.objest-1e-6);

*** Formulation P2

set ma(m,a) possible characters by position;

ma(m,a) = sum(n, ord(a)=x(n,m));
*display ma;

binary variable v(m,a) selection of characters;

equations e4(m) select only one
          e5(m) assign character value to t;

e4(m).. sum(ma(m,a), v(ma)) =e= 1;

e5(m).. t(m) =e= sum(ma(m,a), ord(a)*v(ma));

model p2 / e1,e2,e3,e4,e5 /;

solve p2 min d us mip;
report(m,'p2') = t.l(m);
report('objective','p2') = p2.objval;
report('Est Global','p2') = ceil(p2.objest-1e-6);

*** Formulation P3

equation e6(n) count matching characters ;

e6(n).. card(m) - sum(ma(m,a),(x(n,m)=ord(a))*v(ma)) =l= d;

model p3 / e4,e6 /;

solve p3 min d us mip;

t.l(m) = sum(ma(m,a), ord(a)*v.l(ma));
report(m,'p3') = t.l(m);
report('objective','p3') = p3.objval;
report('Est Global','p3') = ceil(p3.objest-1e-6);

display report;

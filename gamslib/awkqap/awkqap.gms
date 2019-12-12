option MIQCP=convert;
option MIQCP=convert;
option MIQCP=convert;
$Title  Input file generation with AWK for the Quadratic Assignment Problem (AWKQAP,SEQ=296)
$Ontext

The model writes an AWK script on the fly to process the an input file
format defined by the maintainers of the QAPLib. More input instances
are available from

http://www.opt.math.tu-graz.ac.at/qaplib/inst.html


Burkard, R E, Karisch, S E, and Rendl, F, QAPLIB - A Quadratic Assignment
Problem Library. Journal of Global Optimization 10 (1997), 391-403.

$Offtext

$set fn tai7a.inc
$if not exist %fn% $abort %fn% ist not present

$echon "$setglobal n " > %gams.scrdir%n.%gams.scrext%
$call head -n1 %fn%   >> "%gams.scrdir%n.%gams.scrext%"
$include %gams.scrdir%n.%gams.scrext%

$onecho > %gams.scrdir%awkscript.%gams.scrext%
BEGIN { print "$ondelim" }
NF == 0 && cnter ==  0 { print "Table d(i,j)";
                         for (i=0; i <= %n%; i++) printf i " "; print }
NF == 0 && cnter == %n% { adj=%n%; print ";"; print "Table f(i,j)";
                          for (i=0; i <= %n%; i++) printf i " "; print }
NF == %n% { cnter++; print cnter-adj, $0; }
END { print ";"; print "$offdelim"; }
$offecho
$call awk -f "%gams.scrdir%awkscript.%gams.scrext%" %fn% > "%gams.scrdir%data.%gams.scrext%"

set i / 1*%n% /; alias (i,j,k,l);
$include %gams.scrdir%data.%gams.scrext%

* Let's do a trivial MIQCP model
BINARY VARIABLE x(i,j);
VARIABLE z;

EQUATION defobj
         assign1(i)
         assign2(j);

defobj..     z =e= sum((i,j,k,l)$(d(i,j)*f(k,l)), x(i,k)*d(i,j)*f(k,l)*x(j,l));

assign1(i).. sum(j,x(i,j)) =e= 1;

assign2(j).. sum(i,x(i,j)) =e= 1;

MODEL qap /all/;

* Starting Point
x.l(i,j) = 1/sqr(card(i));

option optcr=0,optca=0.99;
SOLVE qap MINIMIZING z USING MIQCP;

option MIP=convert;
option MIP=convert;
option MIP=convert;
$title Discontinous functions abs, min, max, and sign as MIPs (ABSMIP,SEQ=208)
$Ontext
 This illustrates the MIP formulations of some difficult functions.


GAMS Development Corporation, Formulation and Language Example.

$Offtext

Variable x  Argument to the various functions;
Positive Variable xp Positive part of x
                  xn Negative part of x;
Binary Variable b decision if we have positive or negative x;

Equations e1  split x in positive and negative part
          e2  restrict positive part of x
          e3  restrict negative part of x;

e1.. x =e= xp - xn;
e2.. xp =l=  abs(x.up)*b;
e3.. xn =l=  abs(x.lo)*(1-b);

Variable y result of function evaluation;

Equation defabs   "definition of y = abs(x)"
         defzmax  "definition of y = zmax(x) = max(x,0)"
         defzmin  "definition of y = zmin(x) = min(x,0)";

defabs..  y =e= xp + xn;
defzmax.. y =e= xp;
defzmin.. y =e=    - xn;

model absM  / e1,e2,e3,defabs  /
      zmaxM / e1,e2,e3,defzmax /
      zminM / e1,e2,e3,defzmin /;

Scalar tol tolerance for being zero / 1e-04 /;

Binary Variables b1 decides if xp is positive
                 b2 decides if xn is positive;

Equations e2up upper restriction for xp
          e2lo lower restriction for xp
          e3up upper restriction for xn
          e3lo lower restriction for xn
          one  either b1 or b2
          defsign definition of y = sign(x);

e2up.. xp =l=  abs(x.up)*b1;
e2lo.. xp =g=  tol*b1;
e3up.. xn =l=  abs(x.lo)*b2;
e3lo.. xn =g=  tol*b2;
one..  b1 + b2 =l= 1;

defsign.. y =e= b1 - b2;

Model signM / e1,e2up,e2lo,e3up,e3lo,one,defsign /;

Option limcol=0,limrow=0,optcr=1e-6;

Set runs number of test runs / 1*5 /
    nos / "v.lo", "v.up", "w.lo", "w.up" /
    mm min and max / max, min /;

Parameter bnds_unary(runs,*) /
  1.lo  -5, 1.up  5
  2.lo  -5, 2.up -2
  3.lo   2, 3.up  5
  4.lo   0, 4.up  5
  5.lo  -5, 5.up  0
/;

Parameter rep_unary;

loop(runs,
  x.lo = bnds_unary(runs,"lo"); rep_unary(mm,runs,"x.lo") = x.lo;
  x.up = bnds_unary(runs,"up"); rep_unary(mm,runs,"x.up") = x.up;
  solve absM  max y using mip; rep_unary("max",runs,"abs" ) = y.l;
  solve zmaxM max y using mip; rep_unary("max",runs,"zmax") = y.l;
  solve zminM max y using mip; rep_unary("max",runs,"zmin") = y.l;
  solve signM max y using mip; rep_unary("max",runs,"sign") = y.l;
  solve absM  min y using mip; rep_unary("min",runs,"abs" ) = y.l;
  solve zmaxM min y using mip; rep_unary("min",runs,"zmax") = y.l;
  solve zminM min y using mip; rep_unary("min",runs,"zmin") = y.l;
  solve signM min y using mip; rep_unary("min",runs,"sign") = y.l;
);

Variables z  "result of function evaluation"
          v  "argument to max/min"
          w  "argument to max/min"

Equations defvwx "substitution x = v - w"
          defmXX "definition of z = max/min(v,w) = max/min(x,0) + w";

defvwx.. x =e= v - w;
defmXX.. z =e= y + w;


Model maxM / e1,e2,e3,defzmax,defvwx,defmXX /
      minM / e1,e2,e3,defzmin,defvwx,defmXX /;

Parameter bnds_binary(runs,*) /
  1.vlo  -5, 1.vup  5, 1.wlo  -2, 1.wup  2
  2.vlo  -2, 2.vup  2, 2.wlo  -5, 2.wup  5
  3.vlo  -5, 3.vup -2, 3.wlo   2, 3.wup  5
  4.vlo   2, 4.vup  5, 4.wlo  -5, 4.wup -2
  5.vlo  -5, 5.vup  2, 5.wlo  -2, 5.wup  5
/;

Parameter rep_binary;

loop(runs,
  v.lo = bnds_binary(runs,"vlo"); rep_binary(mm,runs,"v.lo") = v.lo;
  v.up = bnds_binary(runs,"vup"); rep_binary(mm,runs,"v.up") = v.up;
  w.lo = bnds_binary(runs,"wlo"); rep_binary(mm,runs,"w.lo") = w.lo;
  w.up = bnds_binary(runs,"wup"); rep_binary(mm,runs,"w.up") = w.up;
  x.lo = -max(abs(w.up-v.lo), abs(v.up-w.lo)); x.up = -x.lo;
  solve maxM  max z using mip; rep_binary("max",runs,"max" ) = z.l;
  solve minM  max z using mip; rep_binary("max",runs,"min" ) = z.l;
  solve maxM  min z using mip; rep_binary("min",runs,"max" ) = z.l;
  solve minM  min z using mip; rep_binary("min",runs,"min" ) = z.l;
);

display rep_unary, rep_binary;

option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$title Pump Network Synthesis (PUMP,SEQ=205)
$Ontext
 The aim is to identify the least costly configuration of centrifugal
 pumps that achieves a pre specified pressure rise based on a given
 total flowrate.


Floudas, C A, Pardalos, P M, Adjiman, C S, Esposito, W R,
Gumus, Z H, Harding, S T, Klepeis, J L, Meyer, C A, and
Schweiger, C A, Handbook of Test Problems in Local and Global
Optimization. Kluwer Academic Publishers, 1999.

Westerlund, T, Petterson, F, and Grossmann, I E, Optimization
of Pump Configuration Problems as a MINLP Problem. Computers
and Chemical Engineering 18, 9 (1994), 845-858.

 The entire collection of models can found at
    http://titan.princeton.edu/TestProblems/

$offtext

SET i set of levels /1*3/;

SCALAR wmax maximum rotation speed /2950/
       Vtot total volumetric flowrate /350/
       dPtot total pressure rise /400/
       nsmax maximum number of pumps in series /3/
       npmax maximum number of pumps in parallel /3/;

PARAMETER Pmax(i) maximum power output
          C(i) fixed cost of pump
          Cd(i) operating cost coefficient;

TABLE ldata(i,*) data of the levels
  Pmax       C   Cd    m1     m2       m3    m4  m5      m6
1   80 6329.03 1800 19.90 0.1610 0.000561 0.696 629 0.01160
2   25 2489.31 1800  1.21 0.0644 0.000564 2.950 215 0.11500
3   45 3270.27 1800  6.52 0.1020 0.000232 0.530 361 0.00946
;

Pmax(i) = ldata(i,'Pmax');
C(i) = ldata(i,'C');
Cd(i) = ldata(i,'Cd');

VARIABLES
         P(i)     power output of pumps on level i
         w(i)     rotation speed for pumps on level i
         dp(i)    pressure rise on level i
         vdot(i)  flow through pumps on level i
         x(i)     fraction of total flow on level i
         np(i)    number of parallel lines on level i
         ns(i)    number of pumps in series on level i
         z(i)     existence of level i
         objval   objective function variable;

POSITIVE VARIABLES P, w, dp, vdot, x;
INTEGER VARIABLES np, ns;
BINARY VARIABLE z;

EQUATIONS
         f         Objective function
         g(i)      Power output calculation for level i
         gd(i)     Pressure rise calculation for level i
         sumx      Constraint on volume fractions
         gvdot(i)  Volume flowrate calculation for pumps on level i
         gdp(i)    Constraints on pressure rise
         lw(i)     Logical constraints on w
         lP(i)     Logical constraints on P
         ldp(i)    Logical constraints dp
         lvdot(i)  Logical constraints on vdot
         lx(i)     Logical constraints on x
         lnp(i)    Logical constraints on np
         lns(i)    Logical constraints on ns;

f.. objval =e= SUM(i, (C(i) + Cd(i)*P(i)) * np(i)*ns(i)*z(i));

g(i).. P(i) =e= ldata(i,'m1') * POWER(w(i)/wmax,3) +
                ldata(i,'m2') * POWER(w(i)/wmax,2)*vdot(i) -
                ldata(i,'m3') * w(i)/wmax*POWER(vdot(i),2);

gd(i).. dp(i) =e=  ldata(i,'m4') * w(i)/wmax*vdot(i) +
                   ldata(i,'m5') * POWER(w(i)/wmax,2)  -
                   ldata(i,'m6') * POWER(vdot(i),2);

sumx.. SUM(i,x(i)) =e= 1;

gvdot(i).. x(i) =e= vdot(i)/Vtot * np(i);

gdp(i)..   z(i) =e= dp(i) / dPtot * ns(i);

lw(i)..    w(i) / wmax =l= z(i);
lP(i)..    P(i) / Pmax(i) =l= z(i);
ldp(i)..   dp(i) / dPtot =l= z(i);
lvdot(i).. vdot(i) / Vtot =l= z(i);
lx(i)..    x(i) =l= z(i);
lnp(i)..   np(i) =l= npmax * z(i);
lns(i)..   ns(i) =l= nsmax * z(i);


* Bounds
P.UP(i) = Pmax(i);
w.UP(i) = wmax;
dp.UP(i) = dPtot;
vdot.UP(i) = Vtot;
x.UP(i) = 1;
np.UP(i) = npmax;
ns.UP(i) = nsmax;

SEt h "Variable name headers" / P, dp, vdot, w, x, np, ns, z /;

Table gs(i,h) global solution
       P      dp   vdot        w           x   np   ns  z
1  28.27034  400    160 2855.102  0.91428570    2    1  1
2   2.63440  200     30 2950.000  0.08571429    1    2  1
3
;


* Initialize starting point
* Turn on all equipment and let model turn some down
* Otherwise NLP solver doesn't find a feasible point
P.L(i) = P.up(i);
dp.L(i) = dp.up(i);
vdot.L(i) = vdot.up(i);
w.L(i) = w.up(i);
x.L(i) = 0.33;
z.L(i) = 1;
np.L(i) = np.up(i);
ns.L(i) = ns.up(i);

option optcr=0.0;
MODEL pump /ALL/;

SOLVE pump USING MINLP MINIMIZING objval;
execerror=0;

* Did we find the global solution?
PARAMETER rep solution report;

rep('P',i,'local') = P.L(i);
rep('dp',i,'local') = dp.L(i);
rep('vdot',i,'local') = vdot.L(i);
rep('w',i,'local') = w.L(i);
rep('x',i,'local') = x.L(i);
rep('z',i,'local') = z.L(i);
rep('np',i,'local') = np.L(i);
rep('ns',i,'local') = ns.L(i);

rep(h,i,'global') = gs(i,h);
rep(h,i,'diff') = rep(h,i,'global') - rep(h,i,'local');

option rep:8:2:1;
display rep;

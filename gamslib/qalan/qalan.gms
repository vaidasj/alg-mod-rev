option MIQCP=convert;
option MIQCP=convert;
option MIQCP=convert;
$Title A Quadratic Programming Model for Portfolio Analysis (QALAN,SEQ=282)
$Ontext

   This is the gamslib model ALAN expressed as a QCP and MIQCP

   This is a mini mean-variance portfolio selection problem described in
   'GAMS/MINOS: Three examples' by Alan S. Manne, Department of Operations
   Research, Stanford University, May 1986.

   Integer variables have been added to restrict the number of securities
   selected. The resulting MINLP problem is solved with different option
   settings to demonstrate some DICOPT features. Finally, the model is
   solved by complete enumeration using GAMS procedural facilities.


Manne, A S, GAMS/MINOS: Three examples. Tech. rep., Department of
Operations Research, Stanford University, 1986.

$Offtext

 Set i  securities   /hardware, software, show-biz, t-bills/; alias (i,j)


 Scalar  target    target mean annual return on portfolio (%)   / 10 /


 Parameters  mean(i)  mean annual returns on individual securities (%)

      / hardware   8
        software   9
        show-biz  12
        t-bills    7 /

 Table v(i,j)  variance-covariance array (%-squared annual return)

                  hardware  software  show-biz  t-bills

       hardware      4         3         -1        0
       software      3         6          1        0
       show-biz     -1         1         10        0
       t-bills       0         0          0        0

 Variables  x(i)       fraction of portfolio invested in asset i
            variance   variance of portfolio

 Positive Variable x;

 Equations  fsum    fractions must add to 1.0
            dmean   definition of mean return on portfolio
            dvar    definition of variance;

 fsum..     sum(i, x(i))                     =e=  1.0  ;
 dmean..    sum(i, mean(i)*x(i))             =e=  target;
 dvar..     sum(i, x(i)*sum(j,v(i,j)*x(j)))  =e=  variance;

Model portfolio  / fsum, dmean, dvar / ;

Solve portfolio using QCP minimizing variance;


* now allow only three assets in our portfolio

Scalar maxassets max assets in portfolio /3/;

Binary Variables active(i) indicator: if 1 then asset is in portfolio;

Equations  setindic(i) if active is 0 then not in portfolio,
           maxactive   defines max number of assets in portfolio;

setindic(i).. x(i) =l= active(i);

maxactive..   sum(i, active(i)) =l= maxassets;

Model p1 / fsum, dmean, dvar, setindic, maxactive/ ;

option optcr=1e-6;

Solve p1 using MIQCP minimizing variance;



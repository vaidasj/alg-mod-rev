option QCP=convert;
option QCP=convert;
option QCP=convert;
$Title Financial Optimization: Risk Management (IMMUN,SEQ=110)

$Ontext

   Several different models have been developed during the seventies
   to manage financial risks. Immunization, dedication and combination
   models of various flavors are presented. The presentation of the
   models follows closely chapter one of the book Financial Optimization.

   The models are designed to capture the essential features using a small
   data set derived from U.S.Treasury Quotes for 6/23/89 from the Wall Street
   Journal.

   The family of models presented in this file are

   IMMUN1  Dollar Duration Immunization Model
   IMMUN2  Gain Oriented Immunization Model
   IMMUN3  Dollar Convexity Immunization Model
   FACTOR1 Factor Immunization Model
   FACTOR2 Factor Immunization Model
   DEDIC   Bond Dedication Model
   COMB1   Combination Matching Model
   COMB2   Horizon Matching Model
   COMB3   Factor Horizon Matching Model
   SIGMA   Minimum Cashflow Variance Model

   All share the same liability and security data. Common formulations
   are exploited to better show the relationship between these models


Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization
Models: Risk Management. In Zenios, S A, Ed, Financial Optimization.
Cambridge University Press, New York, NY, 1993.

$Offtext

$Stitle  Liability Information


Set   tl liability time  / tl0*tl5 /


Table  liab(tl,*)  liability data

        month   day    year   liability    liabrate
  tl0     6      23    1989           0    0.092370
  tl1     9       1    1989       50000    0.092281
  tl2     6      15    1990       42000    0.090367
  tl3    12       1    1990       40000    0.088643
  tl4    12       1    1991       40000    0.085649
  tl5     6       1    1993       45000    0.086548  ;

Scalar basedate earliest liability date;

basedate = smin(tl, jdate(liab(tl,'year'),liab(tl,'month'),liab(tl,'day')));

liab(tl,'days') = jdate(liab(tl,'year'),liab(tl,'month'),liab(tl,'day')) - basedate;
liab(tl,'term') = liab(tl,'days')/365;


Parameters
  rl(tl)    interest rate of liability
  pl        present value of liability
  kl        dollar duration of liability
  ql        dollar convexity of liability;

rl(tl) =  liab(tl,"liabrate");
pl     =  sum( tl, liab(tl,'liability')
                 * exp(-rl(tl)*liab(tl,'term')) );
kl     = -sum( tl, liab(tl,'liability')
                 * exp(-rl(tl)*liab(tl,'term'))
                 * liab(tl,'term')  );
ql     =  sum( tl, liab(tl,'liability')
                 * exp(-rl(tl)*liab(tl,'term'))
                 * sqr(liab(tl,'term')) );

* note: (1) liability interest rate fitted from cubic spline prototype.
*       (2) continuous compounding used for liabilities.

Display  pl, kl, ql;

$Stitle  security information

Sets  i   securities      / bond-1*bond-8 /
      ts  time points     / 89-07, 89-08, 90-02, 90-08, 91-02
                            91-08, 92-02, 92-08, 93-02, 93-08 /


Table  stime(ts,*)  time information for securities

            month  day   year
  89-07       7     15   1989
  89-08       8     15   1989
  90-02       2     15   1990
  90-08       8     15   1990
  91-02       2     15   1991
  91-08       8     15   1991
  92-02       2     15   1992
  92-08       8     15   1992
  93-02       2     15   1993
  93-08       8     15   1993  ;

stime(ts,'days') = jdate(stime(ts,'year'),stime(ts,'month'),stime(ts,'day'))
                 - basedate;
stime(ts,'term') = stime(ts,'days') / 365;


Table  sdata(*,i)  security data

           bond-1     bond-2     bond-3    bond-4
  89-07  103.8125   107.2500
  89-08                          7.4375    3.6250
  90-02                          7.4375    3.6250
  90-08                          7.4375    3.6250
  91-02                          7.4375    3.6250
  91-08                        107.4375    3.6250
  92-02                                    3.6250
  92-08                                  103.6250

  yield    8.35       8.56       8.08      8.29
  price   99.9063   100.2812   113.0625   97.1563
  accr     3.3491     6.3688     5.2597    2.5635


+          bond-5     bond-6     bond-7    bond-8
  89-08    4.1250     4.3125     4.375     5.9375
  90-02    4.1250     4.3125     4.375     5.9375
  90-08    4.1250     4.3125     4.375     5.9375
  91-02    4.1250     4.3125     4.375     5.9375
  91-08    4.1250     4.3125     4.375     5.9375
  92-02    4.1250     4.3125     4.375     5.9375
  92-08  104.1250     4.3125     4.375     5.9375
  93-02               4.3125     4.375     5.9375
  93-08             104.3125   104.375   105.9375

  yield    8.37       8.35       8.35      8.36
  price   99.6563   100.9375   101.3750  112.0625
  accr     2.9171     3.0497     3.0939    4.1989   ;

* note: (3) accr is interest accrued in the current coupon period
*           to date.


Parameters
  r(i)       current yield of security
  cf(ts,i)   cash flow of security
  p(i)       present value of security (current price)
  pv(i)      present value of cashflows of security
  k(i)       dollar duration of security
  q(i)       dollar convexity of security;

cf(ts,i) =  sdata(ts,i) * 10;
r(i)     =  sdata('yield',i) / 100;
p(i)     =  (sdata('price',i) + sdata('accr',i)) * 10;
pv(i)    =  sum( ts, cf(ts,i) * (1+r(i)/2)**(-2*stime(ts,'term')-1) );
k(i)     = -sum( ts, cf(ts,i) *
             stime(ts,'term') * (1+r(i)/2)**(-2*stime(ts,'term')-1) );
q(i)     =  sum( ts, cf(ts,i) * (stime(ts,'term')+1) *
             stime(ts,'term') * (1+r(i)/2)**(-2*stime(ts,'term')-2) );

* note: (4) dollar amounts scaled by 10 to indicate par value.
*       (5) current price used to indicate present value.
*       (6) dollar duration and dollar convexity uses semiannual
*            compounding.

Display  k, q;

$Stitle  immunization model equations

Variables
  omega        objective value
  x(i)         security ;

Positive Variable  x;


Equations
    objdef1   objective definition immun1
    objdef2   objective definition immun2
    objdef3   objective definition immun3
    pvm       present value match
    ddm       dollar duration match
    dcm       dollar convexity constraint;


  objdef1..  omega =e= sum(i, k(i)*r(i)*x(i));

  objdef2..  omega =e= sum(i, (p(i)-pv(i))*x(i));

  objdef3..  omega =e= sum(i, q(i)*x(i));

  pvm..      sum(i, p(i)*x(i)) =e= pl;

  ddm..      sum(i, k(i)*x(i)) =e= kl;

  dcm..      sum(i, q(i)*x(i)) =g= ql;


 Model immun1 dollar duration immunization model  / objdef1,pvm,ddm    /
       immun2 gain oriented immunization model    / objdef2,pvm,ddm    /
       immun3 dollar convexity immunization model / objdef3,pvm,ddm,dcm/;

 Solve immun1 maximizing omega using lp ;

 Solve immun2 minimizing omega using lp ;

 Solve immun3 minimizing omega using lp ;

$Stitle  factor loading model

Set  tf     factor dates in years from 6-23-89  / tf0  * tf10 /
     j      factors                             / shift, tilt, curve /
     ja(j)  active factors ;

* shape risk factors
*   shift   parallel shifts to term structure curve
*   tilt    changes in steepness of term structure curve
*   curve   changes in overall curvature of the term structure curve


Table  a(tf,*)  factor loading array for yearly time intervals

           term   shift    tilt  curve
  tf0         0      42     -25     -6
  tf1         1      43     -22     -4
  tf2         2      44     -16     -2
  tf3         3      45     -12      0
  tf4         4      46      -6      4
  tf5         5      47       0      8
  tf6         6      47       2      8
  tf7         7      46       4      6
  tf8         8      45       6      4
  tf9         9      44       8      2
  tf10       10      43      10      0 ;


Parameters
  sfac(ts,j)    interpolated factor loadings on term of securities
  lfac(tl,j)    interpolated factor loadings on term of liabilities
  f(i,j)        factor sensitivities of securities
  fl(j)         factor sensitivities of liabilities ;


Loop( (ts,tf)$(a(tf,"term") eq trunc(stime(ts,"term"))),
  sfac(ts,j) = ( a(tf,j) +
                 (a(tf+1,j)-a(tf,j)) * (stime(ts,"term")-a(tf,"term")) )
                   / 100 );

Loop( (tl,tf)$(a(tf,"term") eq trunc(liab(tl,"term"))),
  lfac(tl,j) = ( a(tf,j) +
                 (a(tf+1,j)-a(tf,j)) * (liab(tl,"term")-a(tf,"term")) )
                   / 100 );


f(i,j) = - sum( ts, sfac(ts,j) * cf(ts,i) *
             stime(ts,"term") * (1+r(i)/2)**(-2*stime(ts,'term')-1) );

fl(j)  = - sum( tl, lfac(tl,j) * liab(tl,"liability") *
             liab(tl,"term")  * exp(-rl(tl)*liab(tl,"term")) );


Positive Variable
    dif(j)  elastic difference in factor match (surplus);

* note:  nonzero solution values of dif(j) indicate infeasibilities.


Equations
    objdef4       objective definition
    fm(j)         factor match
    diffm(j)      difference between factor match when infeasible ;


  objdef4..     omega =e= sum(i, k(i)*r(i)*x(i)) - sum(ja, dif(ja)) ;

  fm(ja)..      sum(i, f(i,ja)*x(i)) =e= fl(ja) ;

  diffm(ja)..   sum(i, f(i,ja)*x(i)) - fl(ja)  =e=  dif(ja) ;


 Model factor1 factor immunization model  / objdef1, pvm, fm /
       factor2 factor immunization model  / objdef4, pvm, diffm /;

 ja(j) = yes;

 Solve factor1 maximizing omega using lp;
 Solve factor2 maximizing omega using lp;

$Stitle  bond dedication model

Parameters
  rr        reinvestment rate
  del(tl)   interval between liability payments
  d(tl,i)   reinvested value of bond cashflow between liability dates;

  rr      = .05;
  del(tl) = liab(tl,"term") - liab(tl-1,"term");

  d(tl,i) = sum( ts$(liab(tl-1,"term") lt stime(ts,"term")
                  and stime(ts,"term") le liab(tl,"term")),
            cf(ts,i) * (1+rr)**(liab(tl,"term")-stime(ts,"term")) );


Variable
  s(tl)      cash holdings (surplus) at time tl
  l(tl)      funded liability ;

Positive Variable  s, l;

l.lo(tl) = liab(tl,"liability");


Equations  objdef5    objective definition for cost
           cbal(tl)   cashflow balance ;

objdef5..  omega =e= sum(i, p(i)*x(i)) + s("tl0");

cbal(tl).. sum(i, d(tl,i)*x(i)) + s(tl-1)*(1+rr)**del(tl) =e= l(tl) + s(tl) ;

Model dedic bond dedication model / objdef5, cbal /;

 Solve dedic minimizing omega using lp;

$Stitle  combination matching (horizon matching)

l.lo(tl)$(liab(tl,"year") gt 1992) =0;

Equation  hm  horizon matching ;

  hm..  kl*(sum(i, p(i)*x(i)) + s("tl0")) =e=  pl*sum(i, k(i)*x(i)) ;


 Model comb1 combination matching model     / objdef5, cbal, hm  /
       comb2 horizon matching model         / objdef5, cbal, ddm /
       comb3 factor horizon matching model  / objdef5, cbal, fm  /

 Solve comb1 minimizing omega using lp;
 Solve comb2 minimizing omega using lp;
 ja(j) = yes;
 Solve comb3 minimizing omega using lp;

$Stitle  minimum cashflow variance model

Variable
  variance     variance of cashflows ;

omega.up = pl;
l.lo(tl) = 0;


Equation
    objdef6    cashflow variance ;

  objdef6..   variance =e= sum(tl, sqr( liab(tl,"liability")-l(tl)) );


Model sigma  minimum cashflow variance model  / objdef6, cbal, objdef2 /;

Solve sigma  minimizing variance using qcp;

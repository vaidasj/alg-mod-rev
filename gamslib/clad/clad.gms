option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Computation of Fair's extramarital affairs model estimates (CLAD,SEQ=397)
$ontext

For a sample of 601 persons from a magazine survey (Psychology Today)
conducted in July 1969 issue, Fair modeled the 'number of extramarital
affairs' occurence during the last year (zero or some positive value
from 1 to 12) for a proxy of the US population (both males and females).
A tobit model was used at that time to determine the effects of various
demographic variables.

We compute the censored least absolute deviations (Powell, 1984) estimator
using a MIP formulation due to Bilias, Florios and Skouras.

Bilias, Y, Florios, K, and Skouras, S, Exact computation of censored least
absolute deviations estimators. Tech. rep., Athens University of Economics
and Business & National Technical University of Athens, 2013

Fair, R, A theory of extramarital affairs. Journal of Political Economy
86, 45-61, 1978

Powell, JL, Least absolute deviations estimation for the censored
regression model. Journal of Econometrics 25, 303-325, 1984.

$offtext

Set  p      explanatory variables /
       RateMar  "How rate marriage, 1-5 scale, 5=very happy ... 1=very unhappy"
       Age      "Age, 17.5 to 57"
       YearsMa  "No. of Years married, 0.125 to 15"
       Intcpt   "intercept" /
     T      sample size (households) / 1*601 /;
Parameter
     X(T,*) explanatory and dependent variables
     y(T)   value of left censored at zero dependent variable;

$gdxin claddat
$load X

y(T) = X(T,'Affairs');

$if not set normalize_X $set normalize_X 1
$if not set normalize_Y $set normalize_Y 1
*set normalize_X=1/0 and normalize_Y=1/0
*preferable combination is normalize_X=normalize_Y=1

Parameters
     delta       domain for every parameter to be estimated / 15 /
     Xnms(T,p)  'Matrix X, normalized all variances equal to 1 if %normalize_X%==1'
     mean(p)     average of X(T.p) over T for mu sigma normalization
     stdev(p)    stdev   of X(T.p) over T etc
     ynms(T)    'vector y, normalized with variance equal to 1 if %normalize_Y%==1'
     meanY       average of y(T) over T for mu sigma nomalization
     stdevY      stdev   of y(T) over T etc
     omega(T)    tight valid big M coefficient for disjunctive constraints;

mean(p)  = sum(T, X(T,p))/card(T);
stdev(p) = sqrt(sum(T, sqr(X(T,p)-mean(p)))/(card(T)-1));

meanY    = sum(T,y(T))/card(T);
stdevY   = sqrt(sum(T,sqr(y(T)-meanY))/(card(T)-1));

Xnms(T,p) = X(T,p);
$if %normalize_X% == 1 Xnms(T,p) = 1; Xnms(T,p)$stdev(p) = (X(T,p)-mean(p))/stdev(p);

ynms(T)=y(T);
$if %normalize_y% == 1 ynms(T)   = 1; ynms(T)$stdevY = (y(T)-meanY)/stdevY;

omega(T) = delta*sum(p, abs(Xnms(T,p)));

Scalar
     RHS   RHS of disjunctive constraints. dependent on %normalise_y%=1 or 0;

RHS=((0-meanY)/stdevY)$(%normalize_y%=1);

Variables
     z        objective function variable
     beta(p)  beta coefficients
     phi(T)  'substitutes max(X(T,p)*beta(p), 0)'
     gamma(T) only auxiliary binary variable for phi computation. substitution of max()
     sm(T)    slack   auxiliary variable for obj.fun. computation. substitution of | |
     sp(T)    surplus auxiliary variable for obj.fun. computation. substitution of | |
Binary variables gamma;
Positive variables sm, sp;

Equations
     objfun       objective function
     con_phi_a(T) constraint for phi computation. a
     con_phi_b(T) constraint for phi computation. b
     con_phi_c(T) constraint for phi computation. c
     con_phi_d(T) constraint for phi computation. d
     con_s(T)     constraint for sm and sp computation;

objfun..       z =e= sum(T,sm(T) + sp(T)) ;
con_phi_a(T).. phi(T) =g= sum(p,beta(p)*Xnms(T,p)) ;
con_phi_b(T).. phi(T) =g= RHS ;
con_phi_c(T).. phi(T) =l= sum(p,beta(p)*Xnms(T,p)) + omega(T)*(1-gamma(T)) ;
con_phi_d(T).. phi(T) =l= RHS + omega(T)*gamma(T) ;
con_s(T)..     ynms(T) - phi(T) + sm(T) - sp(T) =e= 0 ;

model CensoredLADPowell84 / all / ;

*------Depending on the solver box constraints help or do not help ------*
*------They are implicitely enforced through omega---*
*------It is preferable to locate the betas in the interior of the box---*
*------Thus just not include the box constraints explicitely-------------*
*beta.lo(p)=-delta;
*beta.up(p)=+delta;

option optcr=0;
solve CensoredLADPowell84 minimizing z using mip;

Parameter
    ffbeta(p) parameter vector components;

ffbeta(p) = beta.l(p);

Parameter
  fbeta(p)  intermediate vector;
alias (p,pp);

if (%normalize_X% eq 0,
   if (%normalize_Y% eq 0,
*     00 case. normalizeX,normalizeY
      ffbeta(p)=beta.l(p);
   else
*     01 case. normalizeX,normalizeY
      fbeta(p)= sum(pp$(stdev(pp)=0),beta.l(pp)*stdevY+meanY) ;
      fbeta(p)$stdev(p)=(beta.l(p)*stdevY);
      ffbeta(p) = fbeta(p);
   )
else
   if (%normalize_Y% eq 0,
*     10 case. normalizeX,normalizeY
      fbeta(p)=-sum(pp$stdev(pp),beta.l(pp)*mean(pp)/stdev(pp)) +beta.l(p);
      fbeta(p)$stdev(p)=beta.l(p)/stdev(p);
      ffbeta(p) = fbeta(p);
   else
*     11 case. normalizeX,normalizeY
      fbeta(p)=(-sum(pp$stdev(pp), beta.l(pp)*mean(pp)/stdev(pp)) +beta.l(p))*stdevY+meanY;
      fbeta(p)$stdev(p)=(beta.l(p)*stdevY)/stdev(p);
      ffbeta(p) = fbeta(p);
   )
);

display beta.l, ffbeta;

Parameter
     devRaw(T)
     zRaw
     sRaw;

devRaw(T) = abs(y(T)-max(sum(p,ffbeta(p)*X(T,p)),0));
sRaw = sum(T,devRaw(T));
zRaw = sRaw;

display zRaw


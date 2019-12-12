option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Computation of Horowitz's work-trip mode choice model estimates (MWS,SEQ=331)
$ontext

For a sample of 842 persons in Washington DC in the late 1960's Horowitz
modeled the 'work-trip mode choice' decision (automobile or other) for the
daily trip from home to work.

We compute the max (weighted) score estimators using a MIP formulation due to
Florios and Skouras.


Florios, K, and Skouras, S, A note on exact computation of max weighted score
estimators by mixed integer programming. Tech. rep., National Technical
University of Athens & Athens University of Economics and Business, 2007

Horowitz, J L, Semiparametric estimation of a work-trip mode choice model.
Journal of Econometrics 58(1-2), 49-70, 1993

$offtext

Sets
  p    explanatory variables /
        DCOST  "transit fare minus automobile travel cost"
        CARS   "cars owned by the traveler's household"
        DOVTT  "transit out-of-vehicle minus automobile out-of-vehicle time"
        DIVTT  "transit in-vehicle minus automobile in-vehicle time"
        INTCPT "intercept" /
  T    sample size (households) / 1*842 /;
Parameter
  y(T) value of binary dependent variable

Table X(T,*)  explanatory and dependent variables
$offlisting
$include worktrip.inc
$onlisting
;

y(T) = X(T,'DEPEND');

$if not set normalize_X $set normalize_X 1
Parameters
   delta       domain for every parameter to be estimated / 10 /
   Xnms(T,p)  'Matrix X, normalized all variances equal to 1 if %normalizeX%==1'
   mean(p)     average of X(T.p) over T for mu sigma normalization
   stdev(p)    stdev   of X(T.p) over T etc
   omega(T)    tight valid big M coefficient for disjunctive constraints;

mean(p)  = sum(T, X(T,p))/card(T);
stdev(p) = sqrt(sum(T, sqr(X(T,p)-mean(p)))/(card(T)-1));

Xnms(T,p) = X(T,p);
$if %normalize_X% == 1 Xnms(T,p) = 1; Xnms(T,p)$stdev(p) = (X(T,p)-mean(p))/stdev(p);

omega(T) = sum(p$(ord(p)=1), abs(Xnms(T,p))) + delta*sum(p$(ord(p)>1), abs(Xnms(T,p)));
Variables
  z(T)    indicates if sign coincidence for y and linear comb. of X
  beta(p) vector components to estimate in max weighted score
  mws     objective variable;
Binary Variable z;

Equations
  objfun     objective function is (weighted) number of sign coincidences
  cosg(T)    sign coincidence constraint between y and X*b;

objfun..     mws =e= sum(T, z(T)) ;
cosg(T)..    (1-2*y(T))*sum(p, beta(p)*Xnms(T,p)) =l= omega(T)*(1-z(T));

Model MaxWeightedScore/all/ ;

beta.lo(p) = -delta; beta.up(p) = delta;
beta.fx(p)$(ord(p)=1) = 1;

option optcr=0;
Solve MaxWeightedScore using mip max mws;

Parameter
  ffbeta(p) parameter vector components;

ffbeta(p) = beta.l(p);
$if not %normalize_X% == 1 $goto display

Parameter
  fbeta(p)  intermediate vector;
alias (p,pp);

fbeta(p)  = -sum(pp$stdev(pp), beta.l(pp)*mean(pp)/stdev(pp)) + beta.l(p);
fbeta(p)$stdev(p) = beta.l(p)/stdev(p);
ffbeta(p) = fbeta(p)/sum(pp$(ord(pp)=1), fbeta(pp));

$label display
display beta.l, ffbeta;

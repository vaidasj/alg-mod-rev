option NLP=convert;
option NLP=convert;
option NLP=convert;
$title Updating and Projecting Coefficients: The RAS Approach (IOBALANCE,SEQ=378)
$ontext

The RAS procedure (named after Richard A. Stone) is an iterative procedure to
update matrices. This numerical example is taken from chapter 7.4.2 of Miller
and Blair. Several additional optimization formulations will be applied to
this toy problem.


Miller R E, and Blair P D, Input-Output Analysis: Foundations and Extensions,
Cambridge University Press, New York, 2009.

$offtext

set i / 1*3 /; alias(i,j);

table a0(i,j) known base matrix
     1     2     3
1  .120  .100  .049
2  .210  .247  .265
3  .026  .249  .145

table z1(i,j) unknown industry flows
    1   2   3
1  98  72  75
2  65   8  63
3  88  27  44

parameters x(j)    observed total output / 1 421, 2 284, 3 283 /
           u(i)    observed row totals
           v(j)    observed column totals
           a1(i,j) unknown matrix A;

u(i) = sum(j, z1(i,j));
v(j) = sum(i, z1(i,j));

a1(i,j) = z1(i,j)/x(j);

display u, v, a1;
*
* --- 1: RAS updating
*
parameters r(i)   row adjustment
           s(j)   column adjustment;

r(i) = 1; s(j) = 1;

parameter oldr,olds,maxdelta;  maxdelta=1;
repeat
  oldr(i) = r(i);
  olds(j) = s(j);
  r(i) = r(i)*u(i)/sum(j, r(i)*a0(i,j)*x(j)*s(j));
  s(j) = s(j)*v(j)/sum(i, r(i)*a0(i,j)*x(j)*s(j));
  maxdelta = max(smax(i, abs(oldr(i)-r(i))),
                 smax(j, abs(olds(j)-s(j))));
  display maxdelta;
until maxdelta < 0.005;

parameter report(*,i,j) summary report; option report:3:1:2;

report('A0' ,i,j) = a0(i,j);
report('A1' ,i,j) = a1(i,j);
report('RAS',i,j) = r(i)*a0(i,j)*s(j);
*
* --- 2: Entropy formulation   a*ln(a/a0)
*        The RAS procedure gives the solution to the Entropy formulation
*
variables obj    objective value
          a(i,j) estimated A matrix
          z(i,j) estimated Z matrix
positive variable a,z;

equations rowbal(i)  row totals
          colbal(j)  column totals
          defobjent  entropy definition;

rowbal(i)..  sum(j, a(i,j)*x(j)) =e= u(i);
colbal(j)..  sum(i, a(i,j)*x(j)) =e= v(j);

defobjent.. obj =e= sum((i,j), x(j)*a(i,j)*log(a(i,j)/a0(i,j)));

model mEntropy / rowbal,colbal,defobjent /;

* we need to exclude small values to avoid domain violations
a.lo(i,j) = 1e-5;

solve mEntropy us nlp min obj; report('Entropy',i,j) = a.l(i,j);
*
* --- 3: Entropy with flow variable
*        we can balance the flow matrix instead of the A matrix
*
variables zv(i,j) industry flows

equations rowbalz(i) row totals
          colbalz(j) column totals tive
          defobjentz   entropy objective using flows;

rowbalz(i)..  sum(j, zv(i,j)) =e= u(i);
colbalz(j)..  sum(i, zv(i,j)) =e= v(j);

parameter zbar(i,j) reference flow;

zbar(i,j) = a0(i,j)*x(j);
zv.lo(i,j) = 1;

defobjentz.. obj =e= sum((i,j), zv(i,j)*log(zv(i,j)/zbar(i,j)));

model mEntropyz / rowbalz,colbalz,defobjentz /;

* turn off detailed outputs
option limrow=0,limcol=0,solprint=off;

solve mEntropyz us nlp min obj; report('EntropyZ',i,j) = zv.l(i,j)/x(j);
*
* --- 4. absolute deviation formulations result in LPs
*        MAD Mean Absolute Deviations
*        MAPE Mean absolute percentage error
*        Linf Infinity norm
positive variables
   ap(i,j)  positive deviation iation
   an(i,j)  negative deviation
   amax     maximum absilute dev;
equations
   defabs(i,j)  absolute definition
   defmaxp(i,j) max positive
   defmaxn(i,j) max neagtive
   defmad       MAD definition
   defmade      Mean absolute percentage error
   deflinf      Infinity norm;

defabs(i,j)..  a(i,j) - a0(i,j) =e= ap(i,j) - an(i,j);
defmaxp(i,j).. a(i,j) - a0(i,j) =l=  amax;
defmaxn(i,j).. a(i,j) - a0(i,j) =g= -amax;

defmad..  obj =e=   1/sqr(card(i))*sum((i,j), ap(i,j) + an(i,j));
defmade.. obj =e= 100/sqr(card(i))*sum((i,j),(ap(i,j) + an(i,j))/a0(i,j));
defLinf.. obj =e=                  amax;

models mMAD  / rowbal,colbal,defabs,defmad /
       mMADE / rowbal,colbal,defabs,defmade /
       mLinf / rowbal,colbal,defmaxp,defmaxn,deflinf /;

solve mMAD  us lp min obj; report('MAD' ,i,j) = a.l(i,j);
solve mMADe us lp min obj; report('MADE',i,j) = a.l(i,j);
solve mLinf us lp min obj; report('Linf',i,j) = a.l(i,j);
*
* --- 5. Squared Deviations can be solved with powerful QP codes
*        SD     squared deviations
*        RSD    relative squared deviations
equations defsd,defrsd;

defsd..  obj =e= sum((i,j), sqr(a(i,j) + a0(i,j)));
defrsd.. obj =e= sum((i,j), sqr(a(i,j) + a0(i,j))/a0(i,j));

models mSD  / rowbal,colbal,defsd /
       mRSD / rowbal,colbal,defrsd /;

solve mSD  us qcp min obj; report('SD'  ,i,j) = a.l(i,j);
solve mRSD us qcp min obj; report('RSD' ,i,j) = a.l(i,j);

display report;

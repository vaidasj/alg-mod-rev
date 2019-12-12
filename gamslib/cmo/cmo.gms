option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Financial Optimization: Financial Engineering (CMO,SEQ=114)

$Ontext

   Collateralized Mortgage Obligations (CMO) are used to restructure
   the cashflows from underlying mortgage collateral into a set of
   high quality bonds with different maturities. In the following
   mixed-integer programming it is used to restructure a mortgage
   pool into six normal tranches and one zero tranche.

   The model is written in a general form to allow experimentation
   with different periodicity. The following version is annual.


Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization
Models: Risk Management. In Zenios, S A, Ed, Financial Optimization.
Cambridge University Press, New York, NY, 1993.

$Offtext

Sets
  i            tranches            / n1*n6, m /
  n(i)         normal tranches     / n1*n6 /
  m(i)         m tranches          / m    /
  tp           time periods        / 0*10 /
  ts(tp)       settlement date     / 0    /
  t(tp)        payment periods     / 1*10 /
  tl(tp)       last payment        /   10 /
  zpos(i,tp)   possible payment periods by tranche;

Alias (i,j), (tp, tau) ;

* note: all rates are monthly rates x 12.  for aggregation we need to
*       compute equivalent rates.
*
*       (1+r/12)**12 == (1+rd)**d

Scalars
  cg       collateral annual gross coupon        / .10 /
  nom      nominal value of collateral           / 100 /
  s        servicing rate                        /.005 /
  psa      pricing speed                         / 115 /
  d        periodicity                           /   1 /
  age      age of the collateral in years
  minn     minimum number of normal tranches     /   3 /
  minm     minimum number of m tranches          /   1 /;

Table tranches(*,*)   tranche data (annual coupon and yield)

           coupon     yield     low-wal    up-wal

  n1        .085       .099      1.00       1.24
  n2        .085       .0999     2.00       2.44
  n3        .085       .0999     3.00       3.44
  n4        .0875      .1006     4.00       4.44
  n5        .0875      .1009     5.00       5.65
  n6        .0875      .1017     7.00       7.94
  n7        .0875      .1018    10.00      10.94
  n8        .0875      .1025    15.00      20.00
  m         .0995      .105
  r                    .1285 ;

Parameters
  po(tp)       outstanding collateral principal at zero prepayment
  a            zero prepayment annuity
  bv(tp)       temporary factor for bvf calculation
  bvfac(tp)    temporary factor for bvf calculation - rev sum
  bvf(tp)      bond value factor
  pe(tp)       expected outstanding collateral principal
  b(tp)        prepayment rate
  cflow(tp)    expected collateral payments
  prin(tp)     structuring principal payments from collateral
  sump         sum of prin
  cd           periodic gross coupon
  sd           periodic servicing rate
  coupon(i)    periodic coupon by tranche
  yield(i)     periodic yield by tranche
  yr           periodic residual yield
  wallo(i)     lower weighted average life in periodicity
  walup(i)     upper weighted average life in periodicity
  bign         big number
  smalln       small number
  cmax         maximum cmo coupon
  tmax         term to maturity of collateral
  rev(tp)      reverse order addresses
  psum(tp)     sum of principal payments on collateral till tp
  tpsum(tp)    sum of time principal payment products
  walp(tp)     wal on principal payments from collateral ;


  rev(tp) = card(tp) - 2*ord(tp) + 1 ;
  tmax    = card(t) ;
  age  = (360 - tmax*12/d)/12;
  b(t) = 0.06*(psa/100)*min((ord(t)+age*d)/(d*2.5),1) ;
  cd   = (1+cg/12)**(12/d)-1 ;
  sd   = (1+s/12)**(12/d)-1 ;
  yr   = (1 + tranches("r","yield")/12)**(12/d)-1 ;
  coupon(i) = (1+tranches(i,"coupon")/12)**(12/d)-1;
  yield(i)  = (1+tranches(i,"yield")/12)**(12/d)-1 ;

  wallo(n) = tranches(n,"low-wal")*d ;
  walup(n) = tranches(n,"up-wal")*d ;

  cmax = smax(i, coupon(i));

  a = nom*cd/(1 - power(1+cd,-tmax)) ;
  po(tp) = nom*(1 - power(1+cd,ord(tp)-1-tmax))/(1 - power(1+cd,-tmax));
  bv(tl) = 0;
  Loop(tp,
     bv(tp+(rev(tp)-1)) = (bv(tp+rev(tp))+(a-sd*po(tp+(rev(tp)-1))))/(1+cmax) );

  bvf(tp)$po(tp) = min(bv(tp)/po(tp),1) ;
  bvf(tl) = 1;

  pe(ts) = nom ;
  Loop(t(tp),
     pe(tp) = pe(tp-1)*(1-b(tp))**(1/d)*po(tp)/po(tp-1)) ;

  cflow(t(tp)) = (1 + cd - sd)*pe(tp-1) - pe(tp) ;
  prin(t(tp))  = pe(tp-1)*bvf(tp-1) - pe(tp)*bvf(tp) ;
  sump = sum(tp, prin(tp));

  walp(ts)  = 0   ;
  tpsum(ts) = 0 ;
  psum(ts)  = 0 ;
  Loop(t(tp),
     psum(tp) = psum(tp-1) + prin(tp) ;
     tpsum(tp) = tpsum(tp-1) + (ord(tp)-1)*prin(tp)  );
  walp(t) = tpsum(t)/psum(t) ;

  zpos(i,tp)  = yes ;
  zpos(n,tp)$(walp(tp) gt walup(n)) = no ;


Option age:6, tmax:6, cd:6, sd:6, cmax:6,a:6 ;
Display age, tmax, cd, sd, cmax, a ;
Display po, cflow, pe, bv, bvf, prin, walp, zpos ;

  bign   = sump*.7;
  smalln = sump*.03;



Variables
  x(i,tp)     outstanding principal in each tranche
  p(i,tp)     principal payments on tranches
  c(i,tp)     cashflow in each tranche
  r(tp)       residual payments
  tpp(i)      product of time and principal payment
  z(i,tp)     tranche utilization variable (1=usage)
  y(i,tp)     upper triangular structure
  tin(i)      tranche in the structure
  pv          def pv tranches
  pvres       def pv residuals
  proceeds    gross proceeds ;

Positive Variables x, c, r, y ;
Binary Variables z, tin ;

Equations
  obj               objective function
  defpv             def pv tranches
  defpvres          def pv residuals
  pdef(i,tp)        definition of principal payments
  cdef(i,tp)        cashflow accounting
  retiren1(tp)      retirement of normal tranches
  retire(i,tp)      retirement of tranches
  retirem(m,tp)     retirement of m tranche
  retirem1(m,tp)    retirement of m tranche
  cbal(tp)          cashflow balance
  tppdef(i)         definition of tpp
  lowal(n)          lower bound on weighted average life
  upwal(n)          upper bound on weighted average life
  seq1(tp)          sequencing constraint 1
  seq2(i,tp)        sequencing constraint 2
  ydef(i,tp)        definition of y
  tindef1(i)        tranche in definition
  tindef2(i)        tranche in definition
  mcon              constraint on number of m tranches
  ncon              constraint on number of tranches ;



obj..       proceeds =e= sum(i, pv(i)) + pvres;

defpv(i)..  pv(i) =e= sum(zpos(i,t), c(i,t)*(1+yield(i))**(-ord(t))) ;

defpvres..  pvres =e= sum(t, r(t)*(1+yr)**(-ord(t))) ;

pdef(zpos(i,t(tp)))..  p(i,tp) =e= x(i,tp-1) - x(i,tp) ;

cdef(zpos(i,t(tp)))..  c(i,tp) =e= coupon(i)*x(i,tp-1) + p(i,tp) ;

retiren1(t(tp))..  sum(zpos(n,tp), p(n,tp)) =e= prin(tp)
                                              + sum(m, x(m,tp-1)*coupon(m) - c(m,tp)) ;

retire(zpos(n,t)).. p(n,t) =l= cflow(t)*z(n,t) ;

retirem(m,t)..  c(m,t) =l= cflow(t)*z(m,t) ;

retirem1(m,t).. p(m,t) =l= prin(t)*z(m,t) ;

cbal(t)..       sum(zpos(i,t), c(i,t)) + r(t) =e= cflow(t) ;

tppdef(n)..     tpp(n) =e= sum(zpos(n,t), ord(t)*p(n,t)) ;

lowal(n)..      wallo(n)*sum(ts, x(n,ts)) =l= tpp(n) ;

upwal(n)..      walup(n)*sum(ts, x(n,ts)) =g= tpp(n) ;

seq1(t)..       sum(zpos(i,t), z(i,t)) =e= 1 ;

seq2(zpos(i,t)).. y(i,t) =g= y(i,t+1) ;

ydef(zpos(i,t)).. y(i,t) =e= y(i-1,t) + z(i,t) ;

tindef1(i)..   sum(ts, x(i,ts)) =l= tin(i)*bign ;

tindef2(i)..   sum(ts, x(i,ts)) =g= tin(i)*smalln ;

ncon..         sum(n, tin(n)) =g= minn ;

mcon..         sum(m, tin(m)) =g= minm ;



Model cmo structuring model / all /;

p.lo(n,tp) = 0 ;

x.fx(i,tl) = 0 ;
x.fx(i,t)$(not zpos(i,t+1)) = 0 ;
z.fx(i,tp)$(not zpos(i,tp)) = 0 ;
z.fx(m,tp)$(not sum(n, zpos(n,tp))) = 1 ;
Option optcr = 0.001 ;


Parameter xx(tp,i)   principals
          zs(t,i)    binary time increments
          cs(t,i)    cashflows ;

Solve cmo maximizing proceeds using mip ;

xx(tp,i) = x.l(i,tp) ;
zs(t,i)  = z.l(i,t) ;
cs(t,i)  = c.l(i,t) ;
Display zs, xx, cs, r.l ;

Parameter report;
report(t,n)              = z.l(n,t);
report("value",i)        = sum(ts, x.l(i,ts));
report("avl",n)$report("value",n) = tpp.l(n)/report("value",n)/d;
report("pvalue",i)       = pv.l(i);
report("pvalue","resid") = pvres.l;
report("pvalue","total") = proceeds.l;
Display report;

option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Financial Optimization: Risk Management (WORST,SEQ=111)

$Ontext

   The need for analyzing option portfolios arises because risk/return
   tradeoffs grow increasingly more complex as more options are included
   in a portfolio.  This model evaluates the worst-case scenario for
   an option portfolio.


Dahl, H, Meeraus, A, and Zenios, S A, Some Financial Optimization
Models: Risk Management. In Zenios, S A, Ed, Financial Optimization.
Cambridge University Press, New York, NY, 1993.

$Offtext

Set  t  expiration date           / jun, oct, jan    /
     i  underlying issue          / 9000011, 9020063 /
     j  options                   / 1*5 / ;


Table  tdata(t,*)  time related data

         term      r0       rmax      rmin     qmax     qmin

jun    0.09167   0.0697   0.08570   0.05245   0.0788   0.0388
oct    0.33889   0.0790   0.09500   0.06175   0.0768   0.0368
jan    0.58889   0.0779   0.09390   0.06190   0.0768   0.0368 ;

* notation:
*     term    time in years to maturing
*     r0      current estimated risk free rate
*     rmax    maximum risk free rate
*     rmin    minimum risk free rate
*     qmax    maximum volatility move
*     qmin    minimum volatility move


Table  f0(i,t)    adjusted spot price

               jun        oct        jan
 9000011      95.54      93.27      91.03
 9020063      95.54      93.27      91.03 ;


Acronym  future, call, puto;

Table pdata(i,t,j,*)    portfolio data

                     type     strike       nom      price

 9000011.jun.1       future               -35000     96.60
 9000011.oct.1       future                15000     96.60

 9020063.jun.1       future                74000     96.15
 9020063.oct.1       future                20000     95.80
 9020063.oct.2       call        95       -30000      3.00
 9020063.oct.3       call        97       -30000      1.50
 9020063.oct.4       puto        95         5000      0.25
 9020063.oct.5       puto        97        15000      1.20
 9020063.jan.1       future              -290000     95.80
 9020063.jan.2       call        95        25000      0.90
 9020063.jan.3       call        97       -50000      0.90
 9020063.jan.4       call        99        25000      0.90
 9020063.jan.5       puto        99        50000      0.90 ;

* notation:
*     type      type of instrument  (futures, call option, put option)
*     strike    strike price for call and put options
*     nom       nominal units of issue (ref. parameters x, y, and z)
*     price     price of futures or options premium


Variables
    pval         portfolio objective function value
    d1(i,t,j)    black d1
    d2(i,t,j)    black d2;

Positive Variables
    f(i,t)       futures price
    c(i,j,t)     call price
    p(i,j,t)     put price
    r(t)         risk free rate
    q(t)         volatility ;

    r.lo(t) = tdata(t,"rmin") ;
    r.up(t) = tdata(t,"rmax") ;
    q.lo(t) = tdata(t,"qmin") ;
    q.up(t) = tdata(t,"qmax") ;

    f.lo(i,t)    = .001 ;

    f.l(i,t) = f0(i,t) * exp(tdata(t,"r0")*tdata(t,"term")) ;
    r.l(t)   = (r.lo(t) + r.up(t))/2 ;
    q.l(t)   = (q.lo(t) + q.up(t))/2 ;

Equations
    tpv             total portfolio value
    futval(i,t,j)   futures value
    callval(i,t,j)  call value
    putval(i,t,j)   put value
    dd1(i,t,j)      d1 in black model
    dd2(i,t,j)      d2 in black model;


tpv..    pval =e= sum((i,t,j)$pdata(i,t,j,"nom"),
         (f(i,t) - pdata(i,t,j,"price")
                   * pdata(i,t,j,"nom"))$(pdata(i,t,j,"type") eq future)
       + (c(i,j,t) * pdata(i,t,j,"nom"))$(pdata(i,t,j,"type") eq call)
       + (p(i,j,t) * pdata(i,t,j,"nom"))$(pdata(i,t,j,"type") eq puto));



futval(i,t,j)$(pdata(i,t,j,"type") eq future)..

         f(i,t)  =e=  f0(i,t) * exp(r(t)*tdata(t,"term")) ;



callval(i,t,j)$(pdata(i,t,j,"type") eq call)..

         c(i,j,t)  =e=  exp(-r(t)*tdata(t,"term")) *
                         (f(i,t)*errorf(d1(i,t,j))
                          - pdata(i,t,j,"strike")*errorf(d2(i,t,j))) ;



putval(i,t,j)$(pdata(i,t,j,"type") eq puto)..

         p(i,j,t)  =e=  exp(-r(t)*tdata(t,"term")) *
                         (pdata(i,t,j,"strike")*errorf(-d2(i,t,j))
                          - f(i,t)*errorf(-d1(i,t,j))) ;



dd1(i,t,j)$pdata(i,t,j,"strike")..

        d1(i,t,j)  =e=  ( log(f(i,t)/pdata(i,t,j,"strike"))
                         + 0.5*sqr(q(t))*tdata(t,"term"))
                           / ( q(t)*sqrt(tdata(t,"term")) ) ;



dd2(i,t,j)$pdata(i,t,j,"strike")..

        d2(i,t,j)  =e=  d1(i,t,j) - q(t)*sqrt(tdata(t,"term")) ;



Model riskmod / all /;

* worst case
Solve riskmod using nlp minimizing pval;

* best case
Solve riskmod using nlp maximizing pval;


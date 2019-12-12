option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title A Dynamic model of OPEC Trade and Production  (OTPOP,SEQ=47)

$Ontext

   This model was used in 1974 by the World Bank for a background
   study for the energy task force. It was used to analyze output policies
   for OPEC. At the time the study was carried out no full optimization
   was attempted.


Blitzer, C, Meeraus, A, and Stoutjesdijk, A, A Dynamic model of OPEC Trade
and Production. Journal of Development Economics, 2 (1975), 318-335.

$Offtext

 Sets  tt     total time horizon  / 1965*1990 /
       th(tt) historical years    / 1965*1974 /
       t(tt)  model horizon       / 1974*1990 /
       tp(tt) projection years    / 1975*1990 /
       n      memory (years)      / 1*3 /

 Parameters  db(t)  demand scaling constant
             xb(t)  opec production capacity
             rd(t)  absorptive capacity
             del(t) foreign assets accumulation
             alpha(n)  weights for ph  /  1  .5, 2  .3,  3  .2 /
             phis(tt)  historical prices ($ bbl) / 1965*1971 3.5, 1972 4.0, 1973 7.0, 1974 10.0 /
             y(tt)     value of year
             xtr(t)    x target
             ptr(t)    p target

 Scalars  a    price elasticity of demand     / 0 /
          b    non-opec price elasticity      / .2 /
          g    long-run demand growth         / .04 /
          r    real rate of return            / .03 /
          gr   growth of absorptive capacity  / .07 /
          c    production and delivery cost   / .25 /
          l    investment lag                 / 4 /
          v    terminal discounting             / .25 /
          ph   alternative investment trigger ($ per bbl)   / 3.0 /
          pb   all new energy from alternatives ($ per bbl) / 9.0 /

          xb74 opec production capacity  (mill bpd)  / 32.25 /
          x74  opec production           (mill bpd)  / 29.4  /
          d74  world energy demand       (mill bpd)  / 88.2  /
          db74 demand scaling constant
          rd74 absorptive capacity in year 1974 / 20 /
          con  shift parameter constant;

 db74  = d74*phis("1974")**a;
 db(t) = db74*(1+g)**(ord(t)-1);
 con   = g/pb**b/(pb-ph);
 rd(t) = rd74*(1+gr)**(ord(t)-1);
 del(t) = (1+r)**(card(t)-ord(t));
 y(tt) = 1964 + ord(tt);
 xb(t) = xb74 + 3.0*min(y(t)-1974,6) + .9*max(y(t)-1980,0);

 xtr(t) = min(xb(t),x74*1.02**(ord(t)-1));
 ptr(t) = 10*1.02**(ord(t)-1);

 Display db74, db, rd, del, con, y, xb, xtr, ptr;

$Stitle mdel definition

 Variables  x(tt)   sales of opec oil    (mill bpd)
            d(tt)   demand for energy    (mill bpd)
            as(tt)  shift parameter
            p(tt)   price of energy          ($ per bbl)
            pd(tt)  expected price of energy ($ per bbl)
            k       final foreign assets     (bill $)
            z       value of oil in ground   (bill $)
            xdev    output deviation
            pdev    price deviation
            pi      criterion

 Positive Variable x;

 Equations  dem(t)  energy demand        (mill bpd)
            sup(t)  opec supply          (mill bpd)
            adef(tt) shift parameter definition
            pdef(tt) expected price definition ($ per bbl)
            kdef    foreign assets       (bill $)
            zdef    nonproduced reserves (bill $)
            xtrack  x tracking error definition
            ptrack  p tracking error definition
            obj     criterion definition
            objx    alternate criterion definition;

 dem(t).. d(t) =e= db(t)*p(t)**(-a);

 sup(t).. x(t) =e= d(t) - as(t)*p(t)**b;

 adef(tt)$tp(tt).. as(tt) =e= as(tt-1) + con*d(tt-1)*(pd(tt-l)-ph);

 pdef(tt).. pd(tt) =e= sum(n, alpha(n)*p(tt-(ord(n)-1)));

 kdef.. k =e= sum(t, del(t)*(.365*(1-c)*p(t)*x(t)-rd(t)));

 zdef.. z =e= v*sum(t, .365*(xb(t)-x(t))*p(t+(card(t)-ord(t))));

 xtrack.. xdev =e= sum(t, sqr(xtr(t)-x(t)));

 ptrack.. pdev =e= sum(t, sqr(ptr(t)-p(t)));

 obj.. pi =e= k + z;

 objx.. pi =e= sum(t, del(t)*(.365*(1-c)*p(t)*x(t)-rd(t)))
             + v*sum(t, .365*(xb(t)-x(t))*p(t+(card(t)-ord(t))));

 Model otpop1 / dem, sup, adef, pdef, kdef, zdef, obj /
       otpop2 / dem, sup, adef, pdef, ptrack /
       otpop3 / dem, sup, adef, pdef, objx / ;

 x.up(t) = xb(t); p.lo(tt) = 1; p.fx(th) = phis(th); x.fx(th) = x74;

 Solve otpop2 minimizing pdev using nlp;

 Solve otpop3 maximizing pi using nlp;

 kdef.m = 1; zdef.m = 1;

 Solve otpop1 maximizing pi using nlp;

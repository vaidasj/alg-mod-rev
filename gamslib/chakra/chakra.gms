option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Optimal Growth Model  (CHAKRA,SEQ=43)

$Ontext

Simple one sector nonlinear optimal growth model


Kendrick, D, and Taylor, L, Numerical methods and Nonlinear Optimizing
models for Economic Planning. In Chenery, H B, Ed, Studies of
Development Planning. Harvard University Press, 1971.

Chakravarty, S, Optimum Savings with a Finite Planning Horizon.
International Economic Review 3 (1962), 338-355.

$Offtext

 Sets  t    extended horizon     / 0*20 /
       tb(t) base period
       tt(t) terminal period ;

 tb(t) = yes$(ord(t)eq 1); tt(t) = yes$(ord(t) eq card(t));
 Display tb,tt;

 Scalars  delt   rate of depreciation       /  .05  /
          beta   exponent on capital        /  .75  /
          a      efficiency parameter
          r      labor force growth rate    /  .025 /
          eta    elasticity                 /  .9   /
          z      technical progress         /  .01  /
          rho    welfare discount           /  .03  /
          y0     initial income             / 4.275 /
          k0     initial capital            / 15.0  /

 Parameters dis(t)    discount factor
            alpha(t)  production function parameter ;

 a = y0/k0**beta;
 dis(t)   = (1+rho)**(1-ord(t))/(1-eta);
 alpha(t) = a*(1+r*(1-beta)+z)**(ord(t)-1);
 Display a, dis, alpha ;

 Variables  c(t)  consumption
            y(t)  income
            k(t)  capital stock
            j     performance index

 Equations  kb(t) capital stock balance
            yd(t) income definition
            jd    performance index definition ;

 jd..  j =e= sum(t, dis(t-1)*c(t-1)**(1-eta));

 yd(t)..  y(t) =e= alpha(t)*k(t)**beta;

 kb(t+1)..  k(t+1) =e= y(t) - c(t) + (1-delt)*k(t);

 y.l(t) = y0*(1.06)**(ord(t)-1);  k.l(t) = (y.l(t)/alpha(t))**(1/beta);
 c.l(t) = y.l(t) + (1-delt)*k.l(t) - k.l(t+1);   display c.l, k.l, y.l;

 k.lo(t) = 1; y.lo(t) = 1; c.lo(t) =1; y.fx(tb) = y.l(tb); y.fx(tt) = y.l(tt);

 Model growth / all /;
 Solve growth maximizing j using nlp;

 Parameter report solution summary ;
  report(t,"k")  = k.l(t); report(t,"y") = y.l(t); report(t,"c") = c.l(t);
  report(t,"s-rate") = (y.l(t)-c.l(t))/y.l(t);
 Display report;


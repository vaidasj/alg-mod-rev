option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Economies of Scale and Investment over Time (WESTMIP,SEQ=58)

$Ontext

   A small four sector model is used to illustrate the importance of
   economies-of-scale in a dynamic context. Detailed attention has been
   paid to the evaluation of terminal savings, capacity and utilization.


Chenery, H B, and Westphal, L E, Economies of Scale and Investment
Over Time. In Chenery, H B, Ed, Structural Change and Development
Policy. Oxford University Press, New York and Oxford, 1979.

$Offtext

 Sets i       sectors                   / finished, intermed, primary, overhead /
      ia(i)   sectors needing aux units / finished, intermed /
      im(i)   import possible           / finished, intermed /
      ie(i)   export possible           / primary /
      n       capacity type             / normal, auxiliary /
      in(i,n) capacity use              / (finished, intermed).(normal,auxiliary), (primary,overhead).normal /
      es(i,n) units with economies of scale
      r       resources                 / foreign, domestic /
      forn(r)                            / foreign /
      dom(r)                            / domestic /

      te      extended time horizon     / base, 1*9, terminal /
      t(te)   time horizon              /       1*9, terminal /
      ti(te)  initial period
      tb(te)  all periods but last
      tl(te)  last or terminal period;

 Alias (i,j);

 ti(te) = yes$(ord(te) eq 1);
 tb(te) = yes$(ord(te) lt card(te));
 tl(te) = not tb(te);
 Display ti,tb,tl;


 Scalars  cmin   minimum annual consumption increase  / 10.6 /
          dmax   debt limit per period                / 75 /
          rho    discount rate                        / .07 /
          vmax   largest plant size                   / 200 /


 Table a(i,j) input output matrix

           finished  intermed  primary  overhead

 finished   1.0
 intermed   -.4       1.0
 primary    -.12      -.48       1.0
 overhead   -.10      -.21       -.35     1.0


 Table u(i,r)  resource use

            foreign  domestic

 finished     .04       -.2
 intermed     .06       -.2
 primary                -.2
 overhead               -.2


 Parameters  rbase(r)   base resources  / foreign  40, domestic  82.3 /
             delt(t)    discount factor
             alpha(i)   allocation      / finished  .45, intermed  .32, primary  .04, overhead  .19 /
             cbb(i)     base demand     / finished   90, intermed   75, primary 11.5, overhead  50  /
             kb(i,n)    base capacity   / finished.(normal,auxiliary)   50, intermed.(normal,auxiliary)   75
                                          primary.normal               160, overhead.normal              126.7 /


 Table inv(i,n,*,r)  investment cost data

                    fixed.foreign  fixed.domestic   prop.foreign  prop.domestic
 finished.normal                                        .2            .53
 finished.auxiliary                                     .1            .27
 intermed.normal        19             42               .15           .45
 intermed.auxiliary                                     .05           .15
 primary.normal                                         .6           7
 overhead.normal        57.6          108              1.28          2.4
                                              ;

 es(i,n) = yes$sum(r, inv(i,n,"fixed",r) gt 0);
 delt(t) = (1+rho)**(-ord(t));
 Display es,delt;

 Scalar dft1  discount factor: terminal + 1 to infinity
        dft3  discount factor: terminal + 3 to infinity
        dft8  discount factor: terminal + 8 to infinity;

 dft1 = (1/(1+rho))**card(t)/(1-1/(1+rho));
 dft3 = (1/(1+rho))**(card(t)+2)/(1-1/(1+rho));
 dft8 = (1/(1+rho))**(card(t)+7)/(1-1/(1+rho));

 Display dft1, dft3, dft8;

* solve square system with CNS solver
 Equations  mbone(i)   material balance for terminal model;
 Variables  xone(i)    local production required for one unit of consumption;
 Model      one        terminal model one / mbone /;

 mbone(i)..  sum(j, a(i,j)*xone(j)) =e= alpha(i);

 Solve one using cns;

 Parameters aic(i,n,r)  average investment cost for size clev
            clev        average capacity use
            ar(r)       average resource use for size clev;

 clev  = 265;
 aic(i,n,r)$in(i,n) = inv(i,n,"fixed",r)/(clev*xone.l(i)) + inv(i,n,"prop",r);
 ar(r) = sum((i,n)$in(i,n), aic(i,n,r)*xone.l(i));
 Display clev,aic,ar;

$Stitle model definition

 Variables  x(te,i)     production
            m(te,i)     imports
            e(te,i)     exports
            v(te,i,n)   capacity expansion
            f(te,i,n)   fixed charge variable
            k(te,i,n)   capacity stock
            ke3(i,n)    excess capacity: during first five post terminal years
            ke8(i,n)    excess capacity: during second five post terminal years
            c(t)        consumption increment
            d(te)       level of debt or borrowing
            ufe(te)     unused foreign exchange
            ms(te)      foreign exchange into domestic
            vr          terminal savings in terms of unit consumption
            vc3         terminal excess capacity value 3
            vc8         terminal excess capacity value 8
            vc          post terminal consumption valuation
            wterm       terminal valuation
            welfare     discounted welfare

 Binary   Variable f
 Positive Variable x, m, e, v, ke3, ke8, ufe, ms, vr, vc3, vc8, vc, c

 Equations  mb(t,i)    material balance
            cc(t,i,n)  capacity constraint
            ecc(i,n)   excess capacity valuation
            cb(te,i,n) capacity balance
            bi(te,i,n) integer constraint
            rb(te,r)   resource balance
            vc38(r)    terminal excess capacity valuation
            clow(t)    increment bounds
            xlow(t)    production bounds
            vcdef(i)   utilized capacity valuation
            term       terminal value definition
            obj        objective definition;
$Eject

 mb(t,i)..  sum(j, a(i,j)*x(t,j)) + m(t,i)$im(i) =e= e(t,i)$ie(i) + alpha(i)*c(t) + cbb(i);

 cc(t,i,n)$in(i,n).. x(t,i) =l= k(t,i,n) ;

 ecc(i,n)$in(i,n)..  ke3(i,n) + ke8(i,n) =e= k("terminal",i,n) - x("terminal",i);

 cb(te-1,i,n)$in(i,n).. k(te,i,n) =e= k(te-1,i,n) + v(te-1,i,n);

 bi(te+1,i,n)$es(i,n).. v(te,i,n) =l= vmax*f(te,i,n);

 rb(te,r)..  sum(i, u(i,r)*x(te,i) + (m(te,i)$im(i) - e(te,i)$ie(i))$forn(r) )$t(te)
           + sum((i,n)$in(i,n), inv(i,n,"fixed",r)*f(te,i,n) + inv(i,n,"prop",r)*v(te,i,n) )$tb(te)
           + (1+rho)*d(te-1) - d(te)$tb(te) + ms(te)$forn(r) - .8*ms(te)$dom(r)
           + (ufe(te)$tb(te) - ufe(te-1))$forn(r) + ar(r)*vr$tl(te) =l= rbase(r)$ti(te);

 vc38(r)..   sum((i,n)$in(i,n), aic(i,n,r)*(ke3(i,n) + ke8(i,n)) ) =g= ar(r)*(vc3 + vc8);

 clow(t+1).. c(t+1) =g= cmin + c(t);

 xlow(t+1).. x(t+1,"primary") =g= x(t,"primary");

 vcdef(i)..  sum(j, a(i,j)*(x("terminal",j) - kb(j,"normal")) ) =g= alpha(i)*vc;

 term..      wterm =e= dft1*vr + dft3*vc3 + dft8*vc8 + dft1*vc ;

 obj..       welfare =e= sum(t, delt(t)*c(t)) + wterm;


 Model westmip  / mb, cc, ecc, cb, bi, rb, vc38, clow, xlow, vcdef, term, obj /;

 d.up(te) = dmax;
 k.fx(ti,i,n) = kb(i,n);
 ke3.up(i,n)  = 5*cmin*xone.l(i);

* this is a difficult mip problem and we set a very sloppy
* termination tolerance

 Option optcr=.5;

 Solve westmip maximizing welfare using mip;


 Parameter finsum  summary of financial results;

 finsum(te,"debt-level")  = d.l(te);
 finsum(te,"fxch-local")  = ms.l(te);
 finsum(te,"u-fxch")      = ufe.l(te);

 Display x.l,m.l,e.l,c.l,k.l,v.l,f.l,finsum;


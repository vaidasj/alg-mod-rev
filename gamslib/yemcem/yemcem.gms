option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Y E M E N   Cement model  (YEMCEM,SEQ=51)
$Stitle Set definitions

$Ontext

  A simple model of the cement sector for the Yemen Arab Republic
  can be used to explore expansion plans under various assumptions
  about domestic and world markets and cost structures.


World Bank, Yemen Arab Republic - Manufacturing Industry: Performance,
Policies and Prospectives. Tech. rep., The World Bank, 1982.

$Offtext

 Sets i  plants   / amran, baijil, mafrak /

      j  markets  / sanaa, hodeideh, taizz, ibb, dhamar /

      m  productive units  /

         dry-kiln    dry process kiln and ancillaries
         wet-kiln    wet process kiln and ancillaries
         mills       clinker-gypsum mills storage and packing  /

      ms(m) productive units with economies of scale

      mp(m) productive units without economies of scale

      p  process           /

         dry         dry process clinker production
         wet         wet process clinker production
         grind       clinker grinding                         /

      ca all commodities       /

         limestone               tons
         clay                    tons
         gypsum                  tons
         fuel                    1000*liter
         petrol                  1000*liter
         explosives              kg
         grindparts              kg
         refractory              kg
         bags                    bag
         clinker                 tons
         cement                  tons        /

      c(ca)  commodities for material balance constraints / cement, clinker, fuel   /
      cf(c)  final products                               /  cement /

      ci(c)  imported intermediate products / clinker, fuel   /

      cr(ca) local materials / limestone, clay, gypsum, petrol, explosives, grindparts, refractory, bags /

      t  time periods       / 1983-85, 1986-88, 1989-91, 1992-94 /

      te(t) expansion periods        / 1986-88, 1989-91, 1992-94 /

      s  kiln sizes  / small, medium, large /

 Alias (te,tp)

$Stitle parameters and data modifications

 Parameters pd(cr)  domestic prices (yr per unit)  / limestone   5.0 , clay        2.0
                                                     gypsum     24.6 , petrol   1175.0
                                                     explosives  4.0 , grindparts  3.328
                                                     refractory  4.0 , bags        1.31   /
            pv(ca)  import prices  (yr per ton)
            pe(ca)  export prices  (yr per ton)

            ebu(t)  upper bound on exports (1000 tpy)
            vbu(t)  upper bound on imports (1000 tpy)
            vibu(t) bound on klinker import(1000 tpy) ;

  pv("cement ") = 280 ;
  pv("clinker") = .8*pv("cement") ;
  pv("fuel   ") = 600 ;                  pe(c) = .75*pv(c) ;

  ebu(t) = 1000 ;  vbu(t) = 3000 ;  vibu(t) = na;

  Display pd, pv, pe ;


 Table a(ca,p)    input-output coefficients

                       dry         wet         grind
           limestone   -1.3        -1.3
           clay        -.3         -.3
           gypsum                              -.04
           petrol      -.00147     -.00147
           explosives  -.192       -.192
           grindparts                          -.385
           refractory  -.152       -.152
           bags                                -20.0
           fuel        -.1127      -.1465
           clinker      .96         .96        -.96
           cement                               1.0


 Table b(m,p)      capacity utilization

                       dry         wet         grind
           dry-kiln    1.0
           wet-kiln                1.0
           mills                               1.0


 Table k(m,i)  capacities as of 1982 (1000 tpy)

                       amran       baijil      mafrak
           dry-kiln    500.0
           wet-kiln                320.0
           mills       500.0       320.0

$Eject

 Table inv(m,*)   capital investment data

*  cost   millions yr (1978)
*  size   1000 tpy
*  scale  scale factor  -  cost = constant*size**scale

                         cost           size      scale
        dry-kiln        526.296        500.0       .53
        wet-kiln        447.352        500.0       .56
        mills           105.259        500.0       1.00

 Parameters site(i)   site factor              / amran  1.2, baijil  1.15, mafrak  1.05 /
            size(s)   kiln size (1000 tpy)     / small 500, medium 750, large 1000 /
            klim(i)   limit of total kiln capacity (1000 tpy)
            ts(t,t)   time summation matrix
            midyear(t)
            delta(t)  discount factor

            rc(p)     recurrent cost   (yr per process unit)
            fc(m)     fixed cost (yr per ton) / dry-kiln  55.8, wet-kiln  60 /

   Scalars  sigma  capital recovery factor
            zeta   life of productive units (years)
            rho    discount rate    ;

    ms(m)$(inv(m,"scale") ne 1) = yes;  mp(m) = not ms(m) ;

    inv(ms,s)      = inv(ms,"cost")*(size(s)/inv(ms,"size"))**inv(ms,"scale");
    inv(mp,"prop") = inv(mp,"cost")/inv(mp,"size");

    klim(i) = 2000 ;

    midyear(t) = 1981 + 3*ord(t) ;
    ts(te,tp)$(ord(te) ge ord(tp)) = 1;
    zeta = 30; rho = .1; sigma = rho/(1-(1+rho)**(-zeta));
    delta(t) = (1+rho)**(1982-midyear(t));

    rc(p) = - sum(cr, a(cr,p)*pd(cr));

        Display ms, mp, midyear, ts, sigma, delta, inv, rc;

$Eject

 Set ds   demand scenarios (base year demand and growth rates) / bg-700-06, bg-700-11, bg-900-06, bg-900-11 /

 Parameters dt(ds,t)    total demand for cement (1000 tpy)
            d(j,t,cf)   regional demand for cement (1000 tpy)
            dd(j)       demand distribution  / sanaa 28, hodeideh 27, taizz 20, ibb 12.5, dhamar 12.5 /;

  dt("bg-700-06",t) = 700*1.06**(midyear(t)-1980);
  dt("bg-700-11",t) = 700*1.11**(midyear(t)-1980);
  dt("bg-900-06",t) = 900*1.06**(midyear(t)-1980);
  dt("bg-900-11",t) = 900*1.11**(midyear(t)-1980);

  d(j,t,"cement") = na;

  Display dd,dt;


 Table rd(*,*)   road distances from plants to markets (km)

         sanaa     taizz     hodeideh  dhamar    ibb       port
  amran  48        304       279       146       209       279
  baijil 171       294       60        270       332       60
  mafrak 319       63        213       220       157       213
  port   231       276       5         329       371


 Table f(*,*)  cost increase factors for motor transport

         sanaa     hodeideh  taizz     dhamar    ibb       port
  amran  1.15      1.14      1.16      1.14      1.16      1.14
  baijil 1.14      1.11      1.13      1.13      1.14      1.11
  mafrak 1.16      1.11      1.17      1.17      1.16      1.11
  port   1.14      1.0       1.14      1.16      1.15      1.0


    Parameters  muf(i,j)  cement transport cost (yr per ton)
                muv(j)    import transport cost (yr per ton)
                mui(ci,i) import intermediate transport cost (yr per ton)
                mue(i)    export transport cost (yr per ton)  ;

    muf(i,j) = 30 + .47*f(i,j)*rd(i,j);
    muv(j)   = 30 + .47*f("port",j)*rd("port",j);
    mue(i)   = 30 + .47*f(i,"port")*rd(i,"port");
    mui(ci,i)= 30 + .35*f(i,"port")*rd(i,"port");
    mui("fuel   ",i) = 1.5*mui("clinker",i);

   Display muf, muv, mue, mui;

$Stitle breakeven analysis

 Parameter tpn(i,*) transport protection (yr per ton)
           vc       variable cost of cement production (yr per ton)
           fxc(i,s) fixed cost of cement production    (yr per ton)
           ac(i,s)  average cost of cement production  (yr per ton)
           mbe(i,*) marginal breakeven price (yr per ton)
           abe(i,*) average breakeven price  (yr per ton) ;

  tpn(i,"v-inputs")   = -a("fuel","dry")*mui("fuel",i);
  tpn(i,"plant-gate") = mue(i) - tpn(i,"v-inputs") ;
  tpn(i,j)            = muv(j) - (tpn(i,"v-inputs")+muf(i,j));

  vc = 1.025*(-a("fuel","dry")*pv("fuel") + rc("dry") + rc("grind"));

  fxc(i,s) = 1000*sigma*site(i)*(inv("dry-kiln",s)/size(s)
           + inv("mills","prop")) + 1.025*(fc("dry-kiln")+fc("mills"));
  ac(i,s) = vc + fxc(i,s);

  mbe(i,j)            = vc - tpn(i,j) ;
  mbe(i,"plant-gate") = vc - tpn(i,"plant-gate") ;
  abe(i,j)            = ac(i,"small") - tpn(i,j) ;
  abe(i,"plant-gate") = ac(i,"small") - tpn(i,"plant-gate") ;

 Display tpn, vc, fxc, ac, mbe, abe;

$Stitle  model specification

 Variables z(p,i,t)     process level             (1000 units per year)
           x(c,i,j,t)   shipment of cement        (1000 tpy)
           v(cf,j,t)    imports of cement         (1000 tpy)
           vi(c,i,t)    imports of intermediates  (1000 units per year)
           e(c,i,t)     export of cement          (1000 tpy)
           h(m,i,te)    capacity expansion        (1000 tpy)
           y(m,i,s,te)  binary variable

           phi          total discounted cost
           phikap(t)    capital investment charge (mill yr per year)
           phipsi(t)    recurrent cost            (mill yr per year)
           philam(t)    transport cost            (mill yr per year)
           phipi (t)    import cost               (mill yr per year)
           phieps(t)    export revenue            (mill yr per year)
           phiw  (t)    working capital charge    (mill yr per year) ;

 Positive Variables  z, x, v, vi, e, h;
 Binary Variable y;

 Equations mb(c,i,t)    material balances         (1000 units per year)
           cc(m,i,t)    capacity constraints      (1000 tpy)
           id(m,i,te)   investment definition
           ich(m,i,te)  investment choice
           limit(i)     capacity limit(i)         (1000 tpy)
           mr(cf,j,t)   market requirement        (1000 tpy)
           eb(t)        export limit              (1000 tpy)
           vb(t)        import limit: cement      (1000 tpy)
           vib(t)       import limit: clinker     (1000 tpy)

           obj     total discounted costs
           apsi(t) recurrent cost acct       (mill yr per year)
           akap(t) investment cost acct      (mill yr per year)
           alam(t) transport cost acct       (mill yr per year)
           api (t) import cost acct          (mill yr per year)
           aeps(t) export revenue acct       (mill yr per year)
           aw  (t) working capital acct      (mill yr per year) ;

 mb(c,i,t)..  sum(p, a(c,p)*z(p,i,t)) + vi(c,i,t)$ci(c) =g= (sum(j, x(c,i,j,t)) + e(c,i,t))$cf(c) ;

 cc(m,i,t)..  sum(p, b(m,p)*z(p,i,t)) =l= k(m,i) + sum(tp$ts(t,tp), h(m,i,tp)) ;

 id(ms,i,te).. h(ms,i,te) =e= sum(s, size(s)*y(ms,i,s,te));

 ich(ms,i,te).. sum(s, y(ms,i,s,te)) =l= 1.0 ;

 limit(i)..  sum(ms, k(ms,i) + sum(te, h(ms,i,te))) =l= klim(i) ;

 mr(cf,j,t)..  sum(i, x(cf,i,j,t)) + v(cf,j,t) =g= d(j,t,cf) ;

 eb(t)..  sum((cf,i), e(cf,i,t))    =l= ebu(t) ;

 vb(t)..  sum((cf,j), v(cf,j,t))    =l= vbu(t) ;

 vib(t).. sum(i, vi("clinker",i,t)) =l= vibu(t) ;


 obj..  phi =e= sum(t, delta(t)*( phikap(t) + phipsi(t) + philam(t) + phipi(t) + phiw(t) - phieps(t) )) ;

 apsi(t)..  phipsi(t) =e= .001*( sum((p,i), rc(p)*z(p,i,t))
                        + sum((i,m), fc(m)*( k(m,i) + sum(tp$ts(t,tp), h(m,i,tp))))) ;

 akap(t)..  phikap(t) =e= sigma*sum(tp$ts(t,tp), sum((ms,i,s), site(i)*inv(ms,s)*y(ms,i,s,tp))
                                               + sum((mp,i), site(i)*inv(mp,"prop")*h(mp,i,tp)) ) ;

 alam(t)..  philam(t) =e= .001*( sum(cf, sum((i,j), muf(i,j)*x(cf,i,j,t))
                                       + sum(j, muv(j)*v(cf,j,t))
                                       + sum(i, mue(i)*e(cf,i,t))  )
                               + sum((ci,i), mui(ci,i)*vi(ci,i,t)) ) ;

 aeps(t)..  phieps(t) =e= .001*sum((cf,i), e(cf,i,t)) ;

 api(t)..   phipi(t)  =e= .001*( sum((cf,j), pv(cf)*v(cf,j,t)) + sum((ci,i), pv(ci)*vi(ci,i,t)) ) ;

 aw(t)..  phiw(t) =e= .25*.1*(phipsi(t) + phipi(t));

 Model yemen   yemen cement model  / all /  ;

* definition of scenario number 16:

 d(j,t,"cement") = dt("bg-900-11",t)*dd(j)/100;
 vibu(t) = 0;
 y.fx("dry-kiln","mafrak","small","1986-88") = 1;

 Solve yemen minimizing phi using mip;

     Display z.l, h.l ;

 Parameters xx(i,*,t)   cement shipments (1000 tpy)
            kh(*,t)     total kiln capacity (1000 tpy)
            mcc(i,t,m)  shadow price on capacity - undiscounted
            mmr(j,t)    shadow price on requirements - undiscounted ;

   xx(i,j,t)     = x.l("cement",i,j,t); xx(i,"**total**",t) = sum(j, xx(i,j,t));
   kh(i,t)       = sum(ms, k(ms,i) + sum(tp$ts(t,tp), h.l(ms,i,tp)));
   kh("total",t) = sum(i, kh(i,t));
   mcc(i,t,m)    = cc.m(m,i,t)/delta(t)*1000 ;
   mmr(j,t)      = mr.m("cement",j,t)/delta(t)*1000 ;

     Display xx, kh, mcc, mmr ;

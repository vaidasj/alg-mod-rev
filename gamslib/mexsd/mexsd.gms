option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title MEXICO Steel - Small Dynamic    (MEXSD,SEQ=16)
$Stitle Set Definitions

$Ontext

This model studies the production, distribution, resource extraction
and investment of the Mexican steel and associated mining sector.
Exhaustion of domestic resources and nonlinearities in mining cost
are considered.


Kendrick, D, Meeraus, A, and Alatorre, J, The Planning of Investment
Programs in the Steel Industry. The Johns Hopkins University Press,
Baltimore and London, 1984.

A scanned version of this out-of-print book is accessible at
http://www.gams.com/docs/pdf/steel_investment.pdf

$Offtext

 Set  i     steel plants           / ahmsa      altos hornos - monclova
                                     fundidora  monterrey
                                     sicartsa   lazaro cardenas
                                     hylsa      monterrey
                                     hylsap     puebla
                                     tampico    tampico
                                     coatza     coatzacoalcos /

      im    mines                  / coahuila   coal mining region
                                     ore-north  northern iron-ore mines
                                     ore-south  southern iron-ore mines /

      j     markets                / mexico-df  mexico city
                                     monterrey  monterrey
                                     guadalaja  guadalajara     /

      c     commodities            / pellets    iron ore pellets - tons
                                     coke       tons
                                     nat-gas    natural gas - 1000 n cubic meters
                                     electric   electricity - mwh
                                     scrap      tons
                                     pig-iron   molten pig iron - tons
                                     sponge     sponge iron - tons
                                     steel      tons /

      cf(c) final products         / steel /

      ce(c) export product         / steel /

      ci(c) intermediate products  / sponge /

      cr(c) raw materials          / nat-gas, electric, scrap /

      cm(c) mining products        / coke, pellets /

      cv(c) raw materials imported / coke, pellets /

      p     processes              / pig-iron   pig iron production from pellets
                                     sponge     sponge iron production
                                     steel-oh   steel production in open hearth
                                     steel-el   steel production in electric furnace
                                     steel-bof  steel production in bof
                                     steel-bofs steel production in bof with high scrap /

      m     productive units       / blast-furn blast furnaces
                                     openhearth open hearth furnaces
                                     bof        basic oxygen furnaces
                                     direct-red direct reduction units
                                     elec-arc   electric arc furnaces /

      me(m) expansion units        / blast-furn, bof, direct-red, elec-arc /

      t     time periods           / 1981-83, 1984-86, 1987-89, 1990-92, 1993-95 /

      te(t) expansion periods      / 1984-86, 1987-89, 1990-92, 1993-95 /

      energy(cr)                   / nat-gas, electric /

      q     cost levels            / 1*5 /

      g     investment function segments / 1*4 /

      alias (t,tau),(i,ip),(te,taue);

 Scalar    baseyear   base year             / 1979 /
           theta      years per time period /    3 /
 Parameter midyear(t) period mid-years
           ts(t,tau)  time summation matrix;

 midyear(t) = baseyear + theta*ord(t) ;
 ts(te,taue)$(ord(taue) le ord(te)) = 1 ;

 Display  midyear,ts;

$Stitle technology data

 Table  a(c,p)  input-output coefficients

            pig-iron  sponge  steel-oh  steel-el  steel-bof  steel-bofs

 pellets     -1.58     -1.38
 coke         -.63
 nat-gas                -.38
 electric                                 -.68
 scrap                          -.33                -.12        -.25
 pig-iron     1.0               -.77                -.95      -.82
 sponge                 1.0              -1.09
 steel                          1.0       1.0       1.0       1.0


$Ontext
  two io coefficients were changed according to suggestions by hyls

    nat-gas,sponge   from  -.57 to -.38
    electric,steel-el  from -.58 to -.68

  these figures correspond to summer 1980 hylsap performance
$Offtext

 Table  b(m,p)   capacity utilization

             pig-iron  sponge  steel-oh  steel-el  steel-bof  steel-bofs

 blast-furn     1.0
 openhearth                        1.0
 bof                                                  1.0       1.0
 direct-red               1.0
 elec-arc                                    1.0


 Table  k(m,i)  capacities of productive units (mill tons per year)

             ahmsa  fundidora  sicartsa  hylsa  hylsap

 blast-furn   3.25    1.40        1.10
 openhearth   1.50     .85
 bof          2.07    1.50        1.30
 direct-red                                .98    1.00
 elec-arc                                 1.13     .56

$Maxcol 72

 Table km(cm,im,*)  mining capacity data

                     p-low    p-high    wmax     expo                    p-low : low price              (us$ per ton)
                                                                         p-high: high price             (us$ per ton)
 coke.coahuila        52         100     230      1.3                    wmax  : maximum mine capacity (million tons)
 pellets.ore-north    18.7        38      60      1.3
 pellets.ore-south    18.7        38     115      1.3

$Maxcol 120

 Parameter   wbar(cm,im)   stock of mine products (million tons)
              pw(cm,q,im)   purchase price of mine products (us $ per ton);

   wbar(cm,im) = km(cm,im,"wmax")/card(q);
   pw(cm,q,im)$km(cm,im,"wmax") = km(cm,im,"p-low") + (km(cm,im,"p-high")-km(cm,im,"p-low"))*
                                                      ((ord(q)-1)/(card(q)-1))**km(cm,im,"expo");

 Display wbar,pw;

 Scalar      dt        total demand for final goods in 1979 (million tons)   /  5.2 /
             rse       raw steel equivalence (percent)                       / 40   /
             gd        annual growth rate of demand (percent)                / 10   /

 Parameter   dd(j)     distribution of demand                        / mexico-df .55, monterrey .3, guadalaja .15 /
             d(cf,j,t) demand for steel (mill tpy)
             eu(t)     export bound: upper ;

   d("steel",j,t)      = dt * (1 + rse/100) * dd(j) * (1 + gd/100)**(midyear(t)-baseyear);
   eu(t) = .2;

 Display  d;

$Stitle transportation data

 Table rd(*,*)  rail distances from plants to markets (km)

             mexico-df  monterrey  guadalaja    export

 ahmsa          1204      218        1125          739
 fundidora      1017                 1030          521
 sicartsa        819     1305         704
 hylsa          1017                 1030          521
 hylsap          185     1085         760          315
 tampico         941      521         995
 coatza          900     1756        1100
 import          428      521         300


 Table ri(i,ip)  interplant rail distances (km)

           ahmsa  fundidora  sicartsa  hylsa  hylsap  tampico  coatza

 fundidora   218
 sicartsa   1416    1322
 hylsa       218      10        1327
 hylsap     1300    1159         995    1159
 tampico     739     521        1319     521   1111
 coatza     1850    1756        1638    1756    671     1702


 Table rm(im,i)  rail distances from mines to plants (km)

             ahmsa  fundidora  sicartsa  hylsa  hylsap  tampico  coatza

 coahuila      120     400        1500    400    1420      900     2100
 ore-north     219     563       1613     563    1411     1048     2195
 ore-south    1490    1396               1396    1116     1338     1500

* hercules used as the center of the norhern ore district
* pena colorado used as the center for the southern ore district
* except sicartsa which uses las truchas distances

 Parameter  muf(i,j)  transport cost: final products       (us $ per ton)
            mun(i,ip) transport cost: interplant shipments (us $ per ton)
            mum(im,i) transport cost: mine to plant        (us $ per ton)
            muv(j)    transport cost: imports              (us $ per ton)
            mue(i)    transport cost: exports              (us $ per ton);

        ri(i,ip) = max(ri(i,ip),ri(ip,i));
        muf(i,j) = ( 2.48 + .0084*rd(i,j))       $rd(i,j);
        mun(i,ip)= ( 2.48 + .0084*ri(i,ip))      $ri(i,ip);
        mum(im,i)= ( 2.48 + .0084*rm(im,i))      $rm(im,i);
        muv(j)   = ( 2.48 + .0084*rd("import",j))$rd("import",j);
        mue(i)   = ( 2.48 + .0084*rd(i,"export"))$rd(i,"export");

 Display  muf,mun,mum,muv,mue;

$Stitle investment and price data
$Maxcol 72

 Table inv(me,*)  investment cost table

            hhat   phihat   beta                                         hhat  : economies of scale size (mill tons/yr)
                                                                         phihat: cost of plant of size hhat  (mill us$)
 blast-furn  1.5    250     .6                                           beta  : scale factor: phihat = xx*hhat**beta
 bof         1.5    120     .6
 direct-red   .8    100     .6                                            according to r.j. kuhl, steel times intern
 elec-arc     .5     42     .6                                                                    june 1979

$Maxcol 120

 Parameter site(i)       site factor / (fundidora,hylsa) 1.1, (sicartsa,hylsap,ahmsa) 1, (tampico,coatza) 1.2 /
           omega(me,g,i) plant cost at segment              (million us$)
           sb(me,g)      segment size             (million tons per year)
           zeta          life of productive unit                  (years)
           rho           discount rate
           sigma         capital recovery factor
           delta(t)      discount factor ;

        inv(me,"fixed")    = inv(me,"phihat")*(.5**(inv(me,"beta")-1)-1);

        omega(me,"1",i)    =  inv(me,"fixed")*site(i)    ; sb(me,"1") = 0              ;
        omega(me,"2",i)    =  inv(me,"phihat")*site(i)   ; sb(me,"2") = inv(me,"hhat") ;
        omega(me,"3",i)    =  omega(me,"2",i)*3          ; sb(me,"3") = sb(me,"2")*3   ;
        omega(me,"4",i)    =  omega(me,"2",i)*6*1.25     ; sb(me,"4") = sb(me,"2")*6   ;

        zeta = 20; rho = .1; sigma = rho/(1-(1+rho)**(-zeta));
        delta(t) = (1+rho)**(baseyear-midyear(t));


 Scalar     rlev       resource level                                   /  1 /
            iron       iron production bound (million tons per year)    / 30 /

 Parameter  pd(cr,i,t) domestic prices
            region(i)  locations with energy subsidy                    / (coatza,sicartsa,tampico)  .3 /
            pdb(cr)    base price of domestic materials (pesos per ton) / nat-gas 14, electric 26, scrap 105 /
            pv(c)      import prices                      (us$ per ton) / coke    60, pellets  40, steel 150 /
            pe(ce)     export prices                      (us$ per ton) / steel  140                         / ;

 pd(cr,i,t)        = pdb(cr);
 pd("nat-gas",i,t) = min(128, pdb("nat-gas") + (128-pdb("nat-gas"))/4*(ord(t)-1));
 pd(energy,i,t)    = pd(energy,i,t)*(1-region(i));

 Display  omega,sigma,delta,inv,sb,pd,iron,rlev;

$Stitle model definition

 Variables  z(p,i,t)         process level                                    (mill tpy)
            w(cm,q,im,t)     production of mining products                    (mill tpy)
            x(c,i,j,t)       shipment of final products                       (mill tpy)
            xn(c,i,ip,t)     interplant shipments                             (mill tpy)
            xm(c,im,i,t)     shipment of mining products                      (mill tpy)
            u(c,i,t)         purchase of domestic materials        (mill units per year)
            h(m,i,t)         capacity expansion                               (mill tpy)
            s(me,g,i,t)      investment function segment
            y(me,i,te)       binary variable
            v(cf,j,t)        imports                                          (mill tpy)
            vr(c,i,t)        imports of raw materials                         (mill tpy)
            e(c,i,t)         exports                                          (mill tpy)

            phi              total cost (discounted)                          (mill us$)
            phikap(t)        capital cost                                     (mill us$)
            phipsi(t)        raw material cost                                (mill us$)
            philam(t)        transport cost                                   (mill us$)
            phipi(t)         import cost                                      (mill us$)
            phieps(t)        export revenue                                   (mill us$)

 Positive Variables z,w,x,xn,xm,u,h,s,v,vr,e; binary variable y;

 Equations  mb(c,i,t)        material balance: steel plants                   (mill tpy)
            mbm(cm,im,t)     material balance: mines                          (mill tpy)
            cc(m,i,t)        capacity constraint: steel plants                (mill tpy)
            ccm(cm,q,im)     capacity constraint: mines                       (mill tpy)
            ih(me,i,te)      definition of h
            ic(me,i,te)      convex combination and 0-1 constr
            mr(cf,j,t)       market requirements                              (mill tpy)
            eb(t)            export bounds                                    (mill tpy)
            zb(i,t)          limit on steel production                        (mill tpy)

            obj              accounting: total discounted cost                (mill us$)
            akap(t)          accounting: investment cost charges              (mill us$)
            apsi(t)          accounting: raw materials                        (mill us$)
            alam(t)          accounting: transport                            (mill us$)
            api(t)           accounting: import cost                          (mill us$)
            aeps(t)          accounting: export revenue                       (mill us$);
$Eject
$Double

 mb(c,i,t)..    sum(p, a(c,p)*z(p,i,t)) + u(c,i,t)$cr(c) + sum(im, xm(c,im,i,t))$cm(c) + vr(c,i,t)$cv(c)
              + sum(ip, xn(c,ip,i,t))$ci(c) =g= sum(ip, xn(c,i,ip,t))$ci(c) + sum(j, x(c,i,j,t))$cf(c) + e(c,i,t)$ce(c);

 mbm(cm,im,t).. sum(q, w(cm,q,im,t)) =g= sum(i, xm(cm,im,i,t));

 cc(m,i,t)..    sum(p, b(m,p)*z(p,i,t)) =l= k(m,i) + sum(tau$ts(t,tau), h(m,i,tau)$me(m));

 ccm(cm,q,im).. sum(t, w(cm,q,im,t)) =l= rlev*wbar(cm,im)/theta;

 ih(me,i,te)..  h(me,i,te) =e= sum(g, sb(me,g)*s(me,g,i,te));

 ic(me,i,te)..  y(me,i,te) =e= sum(g, s(me,g,i,te));

 mr(cf,j,t)..   sum(i, x(cf,i,j,t)) + v(cf,j,t) =g= d(cf,j,t);

 eb(t)..        sum((ce,i), e(ce,i,t)) =l= eu(t);


 zb(i,t)..      z("pig-iron",i,t) + z("sponge",i,t) =l= iron;

 obj..          phi =e= sum(t, delta(t)*theta*(phikap(t) + phipsi(t) + philam(t) + phipi(t) - phieps(t)));

 akap(t)..      phikap(t) =e= sigma*sum(tau$ts(t,tau), sum((me,g,i), omega(me,g,i)*s(me,g,i,tau)));

 apsi(t)..      phipsi(t) =e= sum((cr,i), pd(cr,i,t)*u(cr,i,t)) + sum((cm,q,im), pw(cm,q,im)*w(cm,q,im,t));

 alam(t)..      philam(t) =e= sum(cf, sum((i,j), muf(i,j)*x(cf,i,j,t)) + sum(j, muv(j)*v(cf,j,t)))
                            + sum((cm,im,i), mum(im,i)*xm(cm,im,i,t)) + sum((ce,i), mue(i)*e(ce,i,t))
                            + sum((ci,i,ip), mun(i,ip)*xn(ci,i,ip,t)) + sum((cv,i), mue(i)*vr(cv,i,t));

 api(t)..       phipi(t) =e= sum((cf,j), pv(cf)*v(cf,j,t)) + sum((cv,i), pv(cv)*vr(cv,i,t));

 aeps(t)..      phieps(t) =e= sum((ce,i), pe(ce)*e(ce,i,t));

 Model mexsd small dynamic steel problem / all / ;

 Solve mexsd minimizing phi using mip;


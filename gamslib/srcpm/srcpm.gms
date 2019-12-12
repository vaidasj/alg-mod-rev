option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Single-Region Contingency Planning Model (SRCPM,SEQ=52)

$Ontext

   A Contingency Planning Model (CPM) of international petroleum
   production, transportation and refining had been developed jointly
   at Stanford University, Sobotka and Company, and the US Department
   of Energy. The model is designed to examine the effects of various
   contingencies (crude supply interruptions) and policies (e.g. ban
   of Alaskan exports). The following representation is the single-
   region version discussed in Chapter 3.


Manne, A S, Nelson, C R, So, K C, and Weyant, J P, CPM: A Contingency
Planning Model of the International Oil Market, International Energy
Program Report. Tech. rep., Stanford University, 1982.

$Offtext

 Sets  c      all commodities   /

              ls-light      low sulfur  light  crude
              ls-medium     low sulfur  medium crude
              ls-heavy      low sulfur  heavy  crude
              hs-light      high sulfur  light  crude
              hs-medium     high sulfur  medium crude
              hs-heavy      high sulfur  heavy  crude
              ngl           natural gas liquids
              ls-feed       low sulfur feed
              hs-feed       high sulfur feed
              gasoline      motor gasoline
              distillat     heating oil + diesel + kerosene
              naphtha       primary naphtha lpg + others
              ls-resid      low sulfur fuel oil + lubes and waxes
              hs-resid      high sulfur fuel oil + asphalt
                                             /
       cr(c)  crude types / ls-light, ls-medium, ls-heavy, hs-light, hs-medium, hs-heavy, ngl /

       ci(c)  intermediate products / ls-feed, hs-feed /

       cf(c)  final products   / gasoline, distillat, naphtha, ls-resid, hs-resid /

       p      processes   /

              d-lsl        distillation of low sulfur light crude
              d-lsm        distillation of low sulfur medium crude
              d-lsh        distillation of low sulfur heavy crude
              d-hsl        distillation of high sulfur light crude
              d-hsm        distillation of high sulfur medium crude
              d-hsh        distillation of high sulfur heavy crude
              ngl          natural gas liquids processing
              reform       reforming
              ls-hc        low sulfur heavy ends conversion
              hs-hc        high sulfur heavy ends conversion
              desulf       desulferization
                                           /
       pt     transfer processes   /

              t-gas        transfer of gasoline to distillate
              t-nap        transfer of naphtha to distillate
              t-lsr        transfer of low sulfur resid
              t-hsr        transfer of high sulfur resid
                                /
$Eject

       m      productive units  /

              p-still      primary distillation
              ngl          ngl facilities
              reformer
              he-conv      heavy ends converter
              desulf       desulfurizer
                                  /
       l      cost level of facilities  / b  base or low cost, m marginal or high cost /

 Table   a(c,l,p)   input output coefficients

                 d-lsl  d-lsm  d-lsh  d-hsl  d-hsm  d-hsh  ngl  reform  ls-hc  hs-hc  desulf
 ls-light.(b,m)   -1.0
 ls-medium.(b,m)        -1.0
 ls-heavy.(b,m)                -1.0
 hs-light.(b,m)                       -1.0
 hs-medium.(b,m)                             -1.0
 hs-heavy.(b,m)                                     -1.0
 ngl.(b,m)                                                -1.0

 ls-feed.b       .35    .50    .68                                     -1.0            .99
 ls-feed.m       .34    .49    .67                                     -1.0            .99
 hs-feed.b                           .38    .48    .66                        -1.0   -1.0
 hs-feed.m                           .38    .47    .65                        -1.0   -1.0
 gasoline.b                                               .20   .96      .67    .61
 gasoline.m                                               .20   .96      .36    .25
 distillat.b     .28    .25    .20    .26    .23    .18                  .07    .02
 distillat.m     .28    .25    .20    .26    .23    .18                  .18    .10
 naphtha.b       .35    .23    .10    .33    .27    .14   .80   -1.0     .04    .06
 naphtha.m       .35    .23    .10    .33    .27    .14   .80   -1.0     .03    .04
 ls-resid.b                                                              .23
 ls-resid.m                                                              .42
 hs-resid.b                                                                     .30
 hs-resid.m                                                                     .60

 Table  tr(c,pt)  transfer processes

                t-gas  t-nap  t-lsr  t-hsr
 gasoline       -1.0
 distillat       1.0     .93
 naphtha               -1.0
 ls-feed                      -1.0
 hs-feed                             -1.0
 ls-resid                      1.0
 hs-resid                             1.0

 Parameter loss(p,l) process losses ;
 loss(p,l) = sum(c, a(c,l,p));
 Display loss;

$Eject

 Table  b(m,p)   capacity utilization matrix

                 d-lsl  d-lsm  d-lsh  d-hsl  d-hsm  d-hsh  ngl  reform  ls-hc  hs-hc  desulf
 p-still           1      1      1      1      1      1
 ngl                                                        1
 reformer                                                         1
 he-conv                                                                  1      1
 desulf                                                                                 1

 Table  k(m,l)  initial capacities (mbd)

              b       m
 p-still    50.5     7.5
 ngl         3.4
 reformer    7.1      .8
 he-conv     7.3     2.9
 desulf      2.7      .3

 Parameters  hecr(l,p)  heavy ends conversion restriction       / b.ls-hc  -.83, (b,m).hs-hc  1.0 /
             hecc(l)    heavy ends conversion capacity (mbd)    / b  3.9,  m  2.5 /
             trb(pt)    transfer bounds (mbd)      / t-gas  1.7, t-nap  1.9,  (t-lsr,t-hsr)  inf  /
             trc(pt)    transfer costs ($ per b)   / t-gas  -.3 /
             mcpe(c)    imports from cpe + drawdowns (mbd) / hs-light  .7, distillat  .5, hs-resid  .1 /

 Table  crd(cr,*)  crude oil data

             limit      price
*            (mbd)      ($/b)
 ls-light     13.6       32.0
 ls-medium     1.1       32.0
 ls-heavy      1.0       32.0
 hs-light     16.2       32.0
 hs-medium     8.9       32.0
 hs-heavy      4.4       32.0
 ngl           3.1       32.0


 Table  pc(l,p)  process cost (us$ per barrel)

           d-lsl  d-lsm  d-lsh  d-hsl  d-hsm  d-hsh  ngl  reform  ls-hc  hs-hc  desulf
 b          .45    .45    .45    .50    .50    .50         .41     .27    .32     .9
 m          .50    .50    .50    .55    .55    .55         .50     .45    .28    1.0

$Eject

 Table ddat(cf,*)  demand data

             ref-q    ref-p    ref-t     elas
*            (mbd)    ($/b)    ($/b)
 gasoline     12.8     45.0      0.0     -.20
 distillat    13.8     41.0      0.0     -.20
 naphtha       8.3     43.0      0.0     -.20
 ls-resid      4.2     35.3      0.0     -.30
 hs-resid      8.6     31.0      0.0     -.30

 Parameters  dema(cf)   demand parameter a
             demb(cf)   demand parameter b ;

  demb(cf) = 1/ddat(cf,"elas") + 1;
  dema(cf) = ddat(cf,"ref-p")/demb(cf)/ddat(cf,"ref-q")**(demb(cf)-1);
  Display dema,demb,ddat;


 Variables  z(p,l)     process level                     (mbd)
            u(c)       supply of crude                   (mbd)
            w(pt)      transfer activities               (mbd)
            xf(c)      shipment of final products        (mbd)
            pcost      production cost                   (mill $ per day)
            scps       consumers and producers surplus   (mill $ per day)
            positive variables z, u, w, xf;

 Equations  mb(c)      material balance                  (mbd)
            cc(m,l)    capacity constraint               (mbd)
            ccr(l)     capacity restriction - heavy ends (mbd)
            pcdef      production cost definition        (mill $ per day)
            dcps       definition of surplus             (mill $ per day) ;

 mb(c).. mcpe(c) +sum((p,l), a(c,l,p)*z(p,l)) + u(c)$cr(c) + sum(pt, tr(c,pt)*w(pt)) =g= xf(c)$cf(c);

 cc(m,l)..  sum(p, b(m,p)*z(p,l)) =l= k(m,l);

 ccr(l)..   sum(p, hecr(l,p)*z(p,l)) =l= hecc(l);

 pcdef..  pcost =e= sum((p,l), pc(l,p)*z(p,l)) + sum(pt, trc(pt)*w(pt)) + sum(cr, crd(cr,"price")*u(cr));

 dcps..   scps  =e= sum(cf, dema(cf)*xf(cf)**demb(cf) - ddat(cf,"ref-t")*xf(cf)) - pcost ;

 u.up(cr) = crd(cr,"limit");   w.up(pt) = trb(pt);

 Model refnlp world ref model nlp / mb,cc,ccr,pcdef,dcps /
       reflp  world ref model lp  / mb,cc,ccr,pcdef / ;

 xf.fx(cf) = ddat(cf,"ref-q");
 Solve reflp minimizing pcost using lp ;

 xf.lo(cf) = 2; xf.up(cf) = +inf;
 Solve refnlp maximizing scps using nlp ;

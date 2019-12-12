option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Korea: Dynamic Oil-Petro Model (KORPET,SEQ=48)
$Stitle Set Definitions

$Ontext

   This problem addresses two questions in the Korean oil refining and
   petrochemical industries: a) the optimal time for capacity expansion,
   and b) options available to deal with increasingly strict government
   anti-pollution regulations. An interesting problem is that due to
   inflexibility in production scheduling (as stated) in the petrochemical
   sector it is not possible to satisfy market requirements without
   producing excess amounts of certain products which then have to be
   disposed of.


Suh, J S, An Investment Planning Model for the Oil-Refining and
Petro-chemical Industries in Korea. Tech. rep., Center for Economic
Research, University of Texas, 1981.

$Offtext


 Set i   plant locations /

         ulsan     kyungsangnamdo
         yosu      chollanamdo
         inchon    kyunggido      /

     j   demand regions   /

         seoul     capital city
         inchon    kyunggido
         kwangju   chollanamdo
         taegu     kyungsangbukdo
         pusan     kyungsangnamdo
         ulsan     kyungsangnamdo
         yosu      chollanamdo      /

     m   productive units   /

         ad        atmospheric distillation unit
         cr        catalytic reformer
         cc        catalytic cracker
         ds        desulfurizer
         sc        steam cracker
         bx        butadiene extractor
         pf        platfiner
         ar        aromatics unit
         hd        hydrodealkylator               /

     p   processes     /

         crad  crude oil atmospheric distillating process
         nacr  naphtha reforming process
         focc  fuel oil catalytic cracking process
         rsds  straight run residuum desulfurizing process
         nasc  naphtha steam cracking process
         btbx  butadine extraction process
         pgpf  raw pyrolysis gas platfining process
         amna  aromatics processing using reformed naphtha
         amtp  aromatics processing using treated pyrolysis gas
         tohd  toluene hydrodealkylating process   /

     c    commodities /

          sa   saudi arabian crude

          adga  gasoline from atmospheric distillation
          adna  naphtha from atmospheric distillation
          adfo  fuel oil from atmospheric distillation
          adke  kerosene from atmospheric distillation
          adrs  residuum from atmospheric distillation
          crna  catalytic reformed naphtha
          crga  catalytic reformed gasoline
          ccga  catalytic cracked gasoline
          ccfo  catalytic cracked fuel oil
          dsrs  desulfurized residuum
          scbt  steam cracked raw c4
          scrp  raw pyrolysis gas from steam cracking
          pftp  treated pyrolysis gas  from platfining

          pg   premium gasoline
          rg   regular gasoline
          di   distillate
          rf   residual fuel oil

          et   ethylene
          pp   propylene
          bt   butadiene
          be   benzene
          to   toluene
          mx   mixed xylene  /

     cfr(c)    final products from refineries             / pg , rg , di , rf /

     cfrerf(c) refinery products except residual fuel oil / pg , rg , di /

     cfrrf(c)  residual fuel oil only                     /  rf /

     cfp(c)    final products from petrochemical plants   / et , pp , bt , be , to , mx /

     ci(c)     intermediate products / adga , adna , adfo , adke , adrs , crna , crga
                                       ccga , ccfo , dsrs , scbt , scrp , pftp /

     cs(c)     interplants shipments / adna , crna /

     cr(c)     raw materials         / sa /

     cb(c)     commodities for blending refinery products / adga , adfo , adke , adrs , crga
                                                            crna , ccga , ccfo , dsrs /

     cfcb(c,c) allowed blending combinations  / (pg,rg).(adga,adna,crga,crna,ccga)
                                                     di.(adke,adfo,ccfo)
                                                     rf.(adfo,ccfo,adrs,dsrs)   /

     crcr(c,c) crude oil combination in processing  / sa.sa   /

     q         quality specification attributes   /  oc   research octane number
                                                     va   vapor pressure
                                                     su   sulfur content (weight percentage) /

     t         time periods      / 1980-84, 1985-89, 1990-94, 1995-99 /

     te(t)     expansion  period / 1985-89, 1990-94, 1995-99 /

     cf(c)     final products from refineries and petrochemical plants

     crcf(c)   raw materials and final products

 Alias (t,tp),(i,ip),(te,tep);

     cf(cfr)=yes;   cf(cfp)=yes;
     crcf(cr)=yes;  crcf(cf)=yes;
 Display cf,crcf;

$Stitle data

 Scalar     year        years per time period             / 5 /
 Parameter  midyear(t)  year which is in the middle of period
            ts(t,t)     time summation matrix ;

 midyear(t) = 1977 + year*ord(t);
 ts(t,tp)$(ord(tp) le ord(t)) = 1;
 Display ts;


 Table a(c,c,p) input-output coefficients

         crad      nacr      focc      rsds

 sa.sa   -1.00
 sa.adga   .04
 sa.adna   .14     -1.00
 sa.adke   .09
 sa.adfo   .18               -1.00
 sa.adrs   .54                         -1.00
 sa.crga             .16
 sa.crna             .56
 sa.ccga                       .51
 sa.ccfo                       .25
 sa.dsrs                                1.00


 +       nasc      btbx      pgpf      amna     amtp     tohd

 sa.adna -1.00
 sa.scbt   .08     -1.00
 sa.scrp   .23               -1.00
 sa.crna                               -1.00
 sa.pftp                       .68              -1.00
 sa.et     .29
 sa.pp     .15
 sa.bt               .53
 sa.to                                   .26      .24    -1.00
 sa.be                                   .40      .39      .63
 sa.mx                                   .15      .16

 Table b(m,p) capacity utilization coefficients

    crad nacr focc rsds nasc btbx pgpf amna amtp tohd

 ad 1.0
 cr      1.0
 cc           1.0
 ds                1.0
 sc                     1.0
 bx                          1.0
 pf                               1.0
 ar                                    1.0  1.0
 hd                                              1.0



 Table ka(m,i) initial capacity  (1000 tpy)

         inchon    ulsan     yosu

 ad      3702.     12910.    9875.
 cr      369.      1200.     790.
 cc
 ds
 sc                517.      1207.
 bx                45.       94.
 pf                201.
 ar                181.      148.
 hd                180.

 Parameter rket1(i)  rate of capacity expansion at time period 1 / inchon .3 , ulsan .4 , yosu .6 /
           kat1      planned capacity in time period 1;

 kat1(m,i) = ka(m,i)*(1 + rket1(i));
 Display kat1;

 Parameter op(p) operating cost  (us $ per ton) / crad    1.55 , nacr    9.71 , focc    3.5  , rsds   14
                                                  btbx  101.82 , nasc  143.04 , pgpf   50.25 , amna  190.87
                                                  amtp  190.87 , tohd  645.99 /
*        operating cost includes catalyst cost,chemical cost,labor
*        cost,depreciation cost,utility costs (steam,electricity,
*        cooling water) and maintenance cost.


 Table d(c,j) ratio of regional demand (percentage)
*        all petrochemical final products are demanded by the downstream petrochemical plants which are
*        located very cloase to the refineries and petrochemical plants.  the demand pattern between regions
*        for final products is assumed to remain constant over time.

         inchon    seoul

 pg       1.7      76.4
 rg       3.6      53.7
 di      22.4      31.4
 rf       68.0

 +       kwangju   taegu     pusan     ulsan     yosu

 pg      2.3        10.6       9.0
 rg      10.4       19.6      12.7
 di      8.1        19.4      18.7
 rf      5.0        15.8       9.6       .9        .7
 et                                    38.1      61.9
 pp                                    30.2      69.8
 bt                                    28.6      71.4
 be                                    37.8      62.2
 to                                    30.8      69.2
 mx                                    60.9      39.1

 Parameter tqcf(c)  total quantity demanded (1000 tpy)  / pg  335.9 , rg  783.1 , di  5391.2 , rf  12696.1
                                                           et  184.5 , pp  219.3 , bt    35.6 , be    110.5
                                                           to   84.1 , mx   59.8 /
*          the growth rate of demand for pg,rg and petrochemical products
*          is assumed to be 15 per cent per year and the growth rate of
*          demand for the rest of the refinery products is assumed to be
*          10 per cent per year.

            grfp(c)  growth rate of demand for final products per year / (di,rf)                      .1
                                                                         (pg,rg,et,pp,bt,be,to,mx)    .15 /
            r(c,j,t) demand for final products (1000 tpy);

 r(cf,j,t) = (tqcf(cf)*d(cf,j)/100.)*((1 + grfp(cf))**(midyear(t) - 1980));

 Display r;

 Table tc(i,*)  transportation cost (us $ per ton)

         inchon    seoul

 inchon             .84
 yosu    1.86      2.65
 ulsan   5.00      3.62

 +       kwangju   yosu      taegu     ulsan     pusan

 inchon  5.44      7.77      5.44      8.55      4.90
 yosu    3.54                3.00      3.72      1.77
 ulsan   5.03      3.72       .69                2.59

*        there are 4 modes of transportation: vessel, railroad tanker car (rtc), tanker truck (tt) and pipeline (pl)
*        each transportation mode is tied to each demand region and the unit transportation cost for each
*        transportation mode is different from each other and even for the same transportation mode, the unit
*        transportation cost is different according to the total volume transported.


 Table pr(c,*)  commodity prices (us $ per ton)

         imports   exports

 sa      231.7
 et      908.      705.
 pp      704.      529.
 bt      706.      629.
 mx      662.      373.
 to      662.      526.
 be      706.      373.


 Scalar    eu      export upper bound (1000 tpy)       / 400 /
           imu     import upper bound (1000 tpy)       / 300 /

 Parameter pv(c)   import prices (us $ per ton)
           pe(c)   export prices (us $ per ton);

 pv(crcf) = pr(crcf,"imports");
 pe(crcf) = pr(crcf,"exports");

 Table  inv(m,*)  investment data

*         size        capacity limit of economy of scale (1000 tpy)
*         cost        cost of the production unit at size "size" (1000 us$)
*         scale       scale factor;  cost = xx*size ** scale

          size        cost       scale

 ad       10000       50000      .67
 cr       1000        40000      .67
 cc       2000        200000     .67
 ds       2000        160000     .67
 sc       500         200000     .67
 bx       100         50000      .67
 pf       200         150000     .67
 ar       400         150000     .67
 hd       200         150000     .67

 Set is investment function segment  /1*4/

 Scalar    life           life of productive units            (years)   / 20   /
           discr          discount rate                                 /   .1 /
           caprf          capital recovery factor
 Parameter site(i)        site factor                                   /  inchon    1.5 , (ulsan,yosu)  1 /
           omega(m,is,i)  cost increase for small plants   (1000 us$)
           ss(m,is)       investment segment size          (1000 tpy)
           discf          discount factor;


 inv(m,"fixed") = inv(m,"cost")*(.5**(inv(m,"scale")-1)-1);
 omega(m,"1",i) = inv(m,"fixed")*site(i);
 omega(m,"2",i) = inv(m,"cost")*site(i);
 omega(m,"3",i) = omega(m,"2",i)*5 ;
 omega(m,"4",i) = omega(m,"2",i)*10*1.25;

 ss(m,"2") = inv(m,"size");
 ss(m,"3") = ss(m,"2")*5;
 ss(m,"4") = ss(m,"2")*10;

        life =20;
        discr = .1;
        caprf = discr/(1-(1 + discr) ** (-life));
        discf(t) = (1 + discr) ** (1980 - midyear(t));

 Display inv,omega,ss,caprf,discf;


 Table qll(c,q)  quality bounds (lower bounds)

         oc

 pg      95.
 rg      85.

 Table quu(c,q)  quality bounds (upper bounds)

         va        su
 pg      12.
 rg      12.
 di                1.00
 rf                4.00


 Table at attributes of commodities in blending

         oc     va     su

 sa.adga 84.0   16.0
 sa.adna 59.4    2.5
 sa.adke               .26
 sa.adfo               1.02
 sa.adrs               4.35
 sa.crga 115.0   5.0
 sa.crna  97.0   2.5
 sa.ccga  93.7   6.9
 sa.ccfo                .91
 sa.dsrs               1.00

 Parameter suurf(t)  upper limit of sulfur content in rf / 1980-84  4 , 1985-89  3.5 , 1990-94  3 , 1995-99  2.5 /

$Stitle model definition

 positive variables
          z(c,p,i,t)         process level                            (1000 tpy)
          w(c,c,c,i,t)       blending level at refinery               (1000 tpy)
          h(m,i,t)           capacity expansion                       (1000 tpy)
          s(m,is,i,t)        scale segment of investment              (1000 tpy)
          xf(c,i,j,t)        domestic shipment: final products        (1000 tpy)
          xi(c,c,i,i,t)      domestic shipment: intermediates         (1000 tpy)
          vf(c,j,t)          imports: final products                  (1000 tpy)
          vr(c,i,t)          imports: raw materials-crude oil         (1000 tpy)
          e(c,i,t)           exports: final products                  (1000 tpy)

 Variables
          tcost              total cost                              (1000 us $)
          rawmat(t)          raw material cost                       (1000 us $)
          operat(t)          operating cost                          (1000 us $)
          trans(t)           transportation cost                     (1000 us $)
          ccost(t)           capital cost                            (1000 us $)
          import(t)          import cost                             (1000 us $)
          export(t)          export revenue                          (1000 us $)

 Binary variable
          y(m,i,t)           binary variable

 Equations
          mbr(c,i,t)         raw material balance                     (1000 tpy)
          mbir(c,c,i,t)      intermediate material balance: refinery  (1000 tpy)
          mbip(c,c,i,t)      intermediate material balance: petrochem (1000 tpy)
          mbfr(c,i,t)        final material balance: refinery goods   (1000 tpy)
          mbfp(c,i,t)        final material balance: petrochemicals   (1000 tpy)
          qcfl(c,q,i,t)      quality constraints: lower bounds
          qcfu(c,q,i,t)      quality constraints: upper bounds
          cc(m,i,t)          capacity constraints                     (1000 tpy)
          id(m,i,t)          investment variable definition           (1000 tpy)
          ic(m,i,t)          combination of 0 and 1
          mdcf(c,j,t)        market demand of final products          (1000 tpy)
          eub(t)             exports constraints: upper bounds        (1000 tpy)
          imub(t)            imports constraints: upper bounds        (1000 tpy)
          obj                accounting: total cost                   (1000 us$)
          araw(t)            accounting: raw material cost            (1000 us$)
          aoper(t)           accounting: operating cost               (1000 us$)
          atrans(t)          accounting: transportation cost          (1000 us$)
          acap(t)            accounting: investment cost              (1000 us$)
          aim(t)             accounting: import cost                  (1000 us$)
          aex(t)             accounting: export revenue               (1000 us$);

$Eject

 mbr(cr,i,t)..  sum(p, a(cr,cr,p)*z(cr,p,i,t)) + vr(cr,i,t) =g= 0;

 mbir(cr,cb,i,t)..  sum(p, a(cr,cb,p)*z(cr,p,i,t)) + sum(ip$tc(i,ip), xi(cr,cb,ip,i,t) - xi(cr,cb,i,ip,t))$cs(cb)
                =g= sum(cfr$cfcb(cfr,cb), w(cr,cb,cfr,i,t));

 mbip(cr,ci,i,t)..
   sum(p, a(cr,ci,p)*z(cr,p,i,t)) + sum(ip$tc(i,ip), xi(cr,ci,ip,i,t) - xi(cr,ci,i,ip,t))$cs(ci)  =g= 0;

 mbfr(cfr,i,t)..  sum((cr,cb)$cfcb(cfr,cb), w(cr,cb,cfr,i,t)) =e= sum(j, xf(cfr,i,j,t));

 mbfp(cfp,i,t)..  sum((cr,p), a(cr,cfp,p)*z(cr,p,i,t)) =g= sum(j, xf(cfp,i,j,t)) + e(cfp,i,t);

 qcfl(cfr,q,i,t)$qll(cfr,q)..
   sum((cr,cb)$cfcb(cfr,cb), at(cr,cb,q)*w(cr,cb,cfr,i,t)) =g= sum(j, qll(cfr,q)*xf(cfr,i,j,t));

 qcfu(cfr,q,i,t)$quu(cfr,q)..
   sum((cr,cb)$cfcb(cfr,cb), at(cr,cb,q)*w(cr,cb,cfr,i,t)) =l= sum(j, quu(cfr,q)*xf(cfr,i,j,t))$cfrerf(cfr)
                                                             + sum(j, suurf(t)*xf(cfr,i,j,t))$cfrrf(cfr);

 cc(m,i,t)..  sum(p, b(m,p)*sum(cr, z(cr,p,i,t))) =l= kat1(m,i) + sum(tep$ts(t,tep), h(m,i,tep));

 id(m,i,te)..  h(m,i,te) =e= sum(is, ss(m,is)*s(m,is,i,te));

 ic(m,i,te)..  y(m,i,te) =e= sum(is, s(m,is,i,te));

 mdcf(cf,j,t)..  sum(i, xf(cf,i,j,t)) + vf(cf,j,t)$cfp(cf) =g= r(cf,j,t);

 eub(t)..  sum((cfp,i), e(cfp,i,t)) =l= eu;

 imub(t).. sum((cfp,j), vf(cfp,j,t)) =l= imu;

 obj..  tcost =e= year*sum(t, discf(t)*(rawmat(t) + operat(t) + trans(t) + ccost(t) + import(t) - export(t)));

 araw(t)..  rawmat(t) =e= sum((cr,i), pv(cr)*vr(cr,i,t));

 aoper(t).. operat(t) =e= sum(p, op(p)*sum((cr,i), z(cr,p,i,t)));

 atrans(t)..  trans(t) =e= sum((cf,i,j), tc(i,j)*xf(cf,i,j,t)) + sum((cr,cs,i,ip), tc(i,ip)*xi(cr,cs,i,ip,t));

 acap(t)..  ccost(t) =e= caprf*sum((tep,m,is,i)$ts(t,tep), omega(m,is,i)*s(m,is,i,tep));

 aim(t)..  import(t) =e= sum((cfp,j), pv(cfp)*vf(cfp,j,t));

 aex(t)..  export(t) =e= sum((cfp,i), pe(cfp)*e(cfp,i,t));

 Model petro /all/;

 Solve petro minimizing tcost using mip;

$Stitle report

 Parameter  vrlev(i,t)     crude oil imports level           (1000 ton)
            wlev(c,c,i,t)  blending level: detailed          (1000 ton)
            wlevf(c,i,t)   blending level: aggreated         (1000 ton)
            tzlev(p,i,t)   total production level            (1000 ton)
            tzplev(p,t)    total production per process      (1000 ton)
            xilev(c,i,i,t) shipment of intermediate products (1000 ton)
            xflev(c,j,t)   shipment of final products        (1000 ton)
            tic(m,i,t)     total installed capacity per plant (1000 ton)
            tict(m,t)      total installed capacity          (1000 ton)
            tac(m,t)       total added capacity              (1000 ton)
            ti(m,i,t)      total investment cost per unit   (1000 us $)
            tit(i,t)       total investment cost per plant  (1000 us $)
            tcu            undiscounted total cost          (1000 us $);

 vrlev(i,t)      = sum(cr, vr.l(cr,i,t));
 wlev(cb,cf,i,t) = sum(cr, w.l(cr,cb,cf,i,t));
 wlevf(cf,i,t)   = sum((cr,cb), w.l(cr,cb,cf,i,t));
 tzlev(p,i,t)    = sum(cr, z.l(cr,p,i,t));
 tzplev(p,t)     = sum((cr,i), z.l(cr,p,i,t));
 xilev(ci,ip,i,t) = sum(cr, xi.l(cr,ci,ip,i,t));
 xflev(cf,j,t) = sum(i, xf.l(cf,i,j,t));
 tic(m,i,t)    = kat1(m,i) + sum(tp$ts(t,tp), h.l(m,i,tp));
 tict(m,t) = sum(i, tic(m,i,t));
 tac(m,t)  = sum(i, h.l(m,i,t));
 ti(m,i,t) = sum(is, omega(m,is,i)*s.l(m,is,i,t));
 tit(i,t)  = sum(m, ti(m,i,t));
 tcu = sum(t, year*(rawmat.l(t) + operat.l(t) + trans.l(t) + ccost.l(t) + import.l(t) - export.l(t)));

 Display vrlev,wlev,wlevf,tzlev,tzplev,xilev;
 Display xf.l,xflev,vf.l,e.l,h.l,s.l,tac,tic,tict,ti,tit,tcu;

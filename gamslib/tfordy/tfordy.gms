option LP=convert;
option LP=convert;
option LP=convert;
$Title Antalya Forestry Model - Dynamic       (TFORDY,SEQ=62)

$Ontext

   This model finds an optimal forest management plan, converting existing
   forests into highly managed ones. various types of sustained yield
   conditions can be imposed.


Bergendorff, H, Glenshaw, P, and Meeraus, A, The Planning of Investment
Programs in the Paper Industry. Tech. rep., The World Bank, 1980.

$Offtext

 Sets  c     commodities      / pulplogs,  sawlogs,  residuals,  pulp,  sawnwood /
       cf(c) final products   / pulp,  sawnwood  /
       cl(c) log types        / pulplogs,  sawlogs /
       s     species          / nigra,  brutia /
       k     site classes     / good, medium, poor /
       at    tree age         / a-10, a-20, a-30, a-40, a-50, a-60, a-70, a-80, a-90
                                a-100,a-110,a-120,a-130,a-140,a-150,a-160,a-170 /
       u(at) initial age      / a-10, a-20, a-30, a-40, a-50, a-60, a-70, a-80, a-90 /
       p     processes        / pulp-pl,  pulp-sl,  pulp-rs,  sawing    /
       m     productive units / pulp-mill,  saw-mill /
       te    extended horizon / period-1*period-12 /
       t(te) model horizon    / period-1*period-9 /

 Alias (t,tp);

 Parameter  scd(k)    site class distribution / good .25, medium .50 , poor .25 /
            land(s)   land available (1000ha) / nigra 143.679, brutia 227.58 /


 Table  is(at,s)  initial age distribution of existing forest (proportion)

                      nigra    brutia
 (a-10,a-20,a-30)      .2        .2
 (a-40,a-50,a-60)     8.5       12.7
 (a-70,a-80,a-90)    24.6      20.6


 Table  yef(at,s,cl) yield of existing forest (m3 per ha)

       nigra.pulplogs  nigra.sawlogs   brutia.pulplogs  brutia.sawlogs
 a-10       38.8            1.2             17.8             3.2
 a-20       48.4            8.6             16.8            19.1
 a-30       43.4           26.6             15.4            32.6
 a-40       34.4           45.6             16.0            41.0
 a-50       27.8           59.2             18.2            46.8
 a-60       28.5           66.5             16.8            53.2
 a-70       27.3           72.7             17.5            55.5
 a-80       25.2           79.8             17.3            54.7
 a-90       26.4           83.8             17.0            54.0
 a-100      27.1           85.9             16.3            51.7
 a-110      27.8           88.2             14.9            47.1
 a-120      28.3           89.7             12.0            38.0
 a-130      28.8           91.2              9.1            28.9
 a-140      28.8           91.2              6.2            19.8
 a-150      28.3           89.7              3.1             9.9
 a-160      27.8           82.2              1.2             3.8
 a-170      27.1           85.9               .5             1.5

 Table ymf(at,k,s,cl)  yield of managed forest (m3 per ha)

               nigra.pulplogs  nigra.sawlogs   brutia.pulplogs  brutia.sawlogs
  a-10.good                                          17.5
  a-10.medium
  a-10.poor

  a-20.good            120.0                         66.8
  a-20.medium           95.0                         51.1
  a-20.poor             80.0                         37.8

  a-30.good            132.6        37.4             91.3         25.7
  a-30.medium          120.2        14.8             81.4         10.0
  a-30.poor            115.0                         71.3

  a-40.good            121.0        99.0             91.3         74.7
  a-40.medium          115.5        59.5             86.5         44.5
  a-40.poor            119.0        21.0             90.1         15.9

  a-50.good            108.0       162.0             76.0        114.0
  a-50.medium          112.0       108.0             77.0         74.0
  a-50.poor            112.2        57.8             92.0         47.6

  a-60.good            104.0       221.0             76.0        116.0
  a-60.medium          106.0       159.0             76.0        113.0
  a-60.poor            110.0        90.0             95.2         77.8

  a-70.good            105.0       270.0             78.0        200.0
  a-70.medium           98.0       207.0             72.0        153.0
  a-70.poor             97.0       128.0             88.0        116.0

  a-80.good            102.0       323.0             76.0        240.0
  a-80.medium          105.0       235.0             80.0        177.0
  a-80.poor             92.0       163.0             84.0        148.0


 Parameters yw(te,at,s,cl)    yield of existing forest  (m3 per@ha)
            yv(te,te,s,cl,k) yield of managed forest   (m3 per ha)
            iad(at,s)        initial age distribution  (proportions) ;

    iad(u,s) = is(u,s)/sum(at, is(at,s))/100;

    yw(t,at,s,cl)$u(at) = yef(at+(ord(t)-1),s,cl);
    loop(at, yv(t,t+ord(at),s,cl,k) = ymf(at,k,s,cl) ); yv(te,te+3,s,cl,k) = ymf("a-30",k,s,cl) ;

 Display yw, yv, iad;

 Sets  wpos(u,te) w possibility
       vpos(t,te) v possibility;

 wpos(u,t) = yes$sum((s,cl), yw(t,u,s,cl)) ;
 vpos(t,te) = yes$sum((s,cl,k), yv(t,te,s,cl,k)) ;


 Table  a(c,p) input output matrix

               pulp-pl  pulp-sl  pulp-rs    sawing

 pulplogs       -1.0
 sawlogs                 -1.0               -1.0
 residuals                        -1.0       0.4
 pulp             .207     .207     .207
 sawnwood                                    0.6


 Table  b(m,p)  capacity utilization

               pulp-pl  pulp-sl  pulp-rs  sawing

 pulp-mill        1        1        1
 saw-mill                                   1


 Parameter pc(p)     process cost (us$ per m3 input)    / (pulp-pl,pulp-sl,pulp-rs)  5.96, sawing  6.00 /
           pd(cf)    sales price  (us$ per unit)        / pulp      147.0 ,  sawnwood  70.0 /
           nu(m)     investment costs (us$ per m3 input) / pulp-mill  37.8 ,  saw-mill  61.5 /
           age(at)   age of trees    ( years )
           avl(t,te) plant live in periods
           delt(t)   discount factors ;

  Scalars mup  planting cost  (us$ per ha)  / 150.0 /
          muc  cutting cost   (us$ per m3)  /   7.0 /
          life plant life     (years)       /  30   /
          rho  discount rate                /    .1 /
          sgm  capital recovery factor   ;

   age(at) = 10*ord(at);

   avl(t,t)   = 1;
   avl(t,t-1) = 1;
   avl(t,t-2) = 1;

   sgm     = rho/(1-(1+rho)**(-life));
   delt(t) = (1+rho)**(-10*(ord(t)-1));

 Display age, avl, sgm, delt;

$Stitle model definition

  Equations  efs(s,k,u)    existing forest stock  (1000ha)
             pfs(s,k,t)    planted forest stock   (1000ha)
             lbal(cl,te)   log balances
             bal(c,t)      material balances of wood processing
             cap(m,t)      wood processing capacities
             sy1(te)       sustained yield constraint - all logs
             sy2(cl,te)    sustained yield constraint - log type
             sy3(cl,te)    sustained yield constraint - pulp logs
             sy4(c,t)      sustained yield constraint - pulp
             wbnd          cutting restrictions
             ainvc(t)      investment cost
             aproc(t)      process cost
             asales(t)     sales revenue
             acutc(t)      cutting cost
             aplnt(t)      planting cost
             benefit

  Variables  w(s,k,u,te)   cutting of existing forest  (1000ha per year)
             v(s,k,t,te)   management of new forest    (1000ha per year)
             r(c,te)       supply of logs to industry  (1000m3 per year)
             z(p,t)        process level               (1000m3 input per year)
             h(m,t)        capacity expansion          (1000m3 input per year)
             x(c,t)        final shipments             (1000 units per year)
             phik(t)       investment cost             (1000us$ per year)
             phir(t)       process cost                (1000us$ per year)
             phix(t)       sales revenue               (1000us$ per year)
             phil(t)       cutting cost                (1000us$ per year)
             phip(t)       planting cost               (1000us$ per year)
             phi           total benefits              (discounted cost);

 Positive Variables w, v, r, z, h, x;

$Double

 efs(s,k,u)..   10.*sum(t$wpos(u,t), w(s,k,u,t)) =l= iad(u,s)*scd(k)*land(s) ;
 pfs(s,k,t)..   sum(te$vpos(t,te), v(s,k,t,te)) =l= sum(u$wpos(u,t), w(s,k,u,t)) + sum(tp$vpos(tp,t), v(s,k,tp,t));
 lbal(cl,te)..   r(cl,te) =e= sum((k,s,t), yv(t,te,s,cl,k)*v(s,k,t,te)) + sum((k,s,u), yw(te,u,s,cl)*w(s,k,u,te));
 sy1(te-1)..       sum(cl, r(cl,te)) =g= sum(cl, r(cl,te-1)) ;
 sy2(cl,te-1)..     r(cl,te) =g= r(cl,te-1) ;
 sy3("pulplogs",te-1)..   r("pulplogs",te) =g= r("pulplogs",te-1) ;
 sy4("pulp",t-1)..  x("pulp",t) =g= x("pulp",t-1) ;
 wbnd.. sum((s,k,u,te)$wpos(u,te), w(s,k,u,te)$((ord(u)+ord(te)) le 5)) =e= 0 ;
 bal(c,t)..     sum(p, a(c,p)*z(p,t)) + r(c,t)$cl(c)  =g= x(c,t)$cf(c) ;
 cap(m,t)..     sum(p, b(m,p)*z(p,t)) =l= sum(tp$avl(t,tp), h(m,tp)) ;

 ainvc(t)..     phik(t) =e= sgm*sum(tp$avl(t,tp), sum(m,nu(m)*h(m,tp)));
 aproc(t)..     phir(t) =e= sum(p, pc(p)*z(p,t));
 asales(t)..    phix(t) =e= sum(cf, pd(cf)*x(cf,t));
 acutc(t)..     phil(t) =e= muc*sum(cl, r(cl,t));
 aplnt(t)..     phip(t) =e= mup*sum((s,k,te)$vpos(t,te), v(s,k,t,te)) ;

 benefit..      phi =e= sum(t, delt(t)*( phix(t) - phik(t) - phir(t) - phil(t) - phip(t))) ;

$Single

 models antala base case       / efs, pfs, lbal, bal, cap, sy2, ainvc, aproc, asales, acutc, aplnt, benefit, wbnd /
        antalb case b          / efs, pfs, lbal, bal, cap, sy2, ainvc, aproc, asales, acutc, aplnt, benefit /
        antalc case c          / efs, pfs, lbal, bal, cap, sy1, ainvc, aproc, asales, acutc, aplnt, benefit /
        antald case d          / efs, pfs, lbal, bal, cap, sy3, ainvc, aproc, asales, acutc, aplnt, benefit /
        antale case e          / efs, pfs, lbal, bal, cap,      ainvc, aproc, asales, acutc, aplnt, benefit /
        antalf case f          / efs, pfs, lbal, bal, cap, sy4, ainvc, aproc, asales, acutc, aplnt, benefit /

$Stitle case definition and reports

 Parameters rp(*,* ,s,k)  rotation period for new forest (percent)
            tc(s,k)       total new cut (1000ha)
            csum(*,t,s)   cutting summary of old forest ;

 Solve antala using lp maximizing phi;

 tc(s,k) = sum((t,tp), v.l(s,k,t,tp));
 rp("case-a",at,s,k) = (100*sum(t, v.l(s,k,t,t+ord(at)))/tc(s,k))$tc(s,k) ;
 rp("case-a","total-cut",s,k) = tc(s,k);
 csum("case-a",t,s)   = sum((k,u), w.l(s,k,u,t));

 Solve antalb using lp maximizing phi;

 tc(s,k) = sum((t,tp), v.l(s,k,t,tp));
 rp("case-b",at,s,k) = (100*sum(t, v.l(s,k,t,t+ord(at)))/tc(s,k))$tc(s,k) ;
 rp("case-b","total-cut",s,k) = tc(s,k);
 csum("case-b",t,s)   = sum((k,u), w.l(s,k,u,t));

 Display rp, csum;

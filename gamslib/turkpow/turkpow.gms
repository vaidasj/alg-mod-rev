option LP=convert;
option LP=convert;
option LP=convert;
$Title Turkey Power Planning Model (TURKPOW,SEQ=54)
$Stitle Set Definitions

$Ontext

   This is an investment planning model for the Turkish power
   sector to determine the least cost expansion pattern.


Turvey, R, and Anderson, D, Chapter 8: Electricity Development in Turkey:
A Case Study using Linear Programming. In Electricity Economics: Essays
and Case Studies. Johns Hopkins University Press, Baltimore and London,
1977.

$Offtext

 Set  time     time periods                        / 1975*2005 /

      te(time) extended time horizon               / 1975, 1978, 1983, 1988, 1993, 1998, 2005 /

      t(te)    time periods excluding base year    /       1978, 1983, 1988, 1993, 1998, 2005 /

      b        load blocks   / peak, high, medium, low /

      m        plant types   / hydro-1*hydro-13, gas-t, oil, lignite-1 * lignite-3, nuclear /

      mh(m)    hydro units  / hydro-1*hydro-13 /

      mt(m)    thermal units - with vintage

      mc(m)    thermal units with limitations on total new capacity / lignite-1 * lignite-3 /

  alias (t,v),(b,bp);
  mt(m) = not mh(m);
  Display mt;

$Stitle data:

 Set labels for plant data /  initcap    initial capacities  (mw)
                              avail      operational availability
                              e-fact     energy factor for hydro plants
                              opcost     operating costs (mill tl per mw-year)
                              opcost-g   annual rate of decrease in operating costs (%)
                              capcost    capital costs   (mill tl per mw)
                              capcost-g  annual rate of decrease in capital costs   (%)
                              life       life of units   (years)
                              maxcap     maximum capacity - on total new capacity   (mw) /

 Table mdatah(m,labels)  data  for hydro plants

              initcap  avail  e-fact      opcost      capcost      life      maxcap
*              (mw)                     (mill tl      (mill tl    (years)     (mw)
*                                        per mw-yr)    per mw)

 hydro-1                .9      .4          .09         1.4         50         684
 hydro-2                .9      .4          .09         4           50        1484
 hydro-3                .9      .4          .09         6.5         50         844
 hydro-4                .9      .4          .09         7           50         250
 hydro-5       1829     .9      .6          .09         3           50        2000
 hydro-6                .9      .6          .09         6.8         50         814
 hydro-7                .9      .8          .09         4.3         50         890
 hydro-8                .9      .4          .09         2.7         50        1366
 hydro-9                .9      .4          .09         4.6         50         656
 hydro-10               .9      .4          .09         6.1         50         192
 hydro-11               .9      .6          .09         3.9         50        1002
 hydro-12               .9      .6          .09         5.6         50         947
 hydro-13               .9      .8          .09         6.1         50          81

 Table mdatat(m,labels)  data  for thermal plants

              initcap   avail   opcost      opcost-g  capcost    capcost-g     life     maxcap
*              (mw)            (mill tl       (%)     (mill tl      (%)       (years)    (mw)
*                               per mw-yr)             per mw)

 gas-t          120      .8       1.7       -.005       2.5                     30        +inf
 oil            847      .9       1.1       -.005       4.5         -.01        30        +inf
 lignite-1      960      .8        .6       -.005       5           -.01        30
 lignite-2               .8        .2       -.005       7           -.01        30       2500
 lignite-3               .8        .2       -.005       7           -.01        30       3500
 nuclear                 .8        .3       -.005       9           -.02        30       +inf

Parameters
  hlo(m,te) lower bound: hydro unit expansions (mw) / hydro-4.1978   250 /
  hup(m,te) upper bound: hydro unit expansions (mw) / (hydro-1*hydro-3,hydro-5*hydro-7).(1978,1983)   inf
                                                      (hydro-1*hydro-13).(1988,1993,1998,2005)        inf
                                                       hydro-4.1978                                   250 /
  tlo(m,te) lower bound: thermal unit expansions (mw) / gas-t.1983  100, gas-t.1988  200, gas-t.1993  360
                                                        gas-t.1998  600, gas-t.2005 1600                  /

 Table tup(m,te)  upper bound on thermal unit expansions (mw)

                              1978   1983   1988   1993   1998   2005

 gas-t                         230    390    650   1110   1580   3580
 nuclear                              600   2500   5000  10000    inf
 lignite-3                                    inf   inf    inf    inf
 (oil,lignite-1,lignite-2)     inf    inf    inf    inf    inf    inf

$Lines 12

  Table dd(b,*)  demand data for 1975

* in the reference the data presented in the tables actually use two sets of growth
* rates for determining future demand, and not one as stated in the text.  here the
* single growth rate (11% annually) is used.

               duration   demand
*            (hrs per yr)  (mw)

 peak             526     3365
 high            2540     2550
 medium          3066     2050
 low             2628     1520

 Scalar    rho    interest rate                       / .11  /
           prr    peak reserve requirement (%)        / .05 /
           r      maximum aggregate hydro capacity    / .5  /
           g      demand growth rate (annual %)       / .11 /

 Parameter length(time)     distance from base year
           d(b,te)          power demand by block (mw)
           dur(b)           load duration of block (fraction of year)
           opcostt(m,v,t)   operating cost for thermal units (million tl per mw-yr)
           capcostt(m,v,t)  capital cost for thermal units (million tl per mw)

           sigma(m)         capital recovery factor
           delta(t)         discount factor
           bs(b,b)          load order matrix
           vs(t,v)          vintage time matrix
           kit(m,v)         initial capacity for thermal units (mw);

 length(time) = ord(time) - 1;

 bs(b,bp)  = 1$(ord(b) ge ord(bp));
 vs(t,v)  = 1$(ord(t) ge ord(v));
 opcostt(m,v,t)$vs(t,v)    = mdatat(m,"opcost")*(1 + mdatat(m,"opcost-g"))**length(v);
 capcostt(m,v,t)$vs(t,v)   = mdatat(m,"capcost")*(1 + mdatat(m,"capcost-g"))**length(v);

 d(b,te) = round(dd(b,"demand")*(1 + g)**length(te),0);
 dur(b)  = sum(bp$bs(b,bp), dd(bp,"duration")) / sum(bp, dd(bp,"duration"));
 delta(t) = (1+rho)**(-length(t))  ;
 sigma(mt) = rho/(1-(1+rho)**(-mdatat(mt,"life")))  ;
 sigma(mh) = rho/(1-(1+rho)**(-mdatah(mh,"life")))  ;

 kit(mt,"1978") = mdatat(mt,"initcap");
 display length,bs,vs,opcostt,capcostt,dd,d,dur,delta,sigma;

$Stitle model definition

Variables phi         total discounted cost                           (million tl)
          phic(te)    capital charges                                 (million tl)
          phio(te)    operating costs                                 (million tl)
          hh(m,te)    capacity additions: hydro units                         (mw)
          ht(m,v)     capacity additions: thermal units                       (mw)
          htt(m)      capacity additions: total thermal unit over time        (mw)
          zh(m,b,t)   power output: hydro                                     (mw)
          zt(m,v,b,t) power output: thermal                                   (mw)

Positive variables zh,zt,hh,ht

Equations db(b,te)    demand balance                                          (mw)
          pr(te)      peak and reserve requirements                           (mw)
          cch(m,te)   capacity constraint: hydro                              (mw)
          cct(m,v,te) capacity constraint: thermal                            (mw)
          ech(m,te)   hydro energy constraint                              (mw-yr)
          hcc(te)     hydro capacity constraint                               (mw)
          rch(m)      resource constraint: maximum new capacity on hydros     (mw)
          cat(m)      capacity accounting: total new capacity for unit        (mw)
          ak(te)      accounting: capital charges                     (million tl)
          ao(te)      accounting: operating costs                     (million tl)
          obj         total discounted cost                           (million tl);


db(b,t)..  sum(bp$bs(bp,b), sum(mh, zh(mh,bp,t)) + sum((mt,v)$vs(t,v), zt(mt,v,bp,t))) =g= d(b,t);

pr(t)..    sum(mh, mdatah(mh,"avail")*(mdatah(mh,"initcap") + sum(v$vs(t,v), hh(mh,v))))
         + sum(mt, mdatat(mt,"avail")*sum(v$vs(t,v), kit(mt,v) + ht(mt,v))) =g= (1 + prr)*d("peak",t);

cch(mh,t)..  sum(b, zh(mh,b,t)) =l= mdatah(mh,"avail")*(mdatah(mh,"initcap") + sum(v$vs(t,v), hh(mh,v)));

cct(mt,v,t)$vs(t,v).. sum(b, zt(mt,v,b,t)) =l= mdatat(mt,"avail")*(kit(mt,v) + ht(mt,v));

ech(mh,t).. sum(b, dur(b)*zh(mh,b,t)) =l= mdatah(mh,"e-fact")*( mdatah(mh,"initcap")
                                                              + sum(v$vs(t,v), hh(mh,v)));

hcc(t)..    sum(mh, mdatah(mh,"initcap") + sum(v$vs(t,v), hh(mh,v))) =l= r*d("peak",t);

rch(mh)..  sum(t, hh(mh,t))  =l= mdatah(mh,"maxcap");

cat(mt)..  htt(mt) =e= sum(v, ht(mt,v));

ak(t).. phic(t) =e= sum(mh, sigma(mh)*mdatah(mh,"capcost")*sum(v$vs(t,v), hh(mh,v)))
                  + sum(mt, sigma(mt)*sum(v, capcostt(mt,v,t)*ht(mt,v)));

ao(t)..    phio(t) =e= sum(mh, mdatah(mh,"opcost")*sum(b, dur(b)*zh(mh,b,t)))
                     + sum((mt,v)$vs(t,v), opcostt(mt,v,t)*sum(b, dur(b)*zt(mt,v,b,t)));

obj..      phi =e= sum(t, delta(t)*(phic(t) + phio(t)));

hh.lo(mh,t) = hlo(mh,t);  hh.up(mh,t) = hup(mh,t);
ht.lo(mt,t) = tlo(mt,t);  ht.up(mt,t) = tup(mt,t);
htt.up(mt)  = mdatat(mt,"maxcap");

Model turkey / all /;
Solve turkey minimizing phi using lp;

$Stitle report

 Parameter report summary report;
 Set reporder / power, capacity, duration, energy, e-limit, op-cost /;

 report(mt,b,t)      = sum(v, zt.l(mt,v,b,t));           report(mh,b,t)          = zh.l(mh,b,t);
 report("power",b,t) = d(b,t);                           report("duration",b,t)  = dur(b);
 report("power","power",t) = sum(b, report("power",b,t));
 report(m,"power",t)       = sum(b, report(m,b,t));
 report(mt,"capacity",t)   = sum(v$vs(t,v), kit(mt,v) + ht.l(mt,v));
 report(mh,"capacity",t)   = mdatah(mh,"initcap") + sum(v$vs(t,v), hh.l(mh,v));

 report("energy",b,t)        = report("power",b,t)*report("duration",b,t);
 report("energy","energy",t) = sum(b, report("energy",b,t));
 report(m,"energy",t)        = sum(b, dur(b)*report(m,b,t));
 report(mh,"e-limit",t)      = report(mh,"capacity",t)*mdatah(mh,"e-fact");

 report(mh,"op-cost",t)   = report(mh,"energy",t)*mdatah(mh,"opcost");
 report(mt,"op-cost",t)   = sum(v$vs(t,v), opcostt(mt,v,t)*sum(b, dur(b)*zt.l(mt,v,b,t)));
 report("op-cost","op-cost",t) = sum(m, report(m,"op-cost",t));
 report("op-cost",b,t) = sum(mh, dur(b)*mdatah(mh,"opcost")*zh.l(mh,b,t))
                    + sum((mt,v)$vs(t,v), dur(b)*opcostt(mt,v,t)*zt.l(mt,v,b,t));

 Display hh.l,ht.l,report;

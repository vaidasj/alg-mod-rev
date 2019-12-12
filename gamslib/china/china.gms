option LP=convert;
option LP=convert;
option LP=convert;
$Title Organic Fertilizer Use in Intensive Farming (CHINA,SEQ=56)
$Stitle Set Definitions

$Ontext

   Models the use of organic and chemical fertilizers for triple-cropping
   in the southern Jiangsu province.  Detailed attention is paid to removal
   and replenishment of plant nutrients and humus.


Wiens, T B, The Economics of High-yield Agriculture in China: Triple-Cropping
at the Baimano Peoples' Commune. The World Bank, Washington DC, 1985.

$Offtext

 Set ca      all commodities /
             barley
             wheat
             e-rice    early rice
             m-rice    middle rice
             l-rice    late rice
             l-sc-rice late single crop rice
             g-manure  green manure
             gm-seeds  green manure seeds
             rapeseed
             azolla
             azolla-e  early azolla
             fodder

             g-feed    grain feed
             straw
             hyacinth
             silt
             nightsoil
             amm-water ammonia water
             amm-bi    ammonium bicarbonate
             ssp       single superphosphate
             pigs
             shoats
             c-straw   composted straw
             c-gm      composted green manure
             c-hyacinth composted hyacinth
             pig-m     pig-manure
             straw-b   straw bedding
             rapes-c   composted rape seed
             vegetable                    /

      c(ca)  crops                 / barley, wheat, e-rice, m-rice, l-rice, l-sc-rice, g-manure
                                     gm-seeds, rapeseed, azolla, azolla-e, fodder /
      g(c)   grains                / barley, wheat, e-rice, m-rice, l-rice, l-sc-rice /
      cu(ca) upland crops          / fodder, vegetable /
      cp(ca) commodities purchased / hyacinth, pig-m, silt, nightsoil, amm-water, amm-bi, ssp /
      cs(ca) commodities sold      / barley, wheat, e-rice, m-rice, l-rice, l-sc-rice
                                     rapeseed, pigs, shoats, straw, vegetable /

      s      crop sequence / bar-r-r, bar-sr, bar-r, wh-sr, wh-r, gm-r-r, gm-sr, gm-s-sr, gm-r, rape-sr, fallow-sr /
      sh(s)  sequences with higher fertilizer application / bar-r-r, gm-r-r, wh-r, bar-r /

      cf(ca) fertilizers             / c-straw, c-gm, c-hyacinth,  pig-m, straw-b, nightsoil
                                       azolla, rapes-c, amm-water, amm-bi, ssp /
      nh     nutrients and humus     / n, p2o5, k2o, humus /
      n(nh)  nutrients               / n, p2o5, k2o /
      en     effective nutrients     / n-imm, n-tot, p2o5-eff, k2o-exch, humus /
      f      fertilization intensity / normal, high /
      p      pig raising activities  / r-shoats, r-pigs  /
      ss(s,f) sequence possibilities

      t      time periods  / nov-1, nov-mar, mar-2, apr-1, apr-2, may-1, may-jun, jun-2, jul-1, jul-2
                             aug-1, aug-2, sep, oct-1, oct-2 / ;

 ss(s,"normal") = yes; ss(sh,"high") = yes; display ss;

$Stitle data

 Scalar paddy   paddy land available  (mu)   / 268.6 /
        upland  upland available     (mu)    /   7.8 /

        muperha   conversion of mu to hectares (mu per hectar)   / 15 /
        jinperkg  conversion of jin to kg         (jin per kg)   / 2.0 /
        yperd     exchange rate              (yuan per dollar)   / 1.8 /

 Table mcp(s,c)  multi cropping patterns for paddy land (mu)

            barley wheat e-rice m-rice l-rice l-sc-rice g-manure gm-seeds rapeseed  azolla  azolla-e  fodder
 bar-r-r     .704  .193   .807            1.0
 gm-r-r            .193   .807            1.0             .704
 bar-sr      .859                                1.0      .141                        1.0     .859
 wh-sr             .859                          1.0      .141                        1.0
 gm-sr                                           1.0     1.0                          1.0     .859
 rape-sr                                         1.0      .141            .859        1.0
 fallow-sr                                       1.0      .141                                         .859
 gm-s-sr                                         1.0      .1       .9
 bar-r       .9                   1.0                     .1                          1.0
 wh-r               .9            1.0                     .1
 gm-r                             1.0                    1.0                          1.0

 Table cdata(ca,*)  crop data

* yield     : paddy land yield in jin per mu
* cash-cost : yuan per mu
* straw-y   : kg per kg output
* proc-price: yuan per ton
* quota-sale: tons

                  yield    cash-cost   straw-y  proc-price    quota-sale

 barley           427.6      11.0         1.0       226.0
 wheat            530.3      11.0         1.1       316.0
 e-rice           690.3      14.9          .8       232.0
 m-rice           962.7      23.6         1.0       238.0
 l-rice           558.2      18.9          .8       272.0
 l-sc-rice        857.7      25.2         1.0       233.0
 g-manure        4968.1       2.3
 rapeseed         221.1       9.8         1.5       720.0           4
 azolla          1149.0
 azolla-e        1149.0
 fodder          1200
 straw                                                44.0          1.2
 pigs                                               1200.0          4
 shoats                                             1800.0
 vegetable                                           375.0


 Parameter yield(ca)    paddy land crop yields      (ton per mu)
           yieldu(ca)   upland yields               (ton per mu) / fodder  .3, vegetable  .24 /
           cxcrop(s)    cash cost by sequence      (yuan per mu)
           aqsprice(ca) above quota sales price   (yuan per ton)

 Scalar    grainquota   grain sales quota (tons)  / 100 /;

 yield(ca)    = cdata(ca,"yield")/jinperkg/1000;
 cxcrop(s)    = sum(c, cdata(c,"cash-cost")*mcp(s,c));
 aqsprice(ca) = 1.1*cdata(ca,"proc-price"); aqsprice(c)= 1.5*cdata(c,"proc-price");

 Display yield,yieldu,cxcrop,aqsprice;

 Table purdata(ca,*)  purchase prices and limits

               price       quantity
*           (yuan per ton)  (tons)
 amm-water      30
 amm-bi        123
 nightsoil      20            7
 ssp           100          500
 pig-m          12        10000
 hyacinth                    15

 Table  pigio(ca,p)   pig raising input output relations

             r-shoats  r-pigs
 shoats          1       -.12
 pigs                    1
 straw-b         8       8
 g-feed        -3.3    -2.6
 straw           -8.8     -8.8
 fodder         -.55     -.50

 Parameter cxpig(p)  pig raising cash cost (yuan per ton) / r-shoats 90,  r-pigs 60  /
           gio(ca,g) grain feed mixing recipes (kg per kg) ;

 gio(g,g) = -1; gio("g-feed",g) = 1;

$Stitle labor use and supply

 Table lu(t,c)  labor use for crops (gongs per mu per period)

              barley  wheat  e-rice  m-rice  l-rice  l-sc-rice  g-manure  gm-seeds  rapeseed
 nov-1          8.15   8.15                    3.17      3.00                       14.90
 nov-mar        7.45   7.45    7.75    5.57    6.33     13.07       1.00     1.00   15.15
 mar-2          1.10   1.10    2.03     .74               .74                        1.85
 apr-1           .4     .4     3.25     .70               .70
 apr-2           .9     .9     3.36     .70               .70                        1.0
 may-1           .2     .2     8.20    2.92              4.42       3.00             .9
 may-jun       10.80   8.80   13.58   12.12    1.50     5.27                 6.70   8.40
 jun-2                 2.00   2.35     4.40    3.00      8.99
 jul-1                         2.48    5.41    3.00      5.00
 jul-2                          .70    5.59    3.00      4.50
 aug-1                         8.42    1.00    9.35      1.42
 aug-2                         1.88    3.65    4.92     4.54
 sep            1.30   1.30            3.20    5.09      4.15                        1.00
 oct-1          1.30   1.30            6.13    1.52                 1.25     1.25     .50
 oct-2          1.25   1.25            4.37     .12                 1.0      1.00     .30

 Parameters lab(t,s)   labor requirements for crop sequences   (gongs per day per mu)
            dlab(t,c)  daily labor requirements for single crop (gongs per day per mu)
            labj(t)    labor adjustment coefficient                      (proportion)  / aug-1  .12 /
            days(t)    number of days in periods                               (days)  /
                       nov-1 22, nov-mar 120, mar-2 16, (apr-1,apr-2) 15, may-1 14, may-jun 32, jun-2 15
                       jul-1 15, jul-2    12, aug-1 14, aug-2         21, sep   30, oct-1   14, oct-2 10 /

 Scalars    tday       total number of days in all periods  (days)
            lsup       labor supply                (gongs per day)   / 137 /;

 tday      = sum(t, days(t));
 dlab(t,c) = lu(t,c)/days(t);
 lab(t,s)  = sum(c, dlab(t,c)*mcp(s,c));

      Display lab, dlab, tday;

$Stitle fertilizer requiremets and supply

 Table nc(cf,nh)  nutrient composition (pct weight)

                n      p2o5     k2o   humus
 c-straw       .63      .11     .85    21.4
 c-gm          .40       .11    .35     2.34
 c-hyacinth    .24       .07    .11     2.64
 pig-m         .35       .32    .75
 straw-b       .60       .20    .80    15.9
 azolla        .34       .02    .12     2.58
 nightsoil     .65       .30    .25
 rapes-c      4.60      2.50   1.40
 amm-water    3.75
 amm-bi      17.00
 ssp                   15.00


 Table nu(cf,nh,en)  fertilizer utilization rates (pct)

                                            n.n-imm  n.n-tot  p2o5.p2o5-eff  k2o.k2o-exch  humus.humus
 (c-straw,c-gm,c-hyacinth)                       10       76        20           14           100
 (pig-m,straw-b,nightsoil)                        9       76         8           16           100
 azolla                                          20       76        20           14           100
 rapes-c                                         10       76        20           14
 amm-water                                       20       40
 amm-bi                                          22       45
 ssp                                                                25


 Table  pno(c,n)  plant nutrient offtake (pct weight of output)

              n   p2o5  k2o
 barley      3.0   1.0  2.0
 wheat       2.75  1.2  2.4
 e-rice      1.9   0.8  2.7
 m-rice      2.1   1.0  2.9
 l-rice      2.05  0.9  2.75
 l-sc-rice   1.9   0.9  3.0
 g-manure          0.11 0.35
 rapeseed    7.0   3.6  7.1


 Table nup(cu,en)  upland cropping nutrient requirement  (kg per mu)

              n-imm  n-tot  p2o5-eff  k2o-exch  humus
 fodder        2.0   11.0      1.0       2.5
 vegetable     4.58  21.35     2.57      3.93


 Table soil(c,*)  soil data - supplies of p2o5 k2o nitrogen requirement and irrigation water

                   p2o5-eff    k2o-exch     inr    iwr
*                      (p r o p o r t i o n s)    (tons per ha)
 barley              .6           .3        .47    4125
 wheat               .6           .3        .45    4125
 e-rice             -.1           .25       .45    4875
 m-rice              .2           .35       .45    6000
 l-rice              .6           .75       .3     4875
 l-sc-rice           .05          .25       .24    8250
 g-manure            .9          1
 rapeseed            .5           .4        .58


  Parameter  cno(c,n)     crop nutrient offtake               (ton per mu)
             enc(cf,en)   effective nutrient content          (pct weight)
             freq(c,en)   effective nutrient requirements     (ton per mu)
             sreq(s,en,f) crop sequence nutrient requirements (ton per mu)
             cxfert(cf)   fertilization cash cost             (yuan per ton) / azolla 1.3, rapes-c 200 /

  Scalars kc   k2o content of irrigation water (ppm)                  / 3.5 /
          hdr  humus decomposition rate        (kg per kg soil n)     / 9   /;

    cno(c,n)   = pno(c,n)*yield(c)/100;
    enc(cf,en) = sum(nh, nu(cf,nh,en)*nc(cf,nh))/100;

 Display nu, enc;

    freq(c,"n-imm")    = cno(c,"n")*soil(c,"inr");
    freq(c,"n-tot")    = cno(c,"n");
    freq(c,"p2o5-eff") = cno(c,"p2o5")*(1 - soil(c,"p2o5-eff"));
    freq(c,"k2o-exch") = cno(c,"k2o")*(1 - soil(c,"k2o-exch")) - soil(c,"iwr")*kc/muperha/1e6;
    freq(c,"humus")    = hdr*(freq(c,"n-tot") - freq(c,"n-imm"));

    sreq(s,en,"normal") = sum(c, freq(c,en)*mcp(s,c));


 Parameters mult(en)    nutrient req factor / n-imm 1.1, n-tot 1.05, p2o5-eff 1.25, k2o-exch 1.1 , humus 1.0 /
            hyield(c)   yield for high fertilizer applications            (tons per mu)
            hreq(c,en)  nutrient requirements for high application rates  (tons per mu);

 hreq(c,en) = freq(c,en)*mult(en);
 hyield(c)  = yield(c)*1.07;
 sreq(s,en,"high") = sum(c, hreq(c,en)*mcp(s,c));


 Parameters  syield(ca,s,f) yield of crop sequence       (ton per mu)
             sys(s,f)      straw yield of crop sequences (ton per mu) ;

 syield(c,s,"normal") = yield(c)*mcp(s,c);
 syield(c,s,"high")   = hyield(c)*mcp(s,c);

 sys(s,f) = sum(c, cdata(c,"straw-y")*syield(c,s,f));

*  e-rice straw is plowed under immediately, adjust straw yields and fertilizer requirement

 sys(s,f)     = sys(s,f) - syield("e-rice",s,f)*cdata("e-rice","straw-y");
 sreq(s,en,f) = sreq(s,en,f) - cdata("e-rice","straw-y")*syield("e-rice",s,f)*enc("c-straw",en)/100*mcp(s,"e-rice");

 syield("straw",s,f)   = sys(s,f);
 syield("rapes-c",s,f) = .8*syield("rapeseed",s,f);

  Display cno, freq, sreq;


 Table crec(ca,cf)   composting and fertilizing recipes

             c-straw  c-gm  c-hyacinth  azolla
 straw         .12
 g-manure              .12
 hyacinth                       .12
 pig-m         .05     .05      .05
 silt          .83     .83      .83
 azolla                                    1.0
 azolla-e                                   .2
                             ;
 crec(cf,cf)$( not sum(ca, crec(ca,cf))) = 1 ;
 Display crec;

 Table chemnall(ca,*)   chemical nitrogen (ammonium bicarbonate) allocations

* crops     : kg ammonium bicarbonate per mu of crop planted
* qsa       : quota sales allocation for pigs (kg per kg)
* aqsa      : above quota sales allocation (kg per kg)

                           crops    qsa     aqsa
 (barley,wheat)             49               .17
 e-rice                     53               .17
 (m-rice,l-rice,l-sc-rice)  45               .17
 rapeseed                   45               .45
 g-manure                    4
 pigs                               .225     .225

 Parameter schem(s)    chemical fertilizer allocation for crop sequences (tons amm-bi per mu) ;

    schem(s) = .001*sum(c, chemnall(c,"crops")*mcp(s,c));
    Display schem;

$Stitle model definition

 Variables  xcrop(s,f)     paddy land cropping activities     (mu)
            xupland(ca)    upland cropping activities         (mu)
            xpig(p)        pig raising activities            (ton)
            xfeed(g)       grain feed mixing                 (ton)
            xfert(ca)      fertilization activities           (kg)
            purchase(ca)   purchasing activities             (ton)
            sales(ca)      quota sales                       (ton)
            aqsales(ca)    above quota sales                 (ton)
            ccost          cash cost                        (yuan)
            income         brigade income                   (yuan)

 Positive variables xcrop, xupland, xpig, xfeed, xfert, purchase, sales, aqsales;

 Equations  labor(t)     labor balance               (gong per day)
            mb(ca)       material balance                     (ton)
            fert(en)     nutrient and humus balance           (ton)
            chemn        chemical nitrogen allocation         (ton)
            landp        paddy land constraint                 (mu)
            landu        upland land constraint                (mu)
            gmseed       green manure seed requirements        (mu)
            grainq       grain quota sales                    (ton)
            cdef         cash cost definition                (yuan)
            incdef       income definition                   (yuan);

 mb(ca)..  sum((s,f)$ss(s,f), syield(ca,s,f)*xcrop(s,f)) + sum(p, pigio(ca,p)*xpig(p)) + purchase(ca)$cp(ca)
         + sum(g, gio(ca,g)*xfeed(g)) + yieldu(ca)*xupland(ca)$cu(ca)
      =g=  (sales(ca) + aqsales(ca))$cs(ca) + sum(cf, crec(ca,cf)*xfert(cf)) ;

 labor(t)..  sum((s,f)$ss(s,f), lab(t,s)*xcrop(s,f)) =l= (1+labj(t))*lsup;

 fert(en)..  sum((s,f)$ss(s,f), sreq(s,en,f)*xcrop(s,f)) + .001*sum(cu, nup(cu,en)*xupland(cu))
         =l= .01*sum(cf, enc(cf,en)*xfert(cf));

 chemn..     sum((s,f)$ss(s,f), schem(s)*xcrop(s,f)) + sum(cs, chemnall(cs,"qsa")*sales(cs)
           + chemnall(cs,"aqsa")*aqsales(cs)) =g= purchase("amm-bi");

 landp..   sum((s,f)$ss(s,f), xcrop(s,f)) =l= paddy;

 landu..   sum(cu, xupland(cu)) =l= upland;

 gmseed..  sum((s,f)$ss(s,f), ((1-.16)*mcp(s,"gm-seeds") - .16*mcp(s,"g-manure"))*xcrop(s,f)) =g= 0 ;

 grainq..  sum(g, sales(g)) =g= grainquota;

 cdef..    ccost =e= sum((s,f)$ss(s,f), cxcrop(s)*xcrop(s,f)) + sum(p, cxpig(p)*xpig(p))
                   + sum(cf, cxfert(cf)*xfert(cf)) + sum(cp, purdata(cp,"price")*purchase(cp));

 incdef.. income =e= sum(cs, cdata(cs,"proc-price")*sales(cs) + aqsprice(cs)*aqsales(cs)) - ccost ;

 Model china brigade model  / all / ;

 sales.lo(cs) = cdata(cs,"quota-sale");
 purchase.up(cp)$purdata(cp,"quantity") = purdata(cp,"quantity");

 Solve china maximizing income using lp;

$Stitle solution reports

 Parameter frep(en,*)   fertilization demand and supply summary ;

 frep(en,"demand ")  = .01*sum(cf, enc(cf,en)*xfert.l(cf)) + fert.l(en);
 frep(en,"supply")   = .01*sum(cf, enc(cf,en)*xfert.l(cf));
 frep(en,"s-price")  = -fert.m(en);
 frep(en,cf)         = .01*enc(cf,en)*xfert.l(cf);

 Display frep;

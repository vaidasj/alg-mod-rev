option LP=convert;
option LP=convert;
option LP=convert;
$Title North-East Brazil Regional Agricultural Model (NEBRAZIL,SEQ=87)
$Stitle Set Definitions

$Ontext

   This model was used to study the root causes of stagnation and
   poverty in the rural economy of the northeast of Brazil. It was
   used to quantify the effects of policy and project intervention.


Kutcher, G P, and Scandizzo, P L, The Agricultural Economy of
Northeast Brazil. The Johns Hopkins University Press, Baltimore
and London, 1981.

$Offtext



 Set zz      zones  / west , sertao , southeast , east , agreste /

     z(zz)   zone of choice for submodel solution

     zr(zz)  zone with rotation restrictions / sertao , west /


     zrc(zz)     zones for which rotation constraint is binding / west, sertao /

     f           farm types /
                 fam-farm     family farms  10-30 ha
                 med-farm     medium-size farms  500-100 ha
                 ls-fazenda   livestock fazenda  gt 500 ha
                 fazenda      sharecropping and livestock  gt 500 ha
                 cocoa-plan   cocoa plantation  southeast only
                 sugar-plan   sugar-cane plantation  east only
                 dv-fazenda   diversified fazenda  no sharecropping        /


     c           crops /
                 cotton-m     cotton-moco
                 cotton-h     cotton-herbaceo
                 cotton-v     cotton-verdao
                 rice         rice
                 banana       banana
                 sweet-pot    sweet-potatoe
                 babacu       babacu
                 cacao        cacao
                 cashew-nut   cashew-nut
                 sugar-cane  sugar-cane
                 carnauba     carnauba
                 coconut      coconut
                 beans-arr    beans-de-arranca
                 beans-cor    beans-de-corda
                 oranges      oranges
                 manioc       manioc
                 corn         corn
                 castor-oil   castor-oil
                 sisal        sisal
                 other        other crops    /

* why don't we have oranges and cacao as long cycle also?
     cl(c)       long cycle crops  /
                    cotton-h , babacu , cacao, cashew-nut , carnauba , coconut , oranges, castor-oil , sisal /

     ca(c)       annual crops


     cex(c)      export crops / cotton-m, cotton-h, cotton-v, babacu, cacao, cashew-nut, carnauba, castor-oil, sisal /

     ct(c)       regionally traded commodities / rice /

     tm          months  / jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec /


     p           cropping activities /
                 crop-01       cotton-moco
                 crop-02       cotton-herbaceo
                 crop-03       cotton-verdao
                 crop-04       rice
                 crop-05       banana
                 crop-06       sweet potatoes
                 crop-07       babacu
                 crop-08       cacao
                 crop-09       cashew nuts
                 crop-10       sugar cane
                 crop-11       carnauba
                 crop-12       coconut
                 crop-13       beans-de-arranca
                 crop-14       beans-de-corda
                 crop-15       oranges
                 crop-16       manioc
                 crop-17       corn
                 crop-18       castor oil
                 crop-19       sisal
                 crop-20       cotton-moco      beans-de-corda   corn
                 crop-21       rice             beans-de-corda   corn
                 crop-22       rice             manioc           corn
                 crop-23       rice             corn
                 crop-24       beans-de-corda   manioc           corn
                 crop-25       beans-de-corda   corn
                 crop-26       manioc           corn
                 crop-27       cotton-moco      beans-de-corda
                 crop-28       cotton-moco      corn
                 crop-29       cotton-herbaceo  beans-de-arranca corn
                 crop-30       cotton-herbaceo  beans-de-corda   corn
                 crop-31       cotton-verdao    beans-de-corda   corn
                 crop-32       cashew-nut       manioc           corn
                 crop-33       beans-de-arranca corn
                 crop-34       beans-de-arranca corn             castor-oil
                 crop-35       beans-de-corda   corn             castor-oil
                 crop-36       beans-de-arranca manioc           corn
                 crop-37       banana           coconut          /

     pl(p)       long cycle crop activities

     pa(p)      annual crop activities


     g           demand segments / seg1*seg11 /

     sd          land quality /
                 good           flat and near water  or  humid and low-lying
                 medium         hilly or more arid than good land
                 pasture        cultivated pasture or tree crops
                 fallow         land                                         /

     s(sd)        land used in model / good , medium , pasture /

     sc(sd)       crop lands   / good , medium /

     sl(sd)       livestock feeding alternative land types / medium , pasture /


     ty          year / 1960*1969 /

     st          states / rio-grande , paraiba , pernambuco , ceara , piaui , maranhao , alagoas , sergipe , bahia /

     r           livestock feeding alternatives / rec-1*rec-3 /

     dr           family consumption bundle alternatives / one, two, three /

     sh(zz,f)    sharecropping possibilites / sertao.(med-farm,fazenda) /

     km          technology characteristics /
                 equipment, fertilizer, seeds, sprouts, itech / ;

 z(zz) = yes;         ca(c) = not cl(c); display cl;
 Alias(z,zp),  (s,sp);


 Scalar    dpm     days per month / 25 /;

$Stitle land data

 Parameter pfm(s,p)   pasture land available in fourth yr of crop-01 / pasture.crop-01   .25 /

 Table landc(zz,sd,f)  average farm land structure (ha)

                      fam-farm    med-farm  ls-fazenda     fazenda  cocoa-plan  sugar-plan  dv-fazenda

 west.good              2.700      15.610      49.777
 west.medium            3.300      16.910      58.433
 west.pasture           3.710      39.300     217.470
 west.fallow            5.330      56.630     267.690
 sertao.good            2.495      14.920                  44.376
 sertao.medium          2.495      22.380                  72.404
 sertao.pasture         3.530      31.510                 143.240
 sertao.fallow          5.610      63.880                 282.540
 southeast.good         7.970      18.472     283.887                 163.696
 southeast.medium       7.970      10.848     152.863                  88.144
 southeast.pasture      2.640       4.630     124.200                  71.620
 southeast.fallow       6.030       9.120     127.610                  73.580
 east.good              1.332       9.589                                          81.146
 east.medium            2.368      11.721                                          91.505
 east.pasture           1.670      13.790                                         157.750
 east.fallow            2.580      15.160                                         222.180
 agreste.good           1.615       9.004                                                      94.048
 agreste.medium         2.325      11.936                                                     141.072
 agreste.pasture        2.440      21.920                                                     274.450
 agreste.fallow         1.490       7.760                                                      59.280

 Table ldp(s,s) land downgrading possibilities

                good     medium
 good             1
 medium          -1         1
 pasture                   -1


 Table lcc(zz,s,c)  long cycle crop land commitment (percentage)

                     babacu  cacao  cashew-nut    carnauba     coconut  castor-oil   sisal

 west.good             26.4              0.1         3.0
 west.medium           14.0              0.1         6.9
 sertao.good                             0.5         1.5          0.7        0.9
 sertao.medium                           0.9         0.9          0.7        0.4
 southeast.good                3.5                                           0.2
 southeast.medium              3.5                                           0.8
 east.good                                                        6.9
 east.medium                                                      3.4
 agreste.good                                                                          0.4
 agreste.medium                                                                        2.5

 Parameter lcct(zz,s)     total long cycle crop land commitment (proportion)
           lccp(s,f,zz,c) long cycle crop land limits (ha)
                                           ;
 lcct(zz,s)        = sum(cl, lcc(zz,s,cl))/100;
 lccp(s,f,zz,cl)   = landc(zz,s,f)*lcc(zz,s,cl)/100;
 Display lcct,lccp;

$Stitle crop data

 Table cropc(c,*) elasticities and expenditure data

              expend        engel
*            mill cr
 cotton-m      1120         .80
 cotton-h      1120         .80
 cotton-v      1120         .80
 rice          4408         .54
 banana        1179         .34
 sweet-pot     1670         .50
 babacu        2903         .10
 cacao           85         .60
 cashew-nut    2903         .75
 sugar-cane    3222         .75
 carnauba      1120         .80
 coconut       1172         .49
 beans-arr      472         .50
 beans-cor      472         .50
 oranges       1722         .7
 manioc        1670         .27
 corn           960         .25
 castor-oil    1411         .65
 sisal         1120         .80


 Table qd(c,zz) reference demand 1978  (tons)

                   west      sertao   southeast        east     agreste

 cotton-m         59468      460880
 cotton-h                    108565                               152341
 cotton-v                    146207
 rice            274049       68147       22273
 banana            1408        7012                     450        5925
 sweet-pot                     8408                    5817
 babacu          621852
 cacao                                   203098
 cashew-nut         453       10549
 sugar-cane                    3014                   21036       17482
 carnauba        259045      577701
 coconut                       4010                    1520
 beans-arr                    23070       32733          12       24021
 beans-cor        16204       89212       35074                    5513
 oranges                                                          10332
 manioc          401564      974343     2358124       56913      258822
 corn            166852      317932      115394         969      128891
 castor-oil                   21567        1861
 sisal                                                           103766

 Table price0(c,zz)     crop reference prices  (cr per kg)

                   west      sertao   southeast        east     agreste
 cotton-m          2.00        2.10
 cotton-h                      2.00                                1.90
 cotton-v                      1.90
 rice               .52        1.50        1.50
 banana            3.00        4.00                    3.00        4.00
 sweet-pot                      .24                     .20
 babacu            1.00
 cacao                                     5.00
 cashew-nut        1.00        1.00
 sugar-cane                    30.                      38.         35.
 carnauba           .80         .80
 coconut                        .4                      .4
 beans-arr                     2.60        2.50        2.20        2.50
 beans-cor         1.50        1.60        1.80                    1.50
 oranges                                                           10.
 manioc             .22         .17         .17         .20         .17
 corn               .42         .53         .50         .51         .51
 castor-oil                    1.80        1.50
 sisal                                                             1.00


 Scalar    frisch       coefficient                      / -2 /
 Parameter texp         total expenditure            (cr)
           bs(c)        expenditure budget share
           eta(c)       own price elasticities

           price(c,zz)  crop refenrence price (cr per ton)
           td(c)        total crop demand in base year (tons)
           alpha(c,zz)  demand curve intercept      (cr per ton)
           beta(c,zz)   demand curve gradient       (cr per ton2)
           pmax(c,zz)   maximum price               (cr per ton)
           pmin(c,zz)   minimum price               (cr per ton)
           qmax(c,zz)   maximum consumption          (1000 tons)
           qmin(c,zz)   minimum consumption          (1000 tons)
           incr(c,zz)   segment increment            (1000 tons)
           ws(c,zz,g)   welfare segments             (mill cr)
           rs(c,zz,g)   revenue segment definition   (mill cr)
           qs(c,zz,g)   quantity segment definition  (1000 ton);


 texp               = sum(c, cropc(c,"expend"));
 bs(c)           = cropc(c,"expend")/texp;
 eta(c)          = -cropc(c,"engel")*(bs(c) - (1 - bs(c)*cropc(c,"engel"))/frisch);

 price(c,zz) = 1000*price0(c,zz);
 td(c)       = sum(zz, qd(c,zz));
 beta(c,zz)$(eta(c)*qd(c,zz)) = price(c,zz)/qd(c,zz)/eta(c);
 alpha(c,zz)     = price(c,zz) - beta(c,zz)*qd(c,zz);

 pmax(c,zz)      = 2*price(c,zz);
 pmin(c,zz)      = .2*price(c,zz);
 qmin(c,zz)$beta(c,zz) = (pmax(c,zz) - alpha(c,zz))/beta(c,zz) / 1000;
 qmax(c,zz)$beta(c,zz) = (pmin(c,zz) - alpha(c,zz))/beta(c,zz) / 1000;
 incr(c,zz)      = (qmax(c,zz) - qmin(c,zz))/(card(g)-1);

 qs(c,zz,g)      = qmin(c,zz) + incr(c,zz)*(ord(g)-1);
 ws(c,zz,g)      = alpha(c,zz)*qs(c,zz,g)/1000 + .5*beta(c,zz)*sqr(qs(c,zz,g));
 rs(c,zz,g)      = alpha(c,zz)*qs(c,zz,g)/1000 + beta(c,zz)*sqr(qs(c,zz,g)) ;
 Display price,qd,eta,beta,alpha,pmax,pmin,qmax,qmin,qs,ws,rs;

$Eject

 Table labor(p,zz,tm)  monthly cropping labor requirements (man-days per ha)

                         jan       feb       mar       apr       may       jun       jul       aug      sep

 crop-01.west           2.93      4.11      4.62      3.28      1.64      2.06      5.60      5.14      3.00
 crop-01.sertao         0.67      1.35      3.10      3.26      3.55      1.97      1.13      2.48      4.43
 crop-02.sertao         2.99      2.84      5.18      4.81      6.57      8.54      7.25      7.55      5.87
 crop-02.agreste        4.79     10.89     18.70      9.83      8.03     20.95     15.67     15.48     11.35
 crop-03.sertao         4.43      4.81      5.92      6.87      4.46      2.72      2.47      3.76      3.64
 crop-04.west          16.70     12.78      9.89      9.57      8.91      7.97      3.53      2.63      3.44
 crop-04.sertao        13.35     11.69     11.64      9.09     11.12     10.91      5.87      3.10      3.46
 crop-04.southeast      7.50               18.75      1.88     18.75     19.38     13.13                5.88
 crop-05.west          10.79      3.92      5.36      4.03      6.63      7.00      7.31      3.07      2.71
 crop-05.sertao         4.22      5.23      5.44      5.33      7.69      6.50      7.23      4.11      3.72
 crop-05.east          10.76     10.48      3.52      7.46      4.50     12.00     10.12      3.76      9.17
 crop-05.agreste        8.24      0.89      5.43      3.31     11.13     10.33      3.27      2.65      5.47
 crop-06.sertao         2.61      3.55      5.59      2.29      9.37      8.50      9.00      4.22     10.79
 crop-06.east           8.29      4.38      4.50      4.13      5.64      3.71      2.13      3.24     16.00
 crop-07.west           1.05      0.94      0.89      0.71      0.42      0.53      1.03      1.25      4.10
 crop-08.southeast      1.30      0.62      4.58      3.40      1.54      2.04      3.82      2.74      2.62
 crop-09.west           0.95      0.45      2.10      0.38      1.23      2.39      0.15      1.57      0.96
 crop-09.sertao         0.14      0.25      1.49      0.82      0.58      1.40      1.61      2.07      2.63
 crop-10.sertao         3.11      5.52      8.19      8.28      2.92      6.67      2.21      5.50      9.51
 crop-10.east           4.41      6.10      4.68      4.73      3.25      6.31      3.99      7.73      6.45
 crop-10.agreste        5.78      3.37      4.03      7.09      4.64      5.91      7.67      9.23      5.93
 crop-11.west           0.13      0.52      0.01      0.01      0.02                5.10      4.04      7.31
 crop-11.sertao                             0.10                0.12      0.01      0.31      1.39      2.04
 crop-12.sertao         0.75      1.33      2.62      3.03      5.20      3.62      2.19      1.38      1.16
 crop-12.east           4.03      1.63      3.03      2.83      2.34      2.18      2.69      2.06      3.50
 crop-13.sertao         4.72      2.17      5.36      7.27      4.64      4.44      4.43      4.53      3.13
 crop-13.east          16.67     19.33      5.67     19.42      5.80      9.50     10.33      6.67      3.17
 crop-14.west          10.01     10.15     12.37      8.08      5.42      9.27      7.98      5.18      3.05
 crop-14.sertao         4.06      4.06      8.19      7.52      4.13      4.19      2.27      5.22      2.32
 crop-15.agreste        2.00      2.36      4.13      2.13      7.18      5.88      3.21      9.20      6.89
 crop-16.west           5.89      5.66      6.46      2.96      2.40      1.97      3.72      6.04      5.54
 crop-16.sertao         3.69      3.99      5.14      5.20      5.13      3.77      3.07      5.48      5.55
 crop-16.southeast      5.52      3.30      3.88      2.47      3.87      5.06      5.57      5.54      5.81
 crop-16.east           2.79      6.83      5.88      7.80      7.79      3.25      7.75      7.93      7.18
 crop-16.agreste        5.71      7.60      7.28      8.15      8.48     10.71      9.34     12.76      8.93
 crop-17.west           5.05      6.04      3.71      2.03      1.46      2.00      2.73      1.70      3.95
 crop-17.sertao         4.60      4.80      7.75      7.35      1.27      3.83      5.42      6.20      1.64
 crop-17.agreste        9.19     14.42     10.59     12.01      3.47     10.75      5.88      7.30      4.14
 crop-18.sertao         6.00      6.35      6.76      2.14      6.35      7.20      1.23      6.77      8.76
 crop-19.agreste        1.22      1.11      0.56      0.78      1.19      0.44      1.89      3.04      2.93
 crop-20.west           9.08     11.11      6.28      3.04      3.15      6.60      5.86      6.29      5.33
 crop-20.sertao         7.94      6.48      7.92      6.35      5.36      4.08      2.36      4.12      4.77
 crop-21.west          12.07     13.15      7.62      6.38     10.12     10.47      9.18     12.05      5.11
 crop-22.west          13.99     12.91      9.40      7.29     11.82     12.71      6.48      7.56      6.16
 crop-23.west          13.46     14.66      9.24      7.45     12.29      8.73      4.71      6.40      6.72
 crop-24.west          13.47     12.11      8.88      7.47      4.45      4.32      3.24      6.61      6.81
 crop-24.sertao         7.41     11.11      9.84      7.79      7.93      6.05      5.21      4.94      3.05
 crop-25.west          16.14     11.94      8.54      2.91      4.69      6.07      5.96      4.35      5.45
 crop-25.sertao         7.96     10.08     12.01      8.10      6.49      4.91      2.99      2.40      3.18
 crop-25.southeast     21.67      3.65      6.55      2.36      1.98      3.62      4.15      8.33      2.92
 crop-25.agreste       12.46     11.35     24.38     22.03     16.91      9.47     10.97      9.70      4.93
 crop-26.west          22.99     11.34      7.40      4.03      3.79      9.17      6.06      2.37     18.73
 crop-27.sertao         7.48      3.55      5.95      5.92      5.72      4.09      4.85      3.67      5.10
 crop-28.sertao         8.10      5.21     12.49      8.77      5.83      3.80      2.21      5.09      5.34
 crop-29.sertao         4.31      5.95      4.62      8.79      9.48      8.04      4.57      4.89      4.33
 crop-29.agreste        5.54     10.30      9.24      8.97     15.82     13.00     14.74     10.64      5.64
 crop-30.sertao        17.99     12.30     12.45     10.45     11.70      8.54      7.02      8.11      6.15
 crop-30.agreste        9.18      3.94     16.15     23.69     28.12     20.58     17.73     15.06      4.58
 crop-31.sertao         9.30      8.53      9.42      5.91      4.57      4.06      4.19      5.04      7.20
 crop-32.sertao         3.78      9.07      3.68      6.42      3.63      8.67      3.42      2.88      2.35
 crop-33.sertao         3.34      3.20      5.34      6.45      5.92      6.77      3.89      5.87      5.72
 crop-33.southeast       4.19      8.81      5.30      4.67      5.12      6.86      0.55      4.84      8.19
 crop-33.east           9.19      6.30     11.96     26.07     25.52     25.74     21.85     19.72      9.59
 crop-33.agreste        6.87     10.19     10.61      9.14     18.38     11.50      9.22     13.36      3.85
 crop-34.sertao         2.16      8.62      6.18      9.21      6.37     11.72      6.36      8.11      9.63
 crop-34.southeast      4.74      0.88      0.59      7.79      3.79      7.12      5.26      4.98     12.03
 crop-35.sertao        10.13     13.75     11.40     12.42      8.62      8.08      5.43      5.26      3.75
 crop-36.southeast      4.51      9.52     13.22      5.36      4.35      3.66      7.33      4.13      9.80
 crop-36.agreste        7.44     10.21      9.63     16.18     20.11     16.86     14.86     14.00      8.04
 crop-37.east           3.17      6.40      1.19      2.59      4.31      1.17      8.43      7.79      4.59

               +        oct       nov       dec

 crop-01.west           1.81      2.65      1.96
 crop-01.sertao         3.73      1.52      0.50
 crop-02.sertao         4.67      4.69      2.50
 crop-02.agreste        8.38      8.23      4.54
 crop-03.sertao         3.35      2.14      1.41
 crop-04.west           3.29      5.58      8.27
 crop-04.sertao         2.20      4.07      2.80
 crop-04.southeast     16.38      8.50     11.13
 crop-05.west           3.84      1.62      1.77
 crop-05.sertao         3.44      3.64      2.40
 crop-05.east           7.00     11.71      4.81
 crop-05.agreste        3.67      3.18      1.44
 crop-06.sertao         5.79      2.55      4.61
 crop-06.east           2.38      5.27     15.49
 crop-07.west           3.81      1.89      3.50
 crop-08.southeast      3.37      4.44      3.95
 crop-09.west           0.72      2.48      1.19
 crop-09.sertao         3.68      2.69      1.03
 crop-10.sertao       12.68      6.79      4.74
 crop-10.east          8.38      7.41      6.56
 crop-10.agreste       9.05      7.59      6.37
 crop-11.west          9.85      8.69      9.90
 crop-11.sertao        0.96      5.44      0.48
 crop-12.sertao        2.54      1.95      1.41
 crop-12.east          3.05      1.64      1.49
 crop-13.sertao        0.38      0.64      0.51
 crop-13.east          7.50      5.00      1.25
 crop-14.west          3.08      4.50      3.53
 crop-14.sertao        1.64      2.46      1.71
 crop-15.agreste       3.30      9.70      8.87
 crop-16.west          4.77      3.45      3.18
 crop-16.sertao        3.93      2.88      2.95
 crop-16.southeast     5.98      7.96     10.32
 crop-16.east          5.78      6.56      7.65
 crop-16.agreste      10.22      6.18      8.34
 crop-17.west          2.77      6.37      5.98
 crop-17.sertao        3.38      0.52      1.09
 crop-17.agreste       4.25      3.49      2.11
 crop-18.sertao       10.82      1.68      2.73
 crop-19.agreste       4.99      7.73      9.44
 crop-20.west          4.77      4.00      6.67
 crop-20.sertao        3.89      2.94      1.63
 crop-21.west          6.37      6.01      8.96
 crop-22.west          4.31      4.72      4.99
 crop-23.west          6.37      5.89      7.97
 crop-24.west          6.97      7.24      6.42
 crop-24.sertao        1.88      1.08      0.74
 crop-25.west          6.45      9.03      9.11
 crop-25.sertao        1.70      1.78      1.78
 crop-25.southeast     8.47      8.94     21.62
 crop-25.agreste       6.41      0.53      0.89
 crop-26.west         10.39     10.83      7.32
 crop-27.sertao        3.28      0.76      0.68
 crop-28.sertao        3.52      2.26      0.30
 crop-29.sertao        3.53      2.54      1.04
 crop-29.agreste       4.90      4.73      4.92
 crop-30.sertao        2.99      1.34      1.20
 crop-30.agreste       9.76      7.39      2.67
 crop-31.sertao        6.02      1.55      1.23
 crop-32.sertao        4.25      2.78
 crop-33.sertao        3.09      1.74      2.50
 crop-33.southeast     5.03      6.92      3.71
 crop-33.east          3.63      4.00      4.43
 crop-33.agreste       3.87      2.65      1.09
 crop-34.sertao       12.46      5.04      2.15
 crop-34.southeast     9.17      9.73     15.56
 crop-35.sertao        4.41      6.05      4.76
 crop-36.southeast     2.73      6.43      3.73
 crop-36.agreste       6.69      5.49      5.26
 crop-37.east          5.86      5.07      5.05

$Stitle livestock data

 Parameter lpasm(tm) labor requirements:pasture maintenance (man-days per ha)   / jan = 3 , feb = 2 , (nov,dec) = 5 /
           pricel(zz) livestock price (cr per head) /  west = 103 , sertao  = 186 , southeast = 108
                                                       east = 310 , agreste = 211 /
           llive(r,tm,zz) labor requirements: livestock (man-days per head)

 Scalar    lpas      labor for pasture maintenance (man-month per head???) / .04 /
           vetpr     livestock vetinary cost            (cr per head)   /  1  /


 Table lland(s,r,zz)  livestock feeding alternative components (ha per head)

                     west  sertao  southeast   east  agreste

 medium.rec-1        1.186   1.005     1.274    .795    1.407
 medium.rec-2         .449    .205      .507    .269     .611
 medium.rec-3         .508    .267      .449    .366     .631
 pasture.rec-1       .756    .617      .422    .464     .209
 pasture.rec-2      3.310   6.100     1.383   2.051    2.030
 pasture.rec-3      1.417   1.623      .487    .943     .910


 Table lfrat(r,zz) purchased rations for lvstk feed recipes

                     west  sertao  southeast   east  agreste
 rec-1              1.729   6.179     2.839   8.596    5.141
 rec-2              2.863  12.444     3.701  12.876   21.646
 rec-3              7.567  61.068     9.304  37.974   49.845
                                                            ;

 llive(r,tm,zz) = lpas + lland("pasture",r,zz)*lpasm(tm);
 Display llive;

$Stitle farm data


 Table fnum0(zz,f)  number of farms

               fam-farm    med-farm  ls-fazenda     fazenda  cocoa-plan  sugar-plan  dv-fazenda
 west             37001      113651       14569
 sertao           62599      252912                   11221
 southeast        26824       76574        4766                    5208
 east             11964       17623                                            1314
 agreste          69580       68545                                                        5168


 Table famsize(zz,f)  family sizes (adult worker equivalents)

              fam-farm    med-farm  ls-fazenda     fazenda  cocoa-plan  sugar-plan  dv-fazenda
 west            1.930       1.870       1.750
 sertao          2.220       2.610                   2.490
 southeast       1.970       1.420       1.220                   1.220
 east            1.790       1.660                                           1.140
 agreste         2.680       2.820                                                       1.770


 Parameter spr(c)  propreitor s share of cropper production (proportion) /
                   (cotton-m,cotton-h,cotton-v,rice)             .5
                   (sweet-pot,beans-arr,beans-cor,manioc,corn)   .3     /
           fnum(zz,f) number of farms (1000s);


 fnum(zz,f) = fnum0(zz,f)/1000;

$Stitle yield data: survey

 Parameter yield(c,p,s,zz)  yield estimates (tons per ha);

 Table yield0(c,p,s,zz)  stratified yield estimates (kg per ha)
* except sugar-cane: tons per ha  oranges: hundreds of fruits

                    good.west good.sertao good.southeast good.east good.agreste medium.west medium.sertao

 cotton-m.crop-01       174        171                                               139          146
 cotton-m.crop-20       119        160                                               108          157
 cotton-m.crop-27                  153                                                            153
 cotton-m.crop-28                  297                                                            264
 cotton-h.crop-02                  552                                   848                      552
 cotton-h.crop-29                  120                                   269                      167
 cotton-h.crop-30                  227                                   403
 cotton-v.crop-03                  380                                                            266
 cotton-v.crop-31                  331                                                            181
 rice.crop-04          1176       1245           770                                 985         1283
 rice.crop-21           997                                                          721
 rice.crop-22           840                                                          797
 rice.crop-23          1196                                                         1098
 banana.crop-05         351        184                                   221         147           83
 banana.crop-37                                               57
 sweet-pot.crop-06                4446                      2896
 babacu.crop-07         722                                                          306
 cacao.crop-08                                   898
 cashew-nut.crop-09     223        195                                                55          126
 cashew-nut.crop-32                149                                                             10
 sugar-cane.crop-10                 20                         48         45                       10
 carnauba.crop-11      1069       3336                                               876         6247
 coconut.crop-12                    12                        50                                  118
 coconut.crop-37                                              16
 beans-arr.crop-13                 454                       216
 beans-arr.crop-29                 193                                   285                      174
 beans-arr.crop-33                 292           284         329         274                      171
 beans-arr.crop-34                 188           275
 beans-arr.crop-36                               305                     288
 beans-cor.crop-14      437        386                                               386          224
 beans-cor.crop-20      250        124                                               101          142
 beans-cor.crop-21       89                                                           28
 beans-cor.crop-24      109         93                                                90           60
 beans-cor.crop-25      207        194           170                     251         203         226
 beans-cor.crop-27                  90                                                            173
 beans-cor.crop-30                  77                                   115
 beans-cor.crop-31                 180                                                            171
 beans-cor.crop-35                 227                                                            147
 beans-cor.crop-36
 oranges.crop-15                                                          92
 manioc.crop-16        4853       4766          6891        3795        4456        4283         4005
 manioc.crop-22        2262                                                         1072
 manioc.crop-24         994       3714                                              1963         3060
 manioc.crop-26        1124
 manioc.crop-32                   4334                                                           1928
 manioc.crop-36                                 3361                    3408
 corn.crop-17           399        583                                   725        1137
 corn.crop-20           399        286                                               183          266
 corn.crop-21           298                                                          255
 corn.crop-22           311                                                          225
 corn.crop-23           395                                                          303
 corn.crop-24           329        239                                               313           60
 corn.crop-25           493        407           318                     373         397          290
 corn.crop-26           287
 corn.crop-28                      484                                                            489
 corn.crop-29                      485                                   536                      237
 corn.crop-30                      463                                   361
 corn.crop-31                      287                                                            202
 corn.crop-32                      264                                                            250
 corn.crop-33                      297           490         369         594                      304
 corn.crop-34                      386           255
 corn.crop-35                      296                                                            302
 corn.crop-36                                    230                     503
 castor-oil.crop-18                336                                                            324
 castor-oil.crop-34                291           264
 castor-oil.crop-35                315                                                            148
 sisal.crop-19                                                          2244

          +         medium.southeast medium.east medium.agreste

 cotton-h.crop-02                                       569
 cotton-h.crop-29                                       149
 cotton-h.crop-30                                       133
 banana.crop-05                           803           174
 banana.crop-37                            39
 cacao.crop-08              616
 sugar-cane.crop-10                        42            30
 coconut.crop-12                           25
 coconut.crop-37                           18
 beans-arr.crop-13                        165
 beans-arr.crop-29                                      221
 beans-arr.crop-33                        152           260
 beans-arr.crop-34           61
 beans-arr.crop-36           72                         287
 beans-cor.crop-25          178                         211
 beans-cor.crop-30                                      352
 manioc.crop-16            4584          5822          3964
 manioc.crop-36            3083                        1031
 corn.crop-17                                           563
 corn.crop-25               278                         264
 corn.crop-29                                           544
 corn.crop-30                                           212
 corn.crop-33                             477           442
 corn.crop-34                74
 corn.crop-36               147                         328
 castor-oil.crop-34         128
 sisal.crop-19                                         1666
                                                                               ;

 yield(c,p,s,zz) = yield0(c,p,s,zz)/1000;


 Set xposs(s,zz,p)   cropping possibilities
     fposs(f,zz)     farm type possibilites
     cpossn(c,zz)    commodity consumption possibilities
     cposs(c,f,zz)   commodity farm possibilites
     cpossp(c,zz)    commodity production possibilities
     cpl(c,p)        long cycle crop-cropping activities
     lposs(s,zz,c,p) long cycle cropping activites

                                           ;
 xposs(s,zz,p) = yes$sum(c, yield(c,p,s,zz));
 fposs(f,zz)   = yes$sum(s, landc(zz,s,f));
 cpossn(c,zz)  = yes$qd(c,zz);
 cpossp(c,zz)  = yes$sum((p,s), yield(c,p,s,zz));
 cposs(c,f,zz) = yes$(cpossp(c,zz)*fposs(f,zz));
 cpl(cl,p)    = yes$sum((s,zz)$lcc(zz,s,cl), yield(cl,p,s,zz));
 pl(p)        = sum(cl,cpl(cl,p));
 pa(p)        = not pl(p);
 lposs(s,zz,cl,pl) = yes$(xposs(s,zz,pl)*cpl(cl,pl));
 Display xposs,fposs,cpossn,cposs,cpossp,pl,pa,cpl,lposs;

$Stitle revenue data: risk

 Table weightsz(st,zz) weights-states to zones (farmed land ha)

                  west   sertao  southeast    east  agreste

 rio-grande             3295774             471259   897568
 paraiba                3492833             340369  1149786
 pernambuco             3433932             999385  1995194
 ceara                 12467943
 piaui        13114766
 maranhao     23271544
 alagoas                 195356            1050967   929588
 sergipe                 371134                     1683415
 bahia         7306239  8110834   12610111


 Table crev(st,c,ty) crop revenue series by state (cr per ha)

                             1960    1961    1962    1963    1964    1965    1966    1967    1968    1969

 rio-grande.cotton-m          434     453     491     438     508     506     350     513     463     444
 rio-grande.rice              610     649    1066    1105     834     953     726     945     838     644
 rio-grande.banana           7205    9081   10732    9164   11311   11415    8231   10772    9093    9579
 rio-grande.cashew-nut       1681    2105    2008    1425    1688    1107    1134    1328    1244    2890
 rio-grande.sugar-cane       2189    2505    2551    2766    2415    2507    1868    2395    2203    2801
 rio-grande.beans-cor         445     460     951     552     321     495     607     399     411     483
 rio-grande.manioc            590     716    1139     799     712     684     946    1222     920     757
 rio-grande.corn              226     286     400     300     218     248     273     336     293     270
 paraiba.cotton-m            1710    1795    3117    1555    2140    1900    1609    2077    2121    2043
 paraiba.rice                 786     818    1235    1094     649    1347     925    1143    1191     916
 paraiba.banana              9841   15642   14831   12811   11072    9423    7071   10016    9101    8284
 paraiba.cashew-nut          1694    1787    2860    1964    1205    1432    1834    1894    2076    2024
 paraiba.sugar-cane          2194    2351    2451    2374    2623    2606    1799    2679    2580    2083
 paraiba.beans-cor            508     529    1019     644     405     694     517     582     444     555
 paraiba.manioc              1175    1734    2050    1728    1702    1689    1494    1733    1260    1417
 paraiba.corn                 373     414     622     429     372     523     383     361     318     353
 pernambuco.cotton-m          517     538     433     378     442     529     402     523     539     448
 pernambuco.rice             1327     967    1500    1554    1256    1161    1205    1534    1347    1294
 pernambuco.banana           5315    6024    7735    8330    6463    5944    5790    6074    6426    6828
 pernambuco.cashew-nut       2873    2750    2362    3047    2538    2331    1989    2730    3540    2429
 pernambuco.sugar-cane       1668    1873    1707    2513    2389    2119    1206    1835    1942    2009
 pernambuco.beans-cor         602     599     995     612     451     718     558     576     544     866
 pernambuco.manioc            939    1695    2458    1250     873    1132    1282    1543    1410    1628
 pernambuco.corn              251     388     553     354     362     400     324     364     323     412
 ceara.cotton-m               587     610     679     483     591     521     379     550     651     669
 ceara.rice                  1034    1231    1613    1283    1199    1116    1190    1497    1281    1138
 ceara.banana                5590    5798    7239    6118    6071    5249    4528    6096    5744    6888
 ceara.cashew-nut            1131    1239    1042     810     603     490     376     548    1502    1359
 ceara.sugar-cane            1365    1480    1386    1254    1214    1039    1112    1569    1477    1334
 ceara.beans-cor              387     358     780     479     289     599     510     479     454     453
 ceara.manioc                 878    1017    1862    1325    1077     972     950    1093    1255    1294
 ceara.corn                   261     338     536     375     349     361     310     344     332     340
 piaui.cotton-m               337     476     717     369     715     521     280     490     543     462
 piaui.rice                   493     620     909     813     578     530     554     771     721     608
 piaui.banana                7319    7178    7077    6885    7607    8598    7379    8041    6589    6967
 piaui.cashew-nut             425     461     628     449     336     476     478     574     427     456
 piaui.sugar-cane             650     798    1347     996     835    1163     692     873     892     905
 piaui.beans-cor              431     593     863     435     257     510     398     463     397     423
 piaui.manioc                 719     724     758     657     852     402     587     820     856     655
 piaui.corn                   232     288     364     300     278     354     269     297     279     278
 maranhao.cotton-m            219     317     423     313     387     319     232     278     317     335
 maranhao.rice                464     565    1011     765     502     448     554     585     622     521
 maranhao.banana             4983    5012    5597    4579    3947    3616    3623    4154    4364    6645
 maranhao.cashew-nut         1645    1398    1386    1107    1050     796    2654    2455    1430     539
 maranhao.sugar-cane         1080     801     857     871     731     787     895    1164    1386    1400
 maranhao.beans-cor           661     665     759     591     496     632     770     716     597     663
 maranhao.manioc              515     561     576     549     483     496     539     543     573     526
 maranhao.corn                216     231     328     248     306     295     237     279     280     293
 alagoas.cotton-m             517     607     540     340     394     524     392     539     533     544
 alagoas.rice                 884     859    2370    1978     901     734    1150    1079    1202    1079
 alagoas.banana              5248    6896    8143    7919    8080    6911    4700    3743    7455    8678
 alagoas.cashew-nut          2366    2075    2170    1826    1799    1822    1821    2096    3044    2778
 alagoas.sugar-cane          1921    1908    1884    2536    2718    2181    1945    1937    1972    2098
 alagoas.beans-cor            784     863    1230     663     576     727     681     446     442    1105
 alagoas.manioc              1030    1609    1898    1254     976    1022    1028    1371    1342    1522
 alagoas.corn                 204     397     532     238     273     248     243     262     211     301
 sergipe.cotton-m             365     487     652     429     526     415     332     451     507     506
 sergipe.rice                1325    1950    3802    2530    1941    1479    1642    1995    1659    1734
 sergipe.banana              5537    5920    6915    6045    5866    5194    4742    4791    5753    7356
 sergipe.cashew-nut          2038    2215    2744    2788    1503    2388    1911    2436    1997    2572
 sergipe.sugar-cane           888    1292    1405    1343    1545    1338    1200    1171    1189    1169
 sergipe.beans-cor            427     518    1253     748     557     463     677     507     642     778
 sergipe.manioc              1100    1637    4539    2701    1416    2033    1753    2309    2405    2105
 sergipe.corn                 272     381     562     297     316     287     301     270     291     342
 bahia.cotton-m               591     587     582     440     512     535     543     541     658     644
 bahia.rice                  1382    1213    1256    1280    1015     979    1463    2109    1161     892
 bahia.banana                5169    5454    5789    5027    4793    4354    4451    4888    4637    5159
 bahia.cacao                 1643    1487    1221    1032    1018     812     774     861    1145    2218
 bahia.cashew-nut            2146    2717    3167    2350    1214    1709    1664    2504    2647    2742
 bahia.sugar-cane            1825    1745    1505    1676    1580    2141    1663    1710    1728    1666
 bahia.beans-cor             1091     900    1522     878     631     879    1206    1000     882    1268
 bahia.manioc                1106    1465    1595    1139     926     897    1198    1377    1297    1341
 bahia.corn                   351     343     587     332     260     283     392     404     319     358
 bahia.other                  722     636     562     426     592     514     378     378     612     822


 Table phi(zz,f)  risk factors

           fam-farm    med-farm  ls-fazenda     fazenda
 west         2.000       1.500       1.000
 sertao       2.000       1.500                   1.000


 Parameter  revz(c,ty,zz)   crop revenue series by zone    (cr per ha)( )
            revm(c,zz)      mean zone revenue for crops    (cr per ha)
            prdev(c,ty,zz) propreitor crop price deviations(cr per ton);


 revz(c,ty,zz)   = sum(st, weightsz(st,zz)*crev(st,c,ty))/sum(st, weightsz(st,zz));
 revm(c,zz)      = sum(ty, revz(c,ty,zz))/card(ty);
 prdev(c,ty,zz)$revm(c,zz) = price(c,zz)*(revz(c,ty,zz)/revm(c,zz) - 1);
 Display spr,crev,revz,revm,prdev;

$Stitle misc data


 Table teche(p,zz,km) cropping technology costs (cr per ha)

                      equipment  fertilizer  seeds  sprouts

 crop-01.west             26                   24
 crop-01.sertao                                 3
 crop-02.sertao           23          28       84
 crop-02.agreste                      31       91
 crop-03.sertao           12           7       16
 crop-04.west             32                   21
 crop-04.sertao           12           2        6
 crop-04.southeast        50
 crop-05.west                                   1      69
 crop-05.sertao                                 1      53
 crop-05.east                         18        2     164
 crop-05.agreste                                       45
 crop-06.sertao                                 4     284
 crop-06.east                                   5     425
 crop-08.southeast                   123        9       1
 crop-10.sertao                                       15
 crop-10.east                       231
 crop-10.agreste                     36
 crop-12.sertao                                       37
 crop-12.east                        19               31
 crop-13.sertao           2                           72
 crop-13.east                                 68
 crop-14.west            56                    6
 crop-14.sertao          13           6       45       1
 crop-15.agreste                    106        1     184
 crop-16.west                                  1
 crop-16.east             2                            7
 crop-16.agreste                     20
 crop-17.west                                  6
 crop-17.sertao                       8
 crop-17.agreste                     42       55
 crop-20.sertao           4                   18       2
 crop-21.west                                  5
 crop-22.west                                  7       8
 crop-23.west                                 17
 crop-24.west                                  5
 crop-25.west                                 64
 crop-25.sertao          20           4       10
 crop-26.west                                  6
 crop-27.sertao          15                   37
 crop-28.sertao                               33
 crop-29.sertao         106                    3      60
 crop-29.agreste          4          22               19
 crop-30.sertao                              104
 crop-30.agreste                              27
 crop-31.sertao          26                   23
 crop-32.sertao          20
 crop-33.sertao          39                    4
 crop-33.southeast                    9
 crop-33.east                       117
 crop-33.agreste         11          42
 crop-34.sertao          12
 crop-35.sertao                                8
 crop-36.southeast                                    34
 crop-36.agreste                     98        6       1
                                                           ;


$Stitle consumption data

 Table cbndl(c,zz,dr) consumption bundle alternatives (tons per family)

                          one        two       three

 rice.west               .313       .145       .158
 beans-arr.sertao        .166       .057       .059
 beans-arr.southeast     .159       .067       .065
 beans-arr.east          .173       .090       .094
 beans-arr.agreste       .225       .152       .150
 beans-cor.west          .143       .269       .156
 beans-cor.sertao        .188       .294       .183
 beans-cor.southeast     .051       .141       .051
 manioc.southeast       1.280      1.320      3.160
 manioc.east            1.385      3.045      1.465
 manioc.agreste          .965      2.640       .935
 corn.west               .165       .165       .576
 corn.sertao             .232       .224       .660
 corn.east               .155       .155       .455
 corn.agreste            .235       .232       .581


$Stitle regional data

 Scalar mktmarg   marketing margin of sales retained by propreitor / .25 /
        fwage          family wages (cr per man-month)      / 75 /
        sfs       sharecropper family size                         / 2.2 /

 Parameter rlabsup(zz) regional labor supply (1000 workers) / west = 947.7 , sertao = 1481.2 , southeast = 811.6
                                                              east = 158.4 , agreste = 612.6 /

           twage(zz)  temporary worker wage (cr pe man-month)/ (west,sertao) = 200 , (east,agreste) = 250
                                                               southeast     = 225 /

           pwage(zz)  permanent worker wage (cr per year)   / west = 1492 , sertao = 1532 , southeast = 1825
                                                              east = 2097 , agreste = 2054                     /

           vsc(zz)    value of on-farm consumption (cr)     / west = 518 , sertao = 767 , southeast = 770
                                                              east = 785 , agreste = 934 /

           sps(zz)    sharecropper plot size (ha)           / west = 12 , sertao = 7    /
           pcost(p,zz)       cropping activity cost            (cr per ha);

 pwage(zz) = pwage(zz)*0.9 ;
 pcost(p,zz) = sum(km, teche(p,zz,km));
 Display pcost;


 Set cd1     error possibly in crop comm and zone data
     cd2     error in crop comm
     cd3     error in labor for cropping
     cd4     error in long cycle comm
     cd5     error in cropping costs
                       ;
 cd1(c) = yes$((sum(z, qd(c,z)) ne 0) and (cropc(c,"expend") eq 0));
 cd2(c,z) = yes$(qd(c,z) eq 0 and price(c,z) ne 0);
 cd3(p,z) = yes$(sum(tm, labor(p,z,tm)) eq 0 and sum((s,c,f), yield(c,p,s,z)) ne 0);
 cd5(p,z) = yes$(sum((km,tm), teche(p,z,km)) eq 0 and sum((s,c,f), yield(c,p,s,z)) ne 0);
 Display cd1,cd2,cd3,cd5;

$Stitle model definition

 Variables xcrop(p,s,f,zz)    cropping activities: total                            (1000 ha)
           xcrops(p,s,f,zz)   cropping activities: sharecropper                     (1000 ha)
           xprodc(c,zz)       crop production                                       (1000 tons)
           xlive(r,f,zz)      livestock activity defined on feed techniques         (1000 head)
           xprodl(f,zz)        livestock production                                 (1000 head)
           lswitch(s,f,zz)    land downgrading                                      (1000 ha)
           consp(dr,f,zz)     on-farm consumption: propreitor                       (1000 families
           conss(dr,f,zz)     on-farm consumption: sharecropper                     (1000 families)
           salesp(c,f,zz)     crop sales: propreitor                                (1000 tons)
           saless(c,f,zz)     crop sales: sharecropper                              (1000 tons)
           export(c,zz)       crop exports                                          (1000 tons)
           regcon(c,zz)       regional consumption                                  (1000 tons)
           regq(c,zz,g)       regional consumption
           flab(f,tm,zz)      family labor                                                (man-days)
           tlab(f,tm,zz)      temporary labor                                             (man-days)
           plab(f,zz)         permanent labor                                              (workers)
           nsc(f,zz)          number of sharecroppers                                        (units)
           rationr(f,zz)      livestock ration requirements                                (mill cr)
           pdev(f,zz,ty)      positive price deviations                                    (1000 cr)
           ndev(f,zz,ty)      negative price deviations                                    (1000 cr)
           cps             consumer producer surplus                (1000 cr)
           adc(zz)         area under the demand curve              (mill cr)
           revexp(zz)      revenue from exports                     (mill cr)
           revliv(zz)      revenue from livestoick sales            (mill cr)
           vscdef(zz)      value aof self-consumption               (mill cr)
           cropcost(f,zz)  accounting: cropping activities cost     (mill cr)
           hlcost(f,zz)    accounting: hired labor costs            (mill cr)
           rescost(f,zz)   accounting: reservation labor costs      (mill cr)
           vetcost(f,zz)   accounting: vetinary services cost       (mill cr)

 Positive Variables xcrop,xcrops,xlive,xprodc,xprodl,lswitch,saless,salesp,export,conss,consp,flab,tlab,plab,pdev,ndev
                             regcon,regq,nsc

 Equations landb(s,f,zz)        land balance                                 (ha)
           landl(s,f,zz,c)      land balance: long cycle crops               (ha)
           dprodl(f,zz)         livestock production definition
           mbalcp(c,f,zz)       material balance: propreitor               (tons)             ( )
           mbalcs(c,f,zz)       material balance: sharecropper             (tons)
           spd(f,zz)            sharecropper-plotsize definition             (ha)
           combp(f,zz)          on farm consumption definition: propreitor (100l tons)
           dem(c,zz)            regional demand balance                      (1000 tons)      ( )
           demreg(c,zz)         regional demand definition                   (1000 tons)
           combs(f,zz)          on farm consumption definition: sharecropper  (tons)          ( )
           conv(c,zz)           regional consumption convexity            (1000 ons)          ( )
           labcp(f,tm,zz)       labor supply-demand relation                                  ( )
           labcs(f,tm,zz)       labor supply-demand relation                                  ( )
           ratr(f,zz)           ration requirements             (mill cr)
           labrc(tm,zz)         regional labor constraint                                     ( )
           ddev(f,zz,ty)        crop price deviation definition                               ( )
           obj                farm income definition                                        ( )
           aexp(zz)        accounting: revenue from exports                              (mill cr)
           aliv(zz)        accounting: revenue from livestock sales                      (mill cr)
           aadc(zz)        accounting: area under demand curve                           ( )
           avsc(zz)        accounting: value of self-consumption                         ( )
           acrop(f,zz)     accounting: cropping cost definition                          ( )
           ahlc(f,zz)      accounting: hired labor cost                        (mill cr) ( )
           ares(f,zz)      accounting: reservation labor cost                  (mill cr) ( )
           avet(f,zz)      accounting: vetinary costs                              (mill cr)
                                            ;


 landb(s,f,z)$landc(z,s,f)..
     sum(pa$xposs(s,z,pa), xcrop(pa,s,f,z)) + sum(sp$landc(z,sp,f), ldp(s,sp)*lswitch(sp,f,z))
   + sum(r, lland(s,r,z)*xlive(r,f,z))
 =l= (1 - lcct(z,s))*fnum(z,f)*landc(z,s,f) + sum(pl$xposs(s,z,pl), pfm(s,pl)*xcrop(pl,s,f,z));


 landl(s,f,z,cl)$landc(z,s,f)..  sum(pl$lposs(s,z,cl,pl), xcrop(pl,s,f,z)) =l= fnum(z,f)*lccp(s,f,z,cl);

* need to add ginning constraint for cottons

 mbalcp(c,f,z)$cposs(c,f,z)..
  sum((s,p), yield(c,p,s,z)*(xcrop(p,s,f,z) - (1-spr(c))*xcrops(p,s,f,z)$sh(z,f)))  + mktmarg*saless(c,f,z)$sh(z,f)
  =g= salesp(c,f,z) + sum(dr, cbndl(c,z,dr)*consp(dr,f,z));


 mbalcs(c,f,z)$(cposs(c,f,z)*sh(z,f))..
  (1 - spr(c))*sum((s,p), yield(c,p,s,z)*xcrops(p,s,f,z)) =g= saless(c,f,z) + sum(dr, cbndl(c,z,dr)*conss(dr,f,z));


*dprodc(c,z)$cpossp(c,z).. xprodc(c,z) =e= sum((p,s,f), yield(c,p,s,z)*xcrop(p,s,f,z));

 dprodl(f,z)$fposs(f,z).. xprodl(f,z) =e= sum(r, xlive(r,f,z));

 ratr(f,z)$fposs(f,z).. rationr(f,z) =e= sum(r, lfrat(r,z)*xlive(r,f,z))/1000;


 labcp(f,tm,z)$fposs(f,z)..
  sum((p,s)$xposs(s,z,p), labor(p,z,tm)*(xcrop(p,s,f,z) - xcrops(p,s,f,z)$sh(z,f)) )
    + sum(r, llive(r,tm,z)*xlive(r,f,z)) =l= flab(f,tm,z) + tlab(f,tm,z) + dpm*plab(f,z);


 labcs(f,tm,z)$sh(z,f).. sum((p,s)$xposs(s,z,p), labor(p,z,tm)*xcrops(p,s,f,z)) =l= dpm*sfs*nsc(f,z);


 spd(f,z)$sh(z,f)..     sum((p,s)$xposs(s,z,p), xcrops(p,s,f,z)) =e= sps(z)*nsc(f,z);


 labrc(tm,z)..  sum(f$fposs(f,z), tlab(f,tm,z)/dpm + plab(f,z) + sfs*nsc(f,z)$sh(z,f)) =l= rlabsup(z);


* combp(f,z)$fposs(f,z).. sum(dr, consp(dr,f,z)) =e= fnum(z,"fam-farm");
 combp(f,z)$fposs(f,z).. sum(dr, consp(dr,f,z)) =e= fnum(z,f);


 combs(f,z)$sh(z,f)..    sum(dr, conss(dr,f,z)) =e= nsc(f,z);


 dem(c,z)$cpossn(c,z)..
   regcon(c,z) + export(c,z)$cex(c) =e= sum(f$cposs(c,f,z),
                                        salesp(c,f,z) + (1-mktmarg)*saless(c,f,z)$sh(z,f)) ;


 demreg(c,z)$cpossn(c,z).. regcon(c,z) =e= sum(g, qs(c,z,g)*regq(c,z,g));


 conv(c,z)$cpossn(c,z)..   sum(g, regq(c,z,g)) =e= 1;

 ddev(f,z,ty)$phi(z,f)..
 sum(c$cpossp(c,z), prdev(c,ty,z)*(salesp(c,f,z) + (1-mktmarg)*saless(c,f,z)$sh(z,f))) =e= pdev(f,z,ty) - ndev(f,z,ty);


 aadc(z)..   adc(z) =e= sum((c,g)$cpossn(c,z), ws(c,z,g)*regq(c,z,g));


 aliv(z)..   revliv(z)  =e= sum(f$fposs(f,z), pricel(z)*xprodl(f,z))/1000;


 aexp(z)..   revexp(z)  =e= sum(cex, price(cex,z)*export(cex,z))/1000;



 avsc(z)..   vscdef(z) =e= vsc(z)*sum((f,dr)$fposs(f,z), consp(dr,f,z) + conss(dr,f,z)$sh(z,f))/1000;


 acrop(f,z)$fposs(f,z)..  cropcost(f,z) =e= sum((p,s)$xposs(s,z,p), pcost(p,z)*xcrop(p,s,f,z))/1000;


 ahlc(f,z)$fposs(f,z).. hlcost(f,z) =e= (twage(z)*sum(tm, tlab(f,tm,z))/dpm + pwage(z)*plab(f,z))/1000;


 ares(f,z)$fposs(f,z).. rescost(f,z) =e= fwage*sum(tm, flab(f,tm,z))/dpm/1000;

 avet(f,z)$fposs(f,z).. vetcost(f,z) =e= vetpr*xprodl(f,z)/1000;

 obj.. cps =e= sum(z, revexp(z) + revliv(z) + adc(z) + vscdef(z)
                      - sum(f$fposs(f,z), hlcost(f,z) +rescost(f,z) + rationr(f,z) + vetcost(f,z) + cropcost(f,z)
                                        + phi(z,f)*sum(ty, pdev(f,z,ty) + ndev(f,z,ty))/card(ty)/1000 ));


 Model brazil / all /;

 flab.up(f,tm,z) = dpm*fnum(z,f)*famsize(z,f);

 z(zz) = no; z("west") = yes;
 Solve brazil maximizing cps using lp;
 Options limrow=0,limcol=0;
 z(zz) = no; z("sertao") = yes;
 Solve brazil maximizing cps using lp;
 z(zz) = no; z("southeast") = yes;
 Solve brazil maximizing cps using lp;
 z(zz) = no; z("east") = yes;
 Solve brazil maximizing cps using lp;
 z(zz) = no; z("agreste") = yes;
 Solve brazil maximizing cps using lp;
 Display landb.m,xprodl.l,salesp.l,saless.l,regcon.l,export.l,regq.l;

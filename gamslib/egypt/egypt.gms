option LP=convert;
option LP=convert;
option LP=convert;
$Title Egypt Agricultural Model  (EGYPT,SEQ=75)
$Stitle Set Definition


$Ontext

   This model was used to analyze the current and future demands
   for irrigation water and to formulate investment programs
   in the water sector of Egypt.


Kutcher, G P, The Agro-Economic Model, Master Plan for Water
Resources Development. Tech. rep., UNDP-EGY-73/024, 1980.

$Offtext

  Set c crops   / lo-berseem, sh-berseem,  wheat,       barley,
                  horse-bean, lentils,     ot-legumes,  flax,
                  w-onion,    w-tomato,    w-veget,     cotton,
                  rice,       s-maize,     sorghum,     soyabeans,
                  groundnut,  sesame,      s-potato,    s-tomato,
                  s-veget,    n-maize,     n-potato,    n-tomato,
                  n-veget,    citrus,      sugarcane,   veg-oil,
                  maize  ,    s+n-tomato,  potato  /


 Set tm  time periods /oct,nov,dec,jan,feb,mar,apr,may,jun,jul,aug,sep/

      r  regions by barrages  / u-egypt,   m-egypt,  e-delta, m-delta,
                                w-delta/
      z  agricultural zones  /  upper,  middle,  delta /

      d  agricultural inputs /  protein,  starch,   seed,   misc,
                                pest,     n-fer,    p-fer        /

 zr(z,r) map from zones to regions
                                   / upper.u-egypt,
                                     middle.m-egypt,
                                     delta.(e-delta,m-delta,w-delta) /

      s  agricultural seasons / winter, summer, nili /


 sv(s,c) vegetables by season / winter.(w-veget, w-tomato, w-onion),
                                summer.(s-veget, s-tomato, s-potato),
                                nili.  (n-veget, n-tomato, n-potato) /


   cn(c)   crops sold in national market

   ag      regional data / area, farmers, starch, protein/

   nt(ag) nutrients for livestock  /       protein,    starch   /
   cf(c)  fodder crops
   ct(c)  fodder crops transportable  /     wheat,      barley /
   cfg(c) green fodder crops /lo-berseem,   sh-berseem, sugarcane,
                              s-maize,      n-maize,    sorghum /

   cfd(c) dry fodder crops   /wheat, barley, rice /

$Stitle national demand data


 Table demdat(c,*) demand data

                  import-p   base-p  export-p domes-cons  elas
*                  (l.e.)    (l.e.)   (l.e.)  (1000 ton)

    wheat           96.8        88      88      7634      -0.55
    barley          94.6        86      86       114      -0.20
    horse-bean     267.3       199     243       254      -0.63
    lentils        419.1       381     381        65      -0.80
    ot-legumes     267.3       240     243        55      -0.63
    w-tomato       126.5        87     115      1006      -0.75
    cotton         419.1       300     380       530      -1.00
    maize          143.0       123     130      3231      -0.68
    s+n-tomato      82.5        60      75      1636      -0.75
    w-veget        143.0       100     130      1055      -0.75
    sorghum        126.5       119     115       643      -0.64
    sugarcane       18.7        15      16     11121      -0.57
    w-onion         71.5        62      65       568      -0.64
    flax            33.0        30      30       171      -1.00
    rice           121.0        81     110      2382      -0.74
    groundnut      518.1       280     471        25      -1.00
    sesame         704.0       600     640        97      -1.00
    soyabeans      432.3       210     393       110      -1.00
    potato          94.6        80      85      1230      -0.77
    s-veget         71.5        65      65      2333      -0.75
    n-veget         77.0        70      70       730      -0.77
    citrus          93.5        85      85      1102      -1.64
    veg-oil        500.5       455     455       395      -1.20
    ;
   cn(c) = yes$demdat(c,"domes-cons") ;


$Stitle regional data


 Table agrreg (r,ag) agricultural regions data

                  area     farmers    starch      protein
*               (1000 f)  (1000"s)   (1000 ton)   (1000 ton)
        u-egypt  1195      1202         987         176
        m-egypt  1009       986        1057         202
        e-delta  1334      1156        1720         360
        m-delta  1436      1110        1739         351
        w-delta   746       541         949         197

 Table regwat(r,tm) available water for each region (m m3 per month)
                       oct     nov     dec     jan     feb     mar
        u-egypt       1084    1114     930     383     789     841
        m-egypt        630     617     573     188     560     703
        e-delta        864     939     719     418     931     979
        m-delta        853     944     718     383     899     946
        w-delta        767     732     538     172     637     766

 +                     apr     may     jun     jul     aug     sep
        u-egypt        961    1074    1197    1301    1373    1181
        m-egypt        660     720     798     958     922     683
        e-delta       1023    1083    1480    1708    1597    1134
        m-delta        926    1041    1428    1713    1552    1085
        w-delta        752    858     1129    1213    1125     858

 Table regwagm(r,tm) average wages for men  (egyptian pounds per day )
                       oct     nov     dec     jan     feb     mar
        u-egypt        1.4     1.4     1.3     1.3     1.3     1.5
        m-egypt        1.3     1.3     1.3     1.3     1.3     1.3
        e-delta        1.3     1.3     1.3     1.0     1.2     1.2
        m-delta        1.3     1.3     1.3     1.0     1.0     1.0
        w-delta        1.3     1.3     1.2     1.0     1.0     1.2

 +                     apr     may     jun     jul     aug     sep
        u-egypt        1.5     1.5     1.5     1.5     1.5     1.5
        m-egypt        1.3     1.3     1.3     1.3     1.5     1.5
        e-delta        1.2     1.4     1.8     1.5     1.5     1.5
        m-delta        1.0     1.3     1.5     1.5     1.5     1.5
        w-delta        1.2     1.5     1.5     1.5     1.5     1.5


$Stitle  crop data


 Table yield (c,r)  yield for different commodities
                 u-egypt   m-egypt    e-delta    m-delta     w-delta
*                  ton      ton        ton        ton         ton
   wheat          1.29     1.36       1.39       1.404       1.36
   barley         1.41     1.26       1.33        .984        .96
   horse-bean     1.12      .80        .96        .97         .91
   lentils         .46
   ot-legumes      .71      .73        .61        .50
   flax                               3.14       2.45        2.29
   w-onion       11.19     8.85                  9.20
   w-tomato                4.66       5.31       5.15
   w-veget        5.48     6.42       6.83       6.83        6.83
   cotton         1.13     1.00       1.18       1.13        1.18
   rice                               2.37       2.34        2.49
   s-maize        2.00     1.89       1.79       1.97        1.69
   sorghum        1.67     1.49
   soyabeans       .89      .95       1.04       1.18        1.29
   groundnut       .89                 .78
   sesame          .48
   s-potato                7.15                  7.15        7.15
   s-tomato       7.21     7.51       9.40       9.60        8.15
   s-veget        7.06     9.0        8.46       8.46        8.46
   n-maize        1.28     1.33       1.51       1.56        1.35
   n-potato       9.43     7.34       7.19       7.46        6.70
   n-tomato       7.44     7.30       8.28       6.78        8.20
   n-veget        6.60     6.83       7.16       7.16        7.16
   citrus         7.93     7.93       9.50       6.73
   sugarcane     39.22

 Table indprod(c,r) industrial by product yield (tons per feddan)

                 u-egypt   m-egypt    e-delta    m-delta     w-delta
   horse-bean     1.29      1.15       1.05        1.05       1.05
   rice                                1.25        1.25       1.25


 Table feed(c,z) by product yield for animal feed (tons per feddan)

                 upper      middle       delta

 lo-berseem     27.300      25.700      22.500
 sh-berseem     12.500      10.600       9.000
 wheat           1.890       2.110       2.160
 barley          1.370       1.490       1.400
 lentils         0.650
 cotton          1.600       1.400       1.700
 rice                                    1.250
 s-maize         1.950       2.190       2.010
 sorghum         2.400       2.600
 soyabeans       0.750       0.850       1.000
 n-maize         1.370       1.400       1.600
 sugarcane       8.000
        ;
  cf(c) = yes$sum(z, feed(c,z) );

 Table cropdat (c,*)  seed protein starch misc costs and pestic data

             protein  starch   seed    misc    pest    n-fer    p-fer
*               %       %       ton     le      le      ton      ton

   lo-berseem   2.0     9.0    .020     5.0     8.0    0.000    0.015
   sh-berseem   2.0     9.0    .020     5.0            0.000    0.015
   wheat         .1    23.3    .075    12.0            0.054    0.015
   barley        .1    23.3    .060     8.0            0.045    0.015
   horse-bean                  .078     8.0     8.0    0.007    0.022
   lentils      2.1    24.0    .080     5.0            0.007    0.015
   ot-legumes   3.1    43.2    .053     3.0            0.007    0.015
   flax                        .080     8.0            0.046    0.015
   w-onion                     .060     5.5    37.0    0.062    0.015
   w-tomato                    .020    25.0    60.0    0.090    0.023
   w-veget                     .050    25.0    10.0    0.047    0.023
   cotton      37.3    46.0    .060    20.0    44.0    0.050    0.015
   rice         9.6    70.0    .060    12.0    16.0    0.046    0.015
   s-maize      2.1     8.5    .023     8.0     6.0    0.062    0.015
   sorghum      2.1     8.5    .035     8.0     4.0    0.060    0.015
   soyabeans   40.5    69.5    .040    10.0    10.0             0.015
   groundnut     .3     5.9    .050     5.0     2.0             0.015
   sesame                      .005     8.0     3.0    0.060    0.015
   s-potato                    .750    15.0    55.0    0.008    0.022
   s-tomato                    .003    25.0    65.0    0.090    0.022
   s-veget                     .002    25.0    60.0    0.062    0.022
   n-maize      2.1     8.5    .023     8.0     4.5    0.062    0.015
   n-potato                   1.750    15.0    55.0    0.065    0.022
   n-tomato                    .003    25.0    70.0    0.093    0.022
   n-veget                     .003    20.0    60.0    0.047    0.023
   citrus                              25.0    80.0    0.300    0.100
   sugarcane     .6    11.8   6.000    10.0     3.0    0.093    0.015


$Eject

 Table  land(c,z,tm) land requirements by crops

                         oct     nov    dec    jan      feb     mar

  lo-berseem.upper        .5     1       1       1       1       1
  lo-berseem.middle       .6     1       1       1       1       1
  lo-berseem.delta        .6     1       1       1       1       1
  sh-berseem.upper        .5     1       1       1       1       1
  sh-berseem.middle       .6     1       1       1       1
  sh-berseem.delta        .6     1       1       1       1
  wheat.upper             .3     1       1       1       1       1
  wheat.middle            .2     1       1       1       1       1
  wheat.delta                     .8     1       1       1       1
  barley.upper                    .6     1       1       1       1
  barley.middle                   .2     1       1       1       1
  barley.delta                    .6     1       1       1       1
  horse-bean.upper        .2     1       1       1       1       1
  horse-bean.middle       .1      .8     1       1       1       1
  horse-bean.delta                .8     1       1       1       1
  lentils.upper                  1       1       1       1        .3
  ot-legumes.upper                .5     1       1       1       1
  ot-legumes.middle               .5     1       1       1       1
  ot-legumes.delta                .5     1       1       1       1
  flax.delta                      .4     1       1       1       1
  w-onion.upper                           .6     1       1       1
  w-onion.middle                          .5     1       1       1
  w-onion.delta                           .7     1       1       1
  w-tomato.middle        1       1       1       1        .5
  w-tomato.delta         1       1       1       1        .5
  w-veget.upper          1       1       1       1       1
  w-veget.middle         1       1       1       1       1
  w-veget.delta          1       1       1       1       1
  cotton.upper                                                   1
  cotton.middle                                                  1
  cotton.delta                                                   1
  rice.delta              .5
  s-potato.middle                                         .4     1
  s-potato.delta                                          .7     1
  s-tomato.upper                                          .4     1
  s-tomato.middle                                         .6     1
  s-tomato.delta                                          .3     1
  s-veget.upper                                          1       1
  s-veget.middle                                         1       1
  s-veget.delta                                          1       1
  n-maize.upper          1       1
  n-maize.middle         1       1
  n-maize.delta          1       1
  n-potato.upper         1       1
  n-potato.middle        1       1
  n-potato.delta         1       1
  n-tomato.upper         1       1
  n-tomato.middle        1       1
  n-tomato.delta         1       1
  n-veget.upper          1
  n-veget.middle         1
  n-veget.delta          1
  citrus.upper           1       1       1       1       1       1
  citrus.middle          1       1       1       1       1       1
  citrus.delta           1       1       1       1       1       1
  sugarcane.upper        1       1       1       1       1       1

              +         apr      may    jun     jul     aug     sep

  lo-berseem.upper       1       1
  lo-berseem.middle      1       1
  lo-berseem.delta       1        .7
  wheat.upper            1
  wheat.middle           1        .2
  wheat.delta            1        .6
  barley.upper            .5
  barley.middle          1        .4
  barley.delta           1        .4
  horse-bean.upper        .3
  horse-bean.middle       .5
  horse-bean.delta        .5
  ot-legumes.upper        .5
  ot-legumes.middle       .5
  flax.delta              .4
  w-onion.upper          1
  w-onion.middle         1
  w-onion.delta          1
  cotton.upper           1       1       1       1       1       1
  cotton.middle          1       1       1       1       1       1
  cotton.delta           1       1       1       1       1       1
  rice.delta                     1       1       1       1       1
  s-maize.upper                   .5     1       1       1       1
  s-maize.middle                  .6     1       1       1       1
  s-maize.delta                   .6     1       1       1       1
  sorghum.upper                   .3     1       1       1       1
  sorghum.middle                  .3     1       1       1       1
  soyabeans.upper         .5     1       1       1        .5
  soyabeans.middle        .4     1       1       1        .5
  soyabeans.delta         .4     1       1       1        .7
  groundnut.upper         .5     1       1       1        .5
  groundnut.middle        .4     1       1       1        .7
  groundnut.delta         .5     1       1       1        .6
  sesame.upper                   1       1       1       1        .6
  s-potato.middle        1       1       1        .5
  s-potato.delta         1       1       1        .3
  s-tomato.upper         1       1       1        .6
  s-tomato.middle        1       1       1        .5
  s-tomato.delta         1       1       1        .4
  s-veget.upper          1       1       1
  s-veget.middle         1       1       1
  s-veget.delta          1       1       1
  n-maize.upper                                   .5     1       1
  n-maize.middle                                  .8     1       1
  n-maize.delta                                   .6     1       1
  n-potato.upper                                         1       1
  n-potato.middle                                        1       1
  n-potato.delta                                         1       1
  n-tomato.upper                                 1       1       1
  n-tomato.middle                                1       1       1
  n-tomato.delta                                 1       1       1
  n-veget.upper                                  1       1       1
  n-veget.middle                                 1       1       1
  n-veget.delta                                  1       1       1
  citrus.upper           1       1       1       1       1       1
  citrus.middle          1       1       1       1       1       1
  citrus.delta           1       1       1       1       1       1
  sugarcane.upper        1       1       1       1       1       1


 Table  laborm(c,z,tm) labor requirements by crops (man-days)

                         oct     nov     dec     jan     feb     mar

  lo-berseem.upper       1.5     2.5     2.5      .5     3.5     3.5
  lo-berseem.middle      1.5     3       3.5      .5     3.5     3.5
  lo-berseem.delta       2.6     3.4     3.5      .5     3.5     5.5
  sh-berseem.upper       1.5     1.5     4.5      .5     4.5     2
  sh-berseem.middle      3       2       2.5      .5     3       2
  sh-berseem.delta       1.5     1       4.5      .5     3       2
  wheat.upper            2       5.5     2.5      .5      .5      .5
  wheat.middle           1       3       1.5      .5     1.5     1.5
  wheat.delta                    4.5     1.5      .5      .5     1.5
  barley.upper                   5       1.5      .5      .5      .5
  barley.middle                  1.5     3        .5      .5      .5
  barley.delta                   3.7     3.3      .5      .5      .5
  horse-bean.upper       1.8     6.7     3.5             1       1
  horse-bean.middle      1.2     8.8     4        .5      .5      .5
  horse-bean.delta               3.2     3.8     1.5      .5      .5
  lentils.upper                  9        .5      .5     9       7
  ot-legumes.upper               9.5     9.5     5.5     5.5      .5
  ot-legumes.middle              9.5     9.5     6.5     4.5      .5
  ot-legumes.delta               9.5     9.5     5.5     4       1.5
  flax.delta                     2.6     3.5     1        .5      .5
  w-onion.upper                         13      12.5     5       1
  w-onion.middle                         7.5    13.5     6       1
  w-onion.delta                          7.5     7       3       1
  w-tomato.middle        7.5     1.5     6       7       9.5     5
  w-tomato.delta         16      5       6.5     3.5    10.5    10
  w-veget.upper          7       7       3       3       3       4
  w-veget.middle         7       7       3       3       3       5
  w-veget.delta         10       6       2       4       3       6
  cotton.upper           5                                       8
  cotton.middle          4                                       8
  cotton.delta           6                                       5
  rice.delta             9.5     4.1
  s-maize.upper          7
  s-maize.middle         5
  s-maize.delta          6
  sorghum.upper          6
  sorghum.middle         7
  s-potato.middle                                        5       8.5
  s-potato.delta                                        11       4
  s-tomato.upper                                        12       5
  s-tomato.middle                                       14.5     7
  s-tomato.delta                                         6       9
  s-veget.upper                                         12       14
  s-veget.middle                                        11       15
  s-veget.delta                                         12       15
  n-maize.upper           .5     3
  n-maize.middle         8       9.5
  n-maize.delta          4.5     4.5
  n-potato.upper         6       1.5     8.5
  n-potato.middle        7        .5     8.5
  n-potato.delta         2       8       8
  n-tomato.upper         5       3
  n-tomato.middle        8       5
  n-tomato.delta         8.5     5.5
  n-veget.upper         10       3
  n-veget.middle        10       4
  n-veget.delta          9       4
  citrus.upper           2       2       9      20       1.5     1.5
  citrus.middle          2       3       8      19       1.5     2.5
  citrus.delta           2       3      10      18       2.5     1.5
  sugarcane.upper        1      13      13      13      13

              +         apr      may    jun     jul     aug     sep

  lo-berseem.upper       5.5     2
  lo-berseem.middle      4.5     2.5
  lo-berseem.delta       5.5     2.5
  wheat.upper             .5    12
  wheat.middle           1.5    16
  wheat.delta            1.5    12
  barley.upper          10       4
  barley.middle          2.5    12.5
  barley.delta           1.5    12.5
  horse-bean.upper      11       3
  horse-bean.middle      7       6
  horse-bean.delta       7       7
  ot-legumes.upper       3.3     3.3
  ot-legumes.middle      4       2.5
  flax.delta             8      10
  w-onion.upper         18       5.5
  w-onion.middle         6
  w-onion.delta          1       8
  cotton.upper           7       5       6       2       2       1
  cotton.middle         12.5     8       8       2       2       1
  cotton.delta           5.5     4       5       1.5     1.5     1
  rice.delta                     6.2     1.8      .5     1       1
  s-maize.upper                  4.5    11       7       2       6
  s-maize.middle                 3.4     9.6     6       1.8     2.5
  s-maize.delta                  3.7     8.8     8       1       5
  sorghum.upper                  2.5     7       6       6.5     4.5
  sorghum.middle                 5       6       6       5.5     4
  soyabeans.upper        7      14.5     6       6       7.5     6.5
  soyabeans.middle       7      14.5     6       6       7       5
  soyabeans.delta        3      15.5     6       1       4       6
  groundnut.upper        4.2     5.7     2.1     1       2       2.5
  groundnut.middle       5       6       2       1       4       1
  groundnut.delta        5       5       2       1       3       2
  sesame.upper                   3       5.5     3        .5    10.6
  s-potato.middle        8       5       7       5
  s-potato.delta         9       8       7       4
  s-tomato.upper         3.5     3       3       3
  s-tomato.middle        5.5     5       5       3
  s-tomato.delta         9       8       8       4
  s-veget.upper         10      12      10       5
  s-veget.middle         9      13      11       3
  s-veget.delta         11      11       8       4
  n-maize.upper                                  6.3     6.3     6
  n-maize.middle                                 7       7.5     7
  n-maize.delta                                  5       7.5     5
  n-potato.upper                                        19       5.5
  n-potato.middle                                       16       5.5
  n-potato.delta                                        17       9
  n-tomato.upper                                11.5     3.5     5
  n-tomato.middle                                9.5     5       7
  n-tomato.delta                                11       3       8.5
  n-veget.upper                                 20      15       9
  n-veget.middle                                18      18       9
  n-veget.delta                                 19      16       8
  citrus.upper           2       2.5     1       1       9       1
  citrus.middle          2       3.5     1       1       8.5     1
  citrus.delta           2       2.8     1       1       8.5     1
  sugarcane.upper        5      14.5     8.5    10.5     1.5     1


 Table water (c,z,tm)  water requrements (cm)

                          oct     nov     dec     jan     feb     mar

  lo-berseem.upper                421     439     488     557     707
  lo-berseem.middle               389     427     410     493     560
  lo-berseem.delta                339     372     387     294     559
  sh-berseem.upper        420     439     388     457
  sh-berseem.middle       189     427     410     392
  sh-berseem.delta        139     272     187     294
  wheat.upper                      55     345     352     477     621
  wheat.middle                            267     325     382     373
  wheat.delta                             174     177     176     424
  barley.upper                     76     230     234     298     414
  barley.middle                   178     217     254     382     265
  barley.delta                    116     118     118     289     296
  horse-bean.upper                254     322     258     352     414
  horse-bean.middle               194     246     313     342     361
  horse-bean.delta                 84     229     243     291     340
  lentils.upper                   168     315     420     420     294
  ot-legumes.upper                147     378     441     377     231
  ot-legumes.middle               147     378     441     377     231
  ot-legumes.delta                210     377     336     336     186
  flax.delta                              189     336     356     378
  w-onion.upper                           218     323     362     457
  w-onion.middle                          218     323     362     457
  w-onion.delta                           105     357     324     311
  w-tomato.middle         315     403     541     479
  w-tomato.delta          315     385     490     414
  w-veget.upper           241     521     691     600
  w-veget.middle          241     521     691     600
  w-veget.delta           190     480     530     427
  cotton.upper                                                    260
  cotton.middle                                                   141
  cotton.delta                                                    120
  rice.delta              343
  s-potato.middle                                         211     454
  s-potato.delta                                          211     454
  s-tomato.upper                                          242     521
  s-tomato.middle                                         211     453
  s-tomato.delta                                          209     412
  s-veget.upper                                           270     560
  s-veget.middle                                          270     560
  s-veget.delta                                           208     412
  n-maize.upper           573     113
  n-maize.middle          530     114
  n-maize.delta           464     109
  n-potato.upper          489     479
  n-potato.middle         418     479
  n-potato.delta          370     378
  n-tomato.upper          489     349
  n-tomato.middle         418     479
  n-tomato.delta          369    8.30
  n-veget.upper           200
  n-veget.middle          200
  n-veget.delta           122
  citrus.upper            426     266     212     212     266     373
  citrus.middle           426     266     212     212     266     373
  citrus.delta            392     244     197     195     244     344
  sugarcane.upper         601     403     325     399     376     592

                +         apr     may     jun     jul     aug     sep

  lo-berseem.upper        558
  lo-berseem.middle       314
  lo-berseem.delta        238
  wheat.upper             493
  wheat.middle            397
  wheat.delta             444
  barley.upper            328
  barley.middle            78
  barley.delta             65
  w-onion.upper           119
  w-onion.middle          102
  w-onion.delta           182
  cotton.upper            488     695     518     975     712     154
  cotton.middle           268     473     618     711     363     184
  cotton.delta            262     473     615     711     363     184
  rice.delta                      400    1001    1089    1458    1474
  s-maize.upper                   256     691     999     733     146
  s-maize.middle                  216     640     941     680     146
  s-maize.delta                   213     558     844     692     134
  sorghum.upper                           215     669    1022     827
  sorghum.middle                          215     669    1022     827
  soyabeans.upper                 573     943     892     174
  soyabeans.middle                573     943     892     174
  soyabeans.delta                 493     817     791     149
  groundnut.upper         281     493     569     536     188
  groundnut.middle        281     493     569     536     189
  groundnut.delta         231     420     525     504     188
  sesame.upper                    214     597     648     640
  s-potato.middle         623     588
  s-potato.delta          623     588
  s-tomato.upper          691     600
  s-tomato.middle         623     588
  s-tomato.delta          600     495
  s-veget.upper           720     610
  s-veget.middle          720     610
  s-veget.delta           622     580
  n-maize.upper                                   253     665     752
  n-maize.middle                                  253     665     752
  n-maize.delta                                   248     688     740
  n-potato.upper                                          134     292
  n-potato.middle                                         121     246
  n-potato.delta                                          121     210
  n-tomato.upper                                          134     292
  n-tomato.middle                                         122     246
  n-tomato.delta                                          122     210
  n-veget.upper                                   353     489     280
  n-veget.middle                                  353     489     280
  n-veget.delta                                   310     369     248
  citrus.upper            586     586     667     667     639     533
  citrus.middle           586     586     667     667     639     533
  citrus.delta            541     541     613     614     588     491
  sugarcane.upper         973    1138    1236    1244    1084     818


$Eject

 Table tractor(c,z) tractor requirements (tractor hrs per feddan)

                 upper      middle       delta

 lo-berseem      5.600       5.400       5.000
 sh-berseem      3.500       3.000       2.500
 wheat           7.000       6.800       4.000
 barley          7.000       8.000       8.500
 horse-bean      8.000       6.000       5.500
 lentils         8.000
 ot-legumes      5.000       5.000       5.300
 flax                                    4.000
 w-onion         5.500       4.500       6.000
 w-tomato                    4.000       4.500
 w-veget         4.000       3.500       3.700
 cotton          4.200       5.000       6.500
 rice                                    8.000
 s-maize         8.900       9.600       8.500
 sorghum         9.000       8.400
 soyabeans       8.500       8.500       9.000
 sesame          4.800
 s-potato                    5.200       5.400
 s-tomato        8.500       7.800       6.900
 s-veget         6.000       6.500       5.500
 n-maize         6.800       5.600       5.200
 n-potato        6.500       7.000       8.500
 n-tomato        7.800       8.300       9.000
 n-veget         4.800       5.000       4.000
 citrus          4.400       4.000       4.500
 sugarcane      15.000      17.000


$Stitle miscellaneous data

 Table  veg(r,s)  vegetables upper costraints by region

                       winter       summer        nili
*                     (1000'f)     (1000'f)     (1000'f)
       u-egypt          42.0         40.0         50.0
       m-egypt         101.0        114.0        100.0
       e-delta         129.0        154.0        124.0
       m-delta          84.0        117.0         95.0
       w-delta          85.0        180.0        105.0

  Set cup(c)  crops with upper bound on area/cotton, citrus, sugarcane/
                ;

 Table  upbnds(c,r) upper bounds on crops by region (1000 feddans)

                u-egypt   m-egypt   e-delta  m-delta   w-delta
   sugarcane      250
   cotton         175        202      341     416       160
   citrus          17         34       75      42        32
      ;

   Alias (r,rp) ;

 Table  tranc(r,rp)  transfer cost per ton  (le)

                 m-egypt   e-delta  m-delta

   m-egypt         0.0      6.0       7.0
   e-delta         6.0      0.0       3.0
   m-delta         7.0      3.0       0.0
            ;
 Parameter  los(c)       factors defining commodity losses in storage
            stran(r,rp)  transfer costs per ton between regions
            grdfcon(c)   ratio of dry fodder to total
            dfyld (r,c)  dry fodder yield
              ;
    los("wheat")  =  .090; los("barley")  = .114; los("horse-bean")= .152;
    los("lentils")=  .188; los("w-tomato")= .100; los("cotton") = .540;
    los("s-maize")=  .049; los("s-tomato")= .100; los("sorghum")= .055;
    los("w-onion")=  .055; los("w-onion") = .057; los("rice")   = .045;
    los("groundnut")=.038; los("s-potato")= .285; los("citrus") = .100;

    grdfcon(cf)   = 1.0;
    dfyld(r,cf)=sum(z$zr(z,r), feed(cf,z)*grdfcon(cf));
    stran (r,rp)    =  tranc(r,rp);

$Stitle linearization of demand function


 Set g grid /1*10 /
 Scalars  high   factor for maximum price of a commmodity  /1.666/
          low    factor for minimum price of a commodity   / 0.6 /
 Parameter  pe(c)        commodity export prices (le)
            pm(c)        commodity import prices (le)
            alpha(c)     demand curve intercept
            beta(c)      demand curve gradient
            price(c)     base price of crop commodities
            pmax(c)      maximum price for segments
            pmin(c)      minimum price for segments
            qmax(c)      maximum national consumption
            qmin(c)      minimum national consumption
            incr(c)      increment
            ws(c,g)      welfare  segments
            rs(c,g)      revenue  definition
            qs(c,g)      quantity definition
              ;
  price(c) =demdat(c,"base-p");
  pe(c)    =demdat(c,"export-p");  pm(c) = demdat(c,"import-p");

  beta(cn)$demdat(cn,"domes-cons")=demdat(cn,"base-p")/
                              demdat(cn,"domes-cons")/demdat(cn,"elas");
  alpha(cn) =demdat(cn,"base-p")-beta(cn)*demdat(cn,"domes-cons");
  demdat(cn,"dem-a") =alpha(cn);  demdat(cn,"dem-b") = beta(cn);
  pmax(cn) =  price(cn)*high;    pmin(cn) = price(cn)*low ;
  qmin(cn) = (pmax(cn)-alpha(cn))/beta(cn);
  qmax(cn) = (pmin(cn)-alpha(cn))/beta(cn);
  incr(cn) = (qmax(cn)-qmin(cn) )/(card(g)-1);

  qs(cn,g)=qmin(cn) + incr(cn)*(ord(g)-1);
  ws(cn,g)=alpha(cn)*qs(cn,g)+ .5*beta(cn)*sqr(qs(cn,g));
  rs(cn,g)=alpha(cn)*qs(cn,g)+    beta(cn)*sqr(qs(cn,g));

 Display cn,pe,beta,alpha,demdat;
 Display pmax,pmin,qmax,qmin,incr,qs,ws,rs ;


$Stitle intermediate calculations and reports

 Scalar   day    number of working days per month          / 20 /
          pnfl   cost of one ton of n-fert (local price)   /178 /
          pnfi   cost of one ton of n-fer  (intern price)  /200 /
          ppfl   cost of one ton of p-fer  (local price)   /200 /
          ppfi   cost of one ton of p-fer  (intern price)  /140 /
          ptrl   cost of one tractor hour  (local price)   /1.5 /
          ptri   cost of one tractor hour  (intern price)  /3.0 /
          grdf   green and dry fodder ratio             /.06723 /
          totmd  value of meat and milk (le)            /749576 /
           ;
 Parameter netcs(c,r)     cost of crop inputs(exl. labor) (le per fedd.)
           regwatr(r,*)   water available at root zone
           eff(r)         efficiency from canbal to root
           prby(c)        price of by products
           prnut(nt)      cost of artificial protein per ton(le)
           yld(c,c,r)     adjusted crop yield matrix (tons per feddan)
           con(c)         conversion factors for vegetabel oil
                           /cotton .175, soyabeans .175, sesame .470 /
           ;
  Set cnc(c,c)   crop reclassification
                 /(maize.     (n-maize, s-maize),
                   s+n-tomato.(s-tomato,n-tomato),
                   potato    .(s-potato,n-potato))/;

  prnut(nt) = 1000;
  eff(r)    = 0.6 ;  prby("horse-bean") = 21.75 ; prby("rice") = 5.75 ;

  netcs(c,r)=(sum(z$zr(z,r), tractor(c,z)*ptrl )+
                    cropdat(c,"misc") + cropdat(c,"pest") +
                    cropdat(c,"n-fer")*pnfl + ppfl*cropdat(c,"p-fer")-
                    indprod(c,r)*prby(c))$yield(c,r) ;
  yld(c,c,r)            = yield(c,r) ;
  yld("veg-oil",c,r)    = yield(c,r)*con(c) ;
  yld(cn,c,r)$cnc(cn,c) = yield(c,r) ;
  yld(c,c,r)$sum(cn,cnc(cn,c) ) = 0.0 ;


  regwatr(r,tm)        = regwat(r,tm)*eff(r) ;
  regwatr(r,"total")   = sum(tm,regwatr(r,tm)) ;

*--    reports

 Parameter rep1(c,z,*,*)  report on crop input
              ;
  rep1(c,z,"land",tm)          =  land(c,z,tm)               ;
  rep1(c,z,"land","total")     =  sum(tm, land(c,z,tm))      ;
  rep1(c,z,"water",tm)         =  water(c,z,tm)              ;
  rep1(c,z,"water","total")    =  sum(tm, water(c,z,tm))     ;
  rep1(c,z,"laborm",tm)        =  laborm(c,z,tm)             ;
  rep1(c,z,"laborm","total")   =  sum(tm, laborm(c,z,tm))    ;

  Display  agrreg,regwat, regwagm;
  Display  "water - cubic meters per feddan ", rep1;
  Display  yield,yld, netcs ;


$Stitle variables and equations

  Variables
    xcrop (r,c)   cropping activities(1000's feddans)
    imports(c)    national imports    (1000's tons   )
    exports(c)    national exports    (1000's tons   )
    natq (c,g)    domestic consumption(1000's tons   )
    anut (nt,r)   livestock nutrition - protein and starch (1000's tons)
    sales(c)      gross production of a commodity
    trans(c,r,rp) straw quantity transfered to the region(1000's tons)
    fodder(r,c)   straw obtained from by products(1000's tons )
    tlab(r,tm)    temporary labor (1000 man months)
    flab(r,tm)    family labor (1000 man months)
    cps           consumer and producer surplus(1000's le)
             ;

 Positive Variable  xcrop,imports,exports,natq,anut,trans,fodder,sales
                    natq, tlab, flab;

  Equations  landb(r,tm)    land balances (1ooo'fedds)
             labbal(r,tm)   labor balance (1000 man months)
             waterb         water constraints
             vegetb(s,r)    vegetables constraints
             comb(c)        commodity balance
             demb(c)        demand balance
             conv(c)        convexity constraints
             gfodb(r)       straw balance constraints
             fodb(r,c)      fodder balance
             nutb(nt,r)     nutrition balance
             obj            objective function
              ;

$Stitle equations


 comb(cn)..    sales(cn)      =l= sum((r,c), xcrop(r,c)*yld(cn,c,r));


 demb(cn)..    sales(cn)*(1-los(cn))+imports(cn) =e=
                         exports(cn)+sum(g,qs(cn,g)*natq(cn,g));

 conv(cn)..    sum(g,natq(cn,g)) =e= 1;

 landb(r,tm)..  sum((c,z)$zr(z,r),xcrop(r,c)*land(c,z,tm))
                                                 =l=agrreg(r,"area")    ;
 labbal(r,tm).. sum( (c,z)$zr(z,r), xcrop(r,c)*laborm(c,z,tm))/day =l=
                                                tlab(r,tm)+ flab(r,tm);
 waterb..       sum(r, sum((c,tm,z)$zr(z,r),xcrop(r,c)*water(c,z,tm) ))
                                                 =l= 30000*1000        ;
 vegetb(s,r).. sum(c$sv(s,c), xcrop(r,c))        =l= veg(r,s)*1.5 ;

 fodb(r,cf)..  fodder(r,cf) =e= xcrop(r,cf)*sum(z$zr(z,r) ,feed(cf,z))+
             sum(rp$tranc(r,rp), trans(cf,rp,r)-trans(cf,r,rp))$ct(cf);

 nutb(nt,r)..  sum(cf,fodder(r,cf)*cropdat(cf,nt)*.01)+anut(nt,r)
                                                     =g= agrreg (r,nt);
 gfodb (r)..   sum(cfg, fodder(r,cfg))*grdf =l= sum(cfd, fodder(r,cfd));

  obj..   cps =e= totmd+sum(cn,  sum(g,natq(cn,g)*ws(cn,g))+
                  exports(cn)*pe(cn)- imports(cn)*pm(cn))
                 -sum((ct,r,rp),trans(ct,r,rp)*stran(r,rp))
                 -sum((r,c),xcrop(r,c)*netcs(c,r))
                 -sum((r,nt), anut(nt,r)*prnut(nt))
             -sum((r,tm), (flab(r,tm)+ 2*tlab(r,tm))*regwagm(r,tm)*day);

  Model egypt1 / comb, demb, conv, landb,waterb, vegetb,
                 fodb, gfodb, nutb, obj, labbal /;


  Options iterlim=2000 ;

 Table tlimit(c,*) trade limits (1000 tons)

                      imports    exports
  w-onion                          60
  w-tomato                        100
  cotton                          inf
  s+n-tomato                      100
  citrus                          110
  potato                          150
  rice                            300
  wheat                5000
  horse-bean            inf
  maize                 inf
  veg-oil               inf
  lentils               50
     ;
   xcrop.up(r,cup) = upbnds(cup,r);
   imports.up(c)   = tlimit(c,"imports") ;
   exports.up(c)   = tlimit(c,"exports") ;
   flab.up(r,tm)    = agrreg(r,"farmers")*0.4 ;

  Solve egypt1 using lp maximizing cps ;


$Stitle report on solution

  Set  s1  headings of total production table
           /crop-area, tot-prod, con-base, imports, exports        /
           ;

 Parameter     emply(*,r,*)  employment         (1000's man-month)
               fert          total quantity of fertilizer (1000's ton)
               rep3          report on aggrigate economic indicators
               rep2          cropped area report
               rep4          report on gross area etc.
               wateru        water use report
                ;

  emply("farmers",r,tm)        = flab.l(r,tm) ;
  emply("farmers",r,"total")   = sum(tm ,flab.l(r,tm) );
  emply("temp-lab",r,tm)       = tlab.l(r,tm) ;
  emply("temp-lab",r,"total")  = sum(tm ,tlab.l(r,tm) );
  wateru(r,tm)       = sum((c,z)$zr(z,r),xcrop.l(r,c)*water(c,z,tm));
  wateru(r,"total")  = sum(tm ,wateru(r,tm));
  fert("p-fert", r)  = sum(c,xcrop.l(r,c)*cropdat(c,"p-fer")) ;
  fert("p-fert","total") = sum(r,  fert("p-fert",r) );
  fert("n-fert",r)       = sum(c,xcrop.l(r,c)*cropdat(c,"n-fer")) ;
  fert("n-fert","total") = sum(r,fert("n-fert",r) );

  rep3("cps") = cps.l ;
  rep3("valpro")     = sum((r,c),xcrop.l(r,c)*yield(c,r)
                                                *demdat(c,"export-p"));
  rep3("valexp")     = sum(cn,exports.l(cn)*pe(cn)  )      ;
  rep3("valimp")     = sum(cn,imports.l(cn)*pm(cn)  )      ;
  rep3("revenue")    = sum(cn,sum(g,natq.l(cn,g)*rs(cn,g)))
                       + rep3("valexp")
                       + sum((r,c),xcrop.l(r,c)*indprod(c,r)*prby(c)) ;

 rep3("yfarm")    = rep3("revenue") -sum((r,c),xcrop.l(r,c)*netcs(c,r))
                   -sum((r,nt),anut.l(nt,r)*prnut(nt))-sum((ct,r,rp),
                    trans.l(ct,r,rp)*stran(r,rp))
                   +sum((r,c),xcrop.l(r,c)*indprod(c,r)*prby(c)) ;

  rep2(c,r) = xcrop.l(r,c); rep2(c,"total") = sum(r, rep2(c,r)) ;
  rep2("total",r)       =  sum(c,rep2(c,r))        ;
  rep2("total","total") =  sum((c,r),rep2(c,r))    ;

  rep4(c, "crop-area" ) =  rep2(c,"total")         ;
  rep4(c, "tot-prod"  ) =  sales.l(c)              ;
  rep4(c, "con-base")   =  demdat(c,"domes-cons")  ;
  rep4(cn,"imports"   ) =  imports.l(cn)           ;
  rep4(cn,"exports"   ) =  exports.l(cn)           ;
  rep4("total",s1     ) =  sum(c,rep4(c,s1))       ;

 Display emply,fert, rep2,rep3 , rep4 , wateru ;


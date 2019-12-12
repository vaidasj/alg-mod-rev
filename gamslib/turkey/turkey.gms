option NLP=convert;
option NLP=convert;
option NLP=convert;
$Title Turkey Agricultural Model with Risk (TURKEY,SEQ=86)
$Stitle Set Definitions

$Ontext

   This sector model was used to assess the comparative advantage
   of Turkish agriculture under a proposed policy of trade liberalization.


Le-Si, V, Scandizzo, P L, and Kasnagoklu, H, Turkey Agricultural
Sector Model. Tech. rep., The World Bank, 1982.

$Offtext


 Set c     all crops        / wheat     , corn      , rye       , rice      , barley    , chickpea  , drybean   , lentil
                              potato    , onion     , gr-pepper , tomato    , cucumber  , sunflower , groundnut , cotton
                              sugarbeet , tobacco   , melon     , alfalfa   , fodder    , soybean   , sesame    , fallow
                              olive     , tea       , citrus    , grape     , apple     , peach     , apricot   , cherry
                              wildcherry, strawberry, banana    , quince    , pistachio , hazelnut  /

     ca(c) annual-crop comm / wheat     , corn      , rye       , rice      , barley    , chickpea  , drybean   , lentil
                              potato    , onion     , gr-pepper , tomato    , cucumber  , sunflower , groundnut , cotton
                              sugarbeet , tobacco   , melon     , alfalfa   , fodder    , soybean   , sesame
                              fallow    /

    ct(c)  tree-crop comm   / olive     , tea       , citrus    , grape     , apple     , peach     , apricot   , cherry
                              wildcherry, strawberry, banana    , quince    , pistachio , hazelnut  /

    cl     livestock comm   / meat      , milk      , wool      , hide      , egg       /


    cp(c)  processed comm   / wheat ,tomato , olive    , tea , grape , hazelnut /

    co(c)  concentrates     / wheat , rye   , barley    , sugarbeet /
    ctr(c)  fodder transfer / wheat, corn, rye, barley, alfalfa, fodder /
    cg(c)  grains for feed  / wheat, corn, rye, barley /
    cgf(c)  green fodder    / alfalfa, fodder /

    fclass  feed class      / pasture, grain+con, d-fodder, g-fodder /

    mi     miscellaneous input-output commodities / phosphate , nitrogen , seeds , product , fodder /

    mc(mi) miscellaneous inputs for annual crops  / phosphate , nitrogen , seeds /

    l      livestock types  / sheep , goat , angora , cattle , buffalo , mule , poultry /

    sd     land types for data presentation only / irrigated   good or poor , dry         good or poor
                                                   irr-good  , irr-poor     , dry-good  , dry-poor
                                                   tree-land , pasture      /

    s(sd)  crop land types  / irr-good    irrigated good land   , irr-poor    irrigated poor land
                              dry-good    dry good land         , dry-poor    dry poor land         /

    ms(s,sd) map of s to land types / (irr-good,irr-poor).irrigated         , (dry-good,dry-poor).dry
                                       irr-good.irr-good , irr-poor.irr-poor, dry-good.dry-good  , dry-poor.dry-poor/


    tq     time periods - quarters / q1*q4 /

    ty     time periods - years / 1974*1979 /

    ps     plowing power sources   / labor, animal , tractor /

    ds(ps) draft power sources     / animal, tractor /

    pt     plowing techniques    / tradition , mechanized /

    cpt(c,pt) crops-plowing technology

    r      crop rotations  / r01*r50 /

    sr(s,r) land type-rotation mapping ;

 cpt(ct,pt) = yes; cpt("tea","mechanized") = no;

$Stitle production data

 Table cropd1(c,sd,ps,tq) labor & draft requirements: annual crops (hrs per ha per quarter)

                                labor.q1   labor.q2   labor.q3   labor.q4  animal.q1  animal.q2  animal.q3  animal.q4

 wheat.dry-good                     .8        4         28.3       46.4                   2         27         43
 wheat.dry-poor                   18         27.2       25.2       31.2       14         26         24         30
 wheat.irrigated                   1.4       28.9       45.9       52.8                   4         43         49
 corn.dry                         14         87.4       75.6                  14         19.2        3.6
 corn.irrigated                   88        258.3      177.6       64.9       88         17                    35
 rye.dry                          11.2       32.7       22.3        29.2      11         32         21         28
 rice.irrigated                             400        105                              100         25
 barley.dry-good                   2.5        1        168.1        20.1                            95         17
 barley.dry-poor                   8         38.2       19.4        27.2       8         38         18         26
 chickpea.dry                     27         56.4       88.1        28        27         15          4         28
 chickpea.irrigated               14        289        165.2        14        14         30         15         14
 drybean.irrigated                19        223.7      238.8        57.7      19         44         31         40

 lentil.dry                        5         67.7      143.8        10.4       5         33         52         10
 potato.irrigated                 16        315.7      324.4       176.2      16         53         47        101
 onion.dry                       197        205.6      527.2                  57                    33
 onion.irrigated                 197.6      416.7      565.3        48.6      87         10         44         27
 gr-pepper.irrigated              33        331.4     1040.2                  33         68         56
 tomato.irrigated                126.9      728.8     1067.4       105.3      57         54        122         42
 cucumber.irrigated               41        262.9      948.4        34        41         19         95         34
 sunflower.dry                    35.2      132.1      21.3                   34         17         19
 sunflower.irrigated              41.8      104.7      21.9          8        38         10                     6
 groundnut.irrigated              59        304       353.3        371.5      57         75          6         39
 cotton.irrigated                 41        317.8     451.6        403.7      41        131         64         41
 sugarbeet.irrigated              43.4      470.6     184.6         362.9     41.7       28.9       58.7       89.3
 tobacco.dry                      26        476.5     662.2         378.2     26         90         15         20
 melon.dry                        11.7       28.5     353.8          83.5     10         26         96
 melon.irrigated                  42        173.7     320.3          16       42         58         98         16

 alfalfa.irrigated                           85       185.5                              50         33
 fodder.dry                       15         40.5      68.5                   15         35         20
 soybean.irrigated                                    142.3         257.7                           50.2       61.8
 sesame.irrigated                           188.3     111.8          58.9                54.5       21.5       42


 Table cropd2(c,sd,mi)  other input-output coefficients for annual crops  (annual)

                                 nitrogen  phosphate    seeds       product  fodder
*                                   ( k g   p e r   h a)         (tons/ha)   (tons/ha)
 wheat.dry-good                     75        56.7      193.3        1.55      1.85
 wheat.dry-poor                     48.4      62.2      186.8        2         2.4
 wheat.irrigated                    60.8      67        188          3.4       4.1
 corn.dry                           48        60         60          1.7       3.4
 corn.irrigated                     66        32.5       60          4.7       9.4
 rye.dry                            40        50        185.4        1.5       1.8
 rice.irrigated                    100        50        120          4.62      5.55
 barley.dry-good                    42        50        250          2.3       2.8
 barley.dry-poor                    40.4      55        184          2         2.4
 chickpea.dry                       20        50        140           .9       1.1
 chickpea.irrigated                 27        69        100          1.8       2.16
 drybean.irrigated                  30        62.5      110          1.5       2.7

 lentil.dry                         21.3       8.3       99          1         1.1
 potato.irrigated                   70.6      84       1555         13.9
 onion.dry                          60        80         31          9.2
 onion.irrigated                    88.5     102         22         18.6
 gr-pepper.irrigated               110      110       36000         16
 tomato.irrigated                  118       75.5     22667         32.4
 cucumber.irrigated                 90       90           5.5       16.7
 sunflower.dry                      30       30         10           1.15
 sunflower.irrigated                40       40         11.5         1.7
 groundnut.irrigated                50       50        100           2.4
 cotton.irrigated                  160      100         75            .925
 sugarbeet.irrigated               153.4    144.9       10          40.29
 tobacco.dry                        28       21     200000            .9
 melon.dry                          30       20          6.9        10.4
 melon.irrigated                    54       63          4.5        18.3

 alfalfa.irrigated                  10       10         30          11
 fodder.dry                         30                 200           3.1
 soybean.irrigated                  60                  15           1.6
 sesame.irrigated                  120       40         70           1.25



 Table treed1(c,ps,tq) labor-draft requirements: tree crops (hrs per ha per quarter)

                                labor.q1   labor.q2   labor.q3   labor.q4  animal.q1  animal.q2  animal.q3  animal.q4

 olive                            42.8       36.1        1.9      139.6       30.4       30.4                  19
 tea                              12         74         55         15                     2
 citrus                          711.7      368.6      190        515.3       45.6                             45.6
 grape                           158.7      185.5      347         77.9                  55          44        28
 apple                            69.9      101.2      220.6      112.6                  61.6        74.8      23.8
 peach                           103.9       63.4      632.5      101.9                              77        39.3
 apricot                         107.2      419.3      234.1       40                   181           9
 cherry                          256.5     1365.7       58         30        137        172
 wildcherry                       85.1      340       1151.3       30                   244          28
 strawberry                      102.4     1580.6       77.5      281                     8.6         8.1      31.5
 banana                           86        894        285        972.5                                       127
 quince                           66.8      161.5      159.4      165.4                  93.5                  22.6
 pistachio                       159         18        170        154.4      120         18          10
 hazelnut                        113        113        591        113                                10


 Table treed2(c,mi)  other input-output coefficients for tree crops: on tree land (annual inputs)

                                 nitrogen  phosphate    seeds       product
*                                    ( k g    p e r    h a )     (tons/ha)
 olive                             7.6        5.7                    .912
 tea                              25.9        7.5                   6.316
 citrus                          152        152                    22.8
 grape                            25         40                     4.029
 apple                            15.8       30.8                   5.852
 peach                             6.2       23.1                   9.81
 apricot                          40         50                     4.04
 cherry                           50         40                     4.7
 wildcherry                       50         80                     4.35
 strawberry                       24.8                              4.41
 banana                          400        240                    15.6
 quince                           27.5       55                     6.16
 pistachio                                   20          1.5         .35
 hazelnut                        130          1.7                    .9


 Table yieldl(cl,l)  livestock yields (kg per head per year)

                      sheep   goat   angora   cattle   buffalo   mule   poultry
 meat                  7.34   6.85    1.77     25.12     32.68             2.24
 milk                 24.02  38.32   15       217       285.1
 wool                  1.29    .6     1.58
 hide                   .39    .28     .09      3.3       3.02
 egg                                                                      76.37


 Table dpower(ds,l)    draft power availability  (hours per head per quarter)

                      cattle  buffalo  mule
 animal                 10      15      30


 Parameter labl0(l) labor requirements for livestock (man-hrs per head per quarter) /
                    (sheep,goat,angora)  = 11.53, cattle    = 142  , buffalo    = 65
                     mule                = 78   , poultry   =   .66                    /
           ereq(l)  animal energy requirements in starch equivalent (tons per animal unit)  /
                    sheep .1136, goat .1195, angora .1477, cattle .4262, buffalo .5497, mule .4442, poultry .0025 /

 Scalar evalp  energy equivalent of pasture (tons per ha)  / .2 /

 Table  eval(*,c)  energy values in starch equivalent (kg per kg)

             wheat  corn  rye  barley  (chickpea,drybean,lentil)   sugarbeet  alfalfa  fodder
 product      .72    .78  .65   .71                                              .3      .4
 concentrat   .5          .24   .6                                     .6
 fodder       .13    .15  .17   .23            .19

 Parameter ioconc(c)       feedstock concentrate available from 1 unit of consumed primary product /
                           (wheat,barley) .15,  rye .1,  sugarbeet .09 / ,
           gmin(cg)        by weight minimum grain consumed by animals /
                           (wheat,corn) .1, rye .05, barley .65/ ,
           gmax(cg)        by weight maximum grain consumed by animals /
                           (wheat,corn) .15, rye .1, barley .75/ ;


 Table  fmin(l,fclass) minimum feed by fclass (proportion)

                       pasture  grain+con  d-fodder  g-fodder
 (sheep,goat,angora)      .3       .05        .1        .01
 (cattle,buffalo,mule)    .2       .1         .1        .01
 poultry                          1.0


 Table  fmax(l,fclass) maximum feed by fclass (proportion)

                       pasture  grain+con  d-fodder  g-fodder
 (sheep,goat,angora)      .5       .4         .25        .8
 (cattle,buffalo,mule)    .35      .5         .35        .8
 poultry                          1.0

 Parameter a(c,r,s)  crop rotation schedules: crop and land type define unique schedule

 Table a1(c,r)  rotation schedules :   dry-poor land

                r01   r02
* (years)         2     2
 wheat           .5
 barley                .5
 fallow          .5    .5


 Table a2(c,r)  rotation schedules :   either dry-good or dry-poor land

                   r01   r02   r03   r04   r05   r06   r07   r08   r09   r10
* (years)            4     2     2     2     2     2     2    2     2     2
 corn              .75    .5    .5
 rye                            .5    .5    .5    .5    .5    .5    .5    .5
 chickpea                 .5          .5
 lentil                                     .5
 sunflower                                        .5
 tobacco                                                .5
 onion                                                        .5
 melon                                                              .5
 fodder                                                                   .5
 fallow            .25



 Table a3(c,r)  rotation schedules :   dry-good land

                r01   r02   r03   r04   r05   r06   r07   r08   r09   r10   r11   r12   r13   r14   r15   r16   r17
*(years)        4     5      2     2     2     2     2     2     2     2     2     2     2     2     2     2     2
 wheat          .5    .4     .5    .5    .5    .5    .5    .5    .5    .5
 barley                                                                      .5    .5    .5    .5    .5    .5    .5
 corn                        .5                                              .5
 rye
 chickpea                          .5                                              .5
 lentil         .25   .2                 .5                                              .5
 sunflower                                     .5                                              .5
 tobacco                                             .5                                              .5
 onion                                                     .5
 melon                                                           .5                                        .5
 fodder         .25   .2                                               .5                                        .5
 fallow               .2



 Table a4(c,r)  land rotation schedules: either irr-poor or irr-good land

                  r01   r02   r03   r04   r05   r06   r07   r08   r09   r10   r11   r12   r13   r14   r15   r16   r17
*(years)          4     2     2     3     3     2     3     2     2     3     3     2     3     3     3     2     2
 wheat                  .5    .5    .66   .33   .5    .33   .5    .5    .33   .33   .5          .33   .33   .5
 chickpea                     .5
 rice             .75   .5
 drybean                                              .33
 potato                             .33                      .5
 onion                                                                              .5
 tomato                                   .33
 sunflower                                      .5
 gr-pepper
 cucumber
 cotton                                                                       .33         .66
 sugarbeet                                            .33                                             .33
 melon                                    .33                                                   .66
 alfalfa                                                          .5                                  .33         .5
 soybean                                                                .33   .33
 sesame                                                                 .33                                 .5    .5
 fallow           .25                                                                     .33

 +                r18   r19   r20
*(years)          2     2     2
 corn             .5    .5    .5
 chickpea         .5
 groundnut              .5
 sesame                       .5


 Table a5(c,r)  land rotation schedules: irrigated good land

                   r01   r02   r03   r04   r05   r06   r07   r08   r09   r10   r11   r12    r13    r14
*(years)           4     4     2     2     3     3     3     3     3     4     3     3      3      3
 wheat             .25   .25   .5    .5    .33   .33   .33   .33   .33   .25   .33   .33    .33    .33
 corn              .25                                                         .33                 .33
 melon                                                       .33         .25                .33
 rice                                                              .33
 drybean                 .25
 tomato                                    .33
 potato                                    .33
 soybean                                                                 .25
 gr-pepper          .25
 groundnut                                             .66
 cucumber                .25
 cotton                        .5                            .33   .33   .25   .33   .33    .33   .33
 sugarbeet          .25  .25         .5          .33
 sunflower                                       .33                                 .33

 +           r15    r16    r17    r18    r19    r20    r21
*(years)      1      4     2      1      1      1      3
 wheat        .5     .25
 rice                       .5
 corn                              .5
 potato                                   .5
 drybean      .125                 .125   .125   .125   .33
 gr-pepper    .125                 .125   .125   .125   .33
 tomato       .125                 .125   .125   .125
 cucumber     .125                 .125   .125   .125
 cotton               .75    .5
 sunflower                                       .5
 onion                                                  .33


$Stitle calculations

 Parameter labc(s,r,pt,tq)       labor requirements: annual crops      (1000 man-hrs per ha)
           drc(s,r,ds,pt,tq)     draft requirements: annual crops           (1000hrs per ha)
           inpc(c,s,r,mi)        annual input requirements: annual crops         (kg per ha)
           yieldc(c,s,r)         yields: annual crops                          (tons per ha)
           yieldf(c,s,r)         fodder production by rotation and crop: annual crops  (tons per ha)

           labt(c,pt,tq)         labor requirements: tree crops        (1000 man-hrs per ha)
           drt(c,ds,pt,tq)       draft requirements: tree crops             (1000hrs per ha)
           inpt(c,mi)            annual input reqiurements: tree crops           (kg per ha)
           yieldt(c)             yields: tree crops                            (tons per ha)

           labl(l)               labor requirements: livestock         (1000 man-hrs per hd)
           roff(r,s)             round off error in above a matrix
 Scalar     dryg, dryp, irrg
                       ;

 dryp   = sum(r$sum(ca, a1(ca,r)), 1);
 dryg   = sum(r$sum(ca, a3(ca,r)), 1);
 irrg   = sum(r$sum(ca, a5(ca,r)), 1);

 a(ca,r,"dry-poor")    = a1(ca,r);
 a(ca,r,"dry-good")    = a3(ca,r);
 a(ca,r+dryp,"dry-poor") = a2(ca,r);
 a(ca,r+dryg,"dry-good") = a2(ca,r);
 a(ca,r,"irr-good")    = a5(ca,r);
 a(ca,r,"irr-poor")    = a4(ca,r);
 a(ca,r+irrg,"irr-good") = a4(ca,r);

 roff(r,s) = sum(ca, a(ca,r,s));
 a(ca,r,s)$roff(r,s) = a(ca,r,s)/roff(r,s);
 Display roff,a;
 sr(s,r)                 = yes$sum(ca, a(ca,r,s));

 cropd1(ca,s,ps,tq)$(cropd1(ca,s,ps,tq) eq 0)  = sum(sd$ms(s,sd), cropd1(ca,sd,ps,tq));
 cropd2(ca,s,mi)$(cropd2(ca,s,mi) eq 0)        = sum(sd$ms(s,sd), cropd2(ca,sd,mi));

 labc(s,r,"tradition",tq)   = sum(ca, cropd1(ca,s,"labor",tq)*a(ca,r,s)) / 1000;
 labc(s,r,"mechanized",tq)  = sum(ca, a(ca,r,s)*(cropd1(ca,s,"labor",tq) - .9*cropd1(ca,s,"animal",tq)) ) / 1000;
 drc(s,r,"animal","tradition",tq)   = sum(ca, a(ca,r,s)*cropd1(ca,s,"animal",tq)) / 1000;
 drc(s,r,"tractor","mechanized",tq) = .1*sum(ca, a(ca,r,s)*cropd1(ca,s,"animal",tq)) / 1000;
 inpc(ca,s,r,mc)  = cropd2(ca,s,mc)*a(ca,r,s);
 yieldc(ca,s,r)   = cropd2(ca,s,"product")*a(ca,r,s);
 yieldf(ca,s,r)   = cropd2(ca,s,"fodder")*a(ca,r,s);

 labt(ct,"tradition",tq)     = treed1(ct,"labor",tq) / 1000;
 labt(ct,"mechanized",tq)    = (treed1(ct,"labor",tq) - .9*treed1(ct,"animal",tq)) / 1000;
 labt("tea","mechanized",tq) = 0;
 drt(ct,"animal","tradition",tq)      = treed1(ct,"animal",tq) / 1000;
 drt(ct,"tractor","mechanized",tq)    = .1*treed1(ct,"animal",tq) / 1000;
 drt("tea","tractor","mechanized",tq) = 0;
 inpt(ct,mc)      = treed2(ct,mc);
 yieldt(ct)       = treed2(ct,"product");

 labl(l)          = labl0(l)/1000/card(tq);
 Display a,sr,cropd1,cropd2,labc,drc,inpc,yieldc,yieldf,labt,drt,inpt,yieldt,labl;
 Display a,sr,labc,drc,yieldc,ctr,inpc;

$Stitle trade data

 Scalar    exchrate   turkish pounds to us$  / 47 /
 Parameter pec(c)     export price of crop commodities    ($ per ton)
           pmc(c)     import price of crop commodities    ($ per ton)
           pel(cl,l)   export price of livestock products  ($ per ton)
           pml(cl,l)  import price of livestock products   ($ per ton)
           pep(c)     export price of processed products  ($ per ton)
           pmp(c)     import price of processed products  ($ per ton)

 Table tradec(c,*)   1979 production & trade: crop commodities (1000 tons and $ per ton)

              production  export-q   export-p    import-q    import-p   other-q
 wheat           13205     1231        125.6                              607
 corn             1242                                                    680
 rye               807       10        130                                399
 rice              225                             22.8      383.3
 barley           5000        0.5      141.1                             3975
 chickpea          285       50        589.1                              -10
 drybean            69        0.3      832.6                                6
 lentil            285      108        396.7                              -20
 potato           2870       12.9      171.4
 onion            1000       76.5       94.7
 gr-pepper          545        0.4      497.1
 tomato           3500       25.6      117.8                               92.5
 cucumber          500
 sunflower         590                                                    -39
 olive             430        5.4      680                                148
 groundnut          57.5      1.4      709.6
 soybean             3.3
 sesame             26
 cotton            476.2    150.6     1751.2
 sugarbeet        8760
 tobacco           206.4     69.6     1908.3
 tea               555                                                     30
 citrus           1147      131.5      182.7
 grape            3500        8.1      276.6                              302
 apple            1350       29.7      224.2
 peach             220        0.9      210.1
 apricot           110
 cherry             92
 wildcherry         50
 melon            5220       23.2       86.9
 strawberry         22        0.1      830.3
 banana             23.3
 quince             45        0.1      184.9
 pistachio          20        0.6     3760
 hazelnut          300        7.4     1115.9                              282


 Table tradel(l,cl,*)   1979 production & trade: livestock commodities (1000 tons and $ per ton)

                    production  export-q  export-p  import-q   import-p   other-q
 sheep.meat            338       31        2220
 sheep.milk           1102.2
 sheep.wool             59.3                            6       4315.8
 sheep.hide             16.2
 goat.meat             103.5      2.8      2220
 goat.milk             571.1
 goat.wool               9.2      0.3       700.2
 goat.hide              3.8
 angora.meat            6.5       0.2      2220
 angora.milk           54.9
 angora.wool            5.8       1.5       804.6
 angora.hide             .3
 cattle.meat          391         4        1140
 cattle.milk         3386.4
 cattle.hide           51.6
 buffalo.meat          34         3        1140
 buffalo.milk         296.6
 buffalo.hide           2.7
 poultry.meat         132        18         762
 poultry.egg         4322.7


 Table tradepp1(*,c)    trade of processed products: prices and export-import limits

                   wheat     tomato     sunflower    olive      tea     grape    hazelnut
 price             132       604.4       1183       3308      2223.3   1164.5     2699.3
 limit              40        18.5         13         29.6       5.7     75.6      127
 factor               .85       .2           .33        .2        .19      .25        .45
                                                             ;

 pec(c) = tradec(c,"export-p");  pel(cl,l)   = tradel(l,cl,"export-p"); pep(cp)  = tradepp1("price",cp);
 pmc(c) = tradec(c,"import-p");  pml(cl,l)   = tradel(l,cl,"import-p");
 Display pec,pmc,pel,pml,pep;


 Parameter iop(c)      processed product factor
           impcb(c)    import bound: crop comm          (1000 tons)
           implb(cl,l)  import bound: livestock comm     (1000 tons)
           imppb(c)    import bound: processed comm     (1000 tons)
           expcb(c)    export bound: crop comm          (1000 tons)
           explb(cl,l)  export bound: livestock comm     (1000 tons)
           exppb(c)    export bound: processed comm     (1000 tons);

 iop(cp)    = 1/tradepp1("factor",cp);
 impcb(c)    = tradec(c,"import-q");
 implb(cl,l)  = tradel(l,cl,"import-q");
 expcb(c)    = tradec(c,"export-q");
 explb(cl,l)  = tradel(l,cl,"export-q");
 exppb(cp)  = tradepp1("limit",cp);
 Display iop;

$Stitle time series data and manipulations

 Table yieldtc(c,ty)  crop yield time series (kg per ha)

                    1974      1975      1976      1977      1978      1979

 wheat              1257      1595      1787      1785      1796      1867
 corn               1935      2000      2192      2181      2241      2308
 rye                1068      1379      1477      1412      1417      1428
 rice               3846      4212      4502      4377      4175      4615
 barley             1293      1731      1860      1813      1827      1871
 chickpea           1114      1229      1241      1304      1220      1125
 drybean            1450      1649      1559      1538      1560      1500
 lentil             1026      1083      1129      1083      1015      1046
 potato            12297     13911     15323     15556     15278     16982
 onion             10000     11167     12160     12071     12571     14493
 gr-pepper         10862     11009     11154     14092     14972     16000
 tomato            26875     28049     32738     33721     30841     32407
 cucumber          14783     16167     17000     15714     16964     16667
 sunflower           988      1167      1236      1217      1169      1326
 olive              1070       700      1353       490      1356       530
 groundnut          2444      2222      2738      2304      2364      2300
 soybean            2429      1089      1328      1019      1063      1031
 sesame              630       611       584       748       674       578
 cotton              714       716       817       740       727       778
 sugarbeet         30507     32388     37564     36042     31905     36511
 tobacco             884       828      1027       897       977       929
 tea                4980      5206      5787      7553      8503     10366
 citrus            21937     22400     21344     23504     20768     22650
 grape              4210      4110      4010      4184      4425      4118
 apple              4939      4639      4823      4257      4788      5786
 peach              8221     10063      9366      8778     10667      9843
 apricot            2930      4211      3840      3686      3570      4015
 cherry             3842      4101      4610      4841      4740      4694
 wildcherry         3541      3853      4176      4184      4491      4348
 melon              9897     10996     12371     10474     11395     14350
 strawberry         5006      4765      5143      6000      6000      4400
 banana            16761     17004     10579     16923     16429     15533
 quince             4933      5405      5733      6156      5601      6050
 pistachio            96       127        19       154        24        75
 hazelnut            715       909       689       806       853       784


 Table yieldtl(l,cl,ty)  livestock "yield" time series (kg per head)

                        1974      1975      1976      1977      1978      1979

 sheep.meat             10.60     11.42     10.60      9.38      8.97      6.93
 sheep.milk             23.7      24.1      24.2      24.2      24.0      23.9
 sheep.wool              1.3       1.3       1.3       1.3       1.3       1.3
 sheep.hide              0.5       0.6       0.6       0.5       0.6       0.4
 goat.meat               6.39      7.31      8.68      7.31      6.39      6.85
 goat.milk              37.7      38.1      38.2      38.2      38.3      37.8
 goat.wool               0.6       0.6       0.6       0.6       0.6       0.6
 goat.hide               0.2       0.3       0.3       0.3       0.2       0.3
 angora.meat             1.77      1.77      2.66      2.21      1.77      1.77
 angora.milk            14.9      15.2      14.8      15.2      14.8      15.0
 angora.wool             1.6       1.6       1.6       1.6       1.6       1.4
 angora.hide             0.1       0.1       0.1       0.1       0.1       0.1
 cattle.meat            24.59     25.12     21.42     23.00     18.25     25.12
 cattle.milk           210.0     208.1     219.8     213.8     214.8     217.5
 cattle.hide             3.3       3.4       2.9       3.0       2.6       3.3
 buffalo.meat           43.73     45.42     40.61     37.21     32.20     32.68
 buffalo.milk          267.1     269.2     263.8     219.6     275.5     285.1
 buffalo.hide            4.1       3.4       3.0       2.4       2.5       2.6
 poultry.meat            2.24      2.24      2.24      2.24      2.24      2.24
 poultry.egg            62.4      62.2      64.2      78.3      76.4      73.3


 Table pricetc(c,ty)   farm-gate price time series for crops (tl per kg)

                    1974      1975      1976      1977      1978      1979

 wheat              2.30      2.66      2.61      2.89      2.18      5.28
 corn               2.29      2.61      2.66      3.30      4.36      5.91
 rye                1.68      1.91      1.93      2.18      2.95      4.23
 rice               5.18      5.27      5.40      9.35     13.93     18.92
 barley             1.88      2.07      2.10      2.41      3.35      4.78
 chickpea           5.24      5.40      6.58     11.69     19.96     22.71
 drybean            8.01      9.78     10.43     14.50     26.10     38.76
 lentil             7.00      7.61      7.71      9.56     13.99     19.27
 potato             1.96      2.23      3.12      3.36      6.39     10.36
 onion              2.16      2.28      3.15      3.96      6.03      7.17
 gr-pepper          2.60      3.24      4.13      5.12      9.26     11.03
 tomato             2.07      2.30      2.37      3.91      7.02      8.27
 cucumber           2.65      2.54      3.00      4.64      8.28     10.41
 sunflower          4.62      5.22      5.77      7.07      8.21     11.72
 olive              5.97      5.82      5.38      8.63     12.37     28.04
 groundnut          9.26      8.65     10.04     14.93     18.32     28.33
 soybean            2.68      3.91      4.40      5.39      8.97     10.34
 sesame            12.97     19.00     15.50     18.50     23.13     73.31
 cotton            21.21     18.16     24.18     28.49     31.03     49.61
 sugarbeet          0.36      0.45      0.57      0.63      0.74      1.11
 tobacco           19.94     29.91     36.05     45.19     48.00     61.18
 tea                6.25      7.50      8.50     10.00     12.00     14.50
 citrus             2.81      3.12      3.24      4.56      7.53     10.05
 grape              3.93      3.97      4.94      8.35     12.62     19.04
 apple              3.07      3.50      3.91      5.28      8.95     13.60
 peach              3.07      3.59      4.35      7.81     11.49     18.92
 apricot            3.85      4.01      4.62      8.55     11.49     15.20
 cherry             5.34      5.51      7.61     11.27     13.00     17.31
 wildcherry         3.65      4.81      5.42      8.20     16.31     15.68
 melon              1.94      1.76      2.11      3.30      5.67      8.47
 strawberry         2.67      7.74     12.80     20.00     25.00     53.00
 banana             6.38     13.97     19.49     30.45     38.06     80.69
 quince             2.97      3.93      4.22      5.36     10.11     14.43
 pistachio         30.94     31.28     36.57     49.72     54.85    111.52
 hazelnut          11.62     12.76     14.25     15.41     20.88     39.49

$Eject

 Table pricetl(l,cl,ty)  farm-gate price series for livestock commodities (tl per kg)

                       1974      1975      1976      1977      1978      1979

 sheep.meat            12.62     13.77     16.94     23.24     37.26     56.90
 sheep.milk             3.58      4.96      5.61      7.63      9.79     17.81
 sheep.wool            22.02     33.12     44.42     58.52     76.42    169.48
 sheep.hide            15.60     17.04     16.40     18.51     33.35     60.02
 goat.meat              9.67     10.89     12.44     16.49     26.06     45.26
 goat.milk              3.15      4.61      5.57      5.82      8.20     12.50
 goat.wool             19.90     20.83     24.25     31.41     55.41     99.28
 goat.hide             15.60     17.04     16.40     18.51     33.35     60.02
 angora.meat           10.01     11.33     13.38     19.60     28.56     47.40
 angora.milk            3.15      4.61      5.57      5.82      8.20     12.50
 angora.wool           44.78     49.53     64.65     75.70     94.93    268.84
 angora.hide           15.60     17.04     16.40     18.51     33.35     60.02
 cattle.meat           12.50     13.26     16.60     24.67     32.16     62.13
 cattle.milk            3.45      4.70      5.48      6.34     10.04     14.30
 cattle.hide             .46       .35       .40       .52      1.28      2.64
 buffalo.meat          10.80     12.85     14.49     21.18     25.71     60.46
 buffalo.milk           3.61      4.76      5.44      6.31      8.78     12.81
 buffalo.hide            .46       .35       .40       .52      1.28      2.64
 poultry.meat          31.70     36.00     45.80     64.90    107.25    161.50
 poultry.egg            0.98      1.13      1.26      1.45      2.18      3.30


$Eject

 Parameter ordty(ty) , sumx , sumx2
*               crop regression parameters            livestock regression parameetrs
           sumyc(c)                                           , sumyl(cl,l)
           sumxyc(c)                                          , sumxyl(cl,l)
           betarc(c)   risk beta                              , betarl(cl,l)     risk beta
           alpharc(c)  risk alpha                             , alpharl(cl,l)    risk alpha

           pricec(c,ty)    time series prices      ($ per kg) , pricel(cl,l,ty)     time series prices       ($ per kg)
           cpricec(c,ty)   constant prices         ($ per kg) , cpricel(cl,l,ty)  constant price          ($ per kg)
           revc(c,ty)      revenue                 ($ per ha) , revl(cl,l,ty)      revenue                 ($ per ha)
           revdevc(c,ty)   revenue deviation       ($ per ha) , revdevl(cl,l,ty)   revenue deviation       ($ per ha)

           phi             risk factor
           k               risk scaling constant
           pfindex(ty)     wholesale price index  (1963 base)
                           / 1974  305,  1975  358,  1976  412,  1977  506, 1978  734,  1979  1093 /
           pfi(ty)         price deflator for agriculture  (1979 is one) ;

 pfi(ty) = pfindex(ty)/pfindex("1979"); Display pfi;
 phi   = 1;
 k     = sqrt(3.1416*card(ty)/(card(ty)-1)/2);

 pricec(c,ty)    = pricetc(c,ty)/exchrate;
 cpricec(c,ty)   = pricec(c,ty)/pfi(ty);
 pricel(cl,l,ty) = pricetl(l,cl,ty)/exchrate;
 cpricel(cl,l,ty)= pricel(cl,l,ty)/pfi(ty);

 ordty(ty) = ord(ty);
 sumx      = sum(ty,  ord(ty));
 sumx2     = sum(ty, ord(ty)**2);

 revc(c,ty)= cpricec(c,ty)*yieldtc(c,ty);
 sumyc(c)  = sum(ty, revc(c,ty));
 sumxyc(c) = sum(ty, ordty(ty)*revc(c,ty));
 betarc(c)     = (card(ty)*sumxyc(c) - sumx*sumyc(c)) / (card(ty)*sumx2 - sumx**2);
 alpharc(c)    = (sumyc(c)  - betarc(c)*sumx)/card(ty);
 revdevc(c,ty) = revc(c,ty) - alpharc(c) - betarc(c)*ord(ty);

 revl(cl,l,ty) = cpricel(cl,l,ty)*yieldtl(l,cl,ty);
 sumyl(cl,l)   = sum(ty, revl(cl,l,ty));
 sumxyl(cl,l)  = sum(ty, ordty(ty)*revl(cl,l,ty));
 betarl(cl,l)  = (card(ty)*sumxyl(cl,l) - sumx*sumyl(cl,l)) / (card(ty)*sumx2 - sumx**2);
 alpharl(cl,l) = (sumyl(cl,l) - betarl(cl,l)*sumx)/card(ty);

 revdevl(cl,l,ty) = revl(cl,l,ty) - alpharl(cl,l) - betarl(cl,l)*ordty(ty);

 Display cpricec, cpricel, revc, revl, alpharc, betarc, alpharl, betarl, revdevc, revdevl;

$Stitle   consumption and costs data

 Table demandc(c,*)  demand data: crop commodities

                    elas      factor     cost

 wheat              -0.337      0.85    47.95
 corn               -0.3        0.90    44.55
 rye                -0.2        0.90    43.18
 rice               -0.2        0.65    89.77
 barley             -0.25
 chickpea           -0.31
 drybean            -0.31
 lentil             -0.31
 potato             -0.2
 onion              -0.189
 gr-pepper          -0.189
 tomato             -0.189
 cucumber           -0.189
 sunflower          -0.302       0.33   290.18
 olive              -0.305       0.20   290.18
 groundnut          -0.305
 soybean            -0.305       0.18   290.18
 sesame             -0.305       0.40   290.18
 cotton             -0.3
 sugarbeet          -0.303       0.11    98.50
 tobacco            -0.3
 tea                -0.5         0.19   241.42
 citrus             -0.1971
 grape              -0.13
 apple              -0.14
 peach              -0.14
 apricot            -0.14
 cherry             -0.14
 wildcherry         -0.14
 melon              -0.189
 strawberry         -0.14
 banana             -0.14
 quince             -0.14
 pistachio          -0.4
 hazelnut           -0.4


 Table demandl(l,cl)    demand elasticities: livestock commodities

                    meat     milk    wool    hide     egg
 sheep              -.5      -.3      -.2    -.365
 goat               -.5      -.3      -.2    -.365
 angora             -.5      -.3      -.2    -.365
 cattle             -.605    -.5             -.365
 buffalo            -.5      -.5             -.365
 poultry            -.605                              -.6

$Stitle demand function calibration

 Set cll(cl,l)  tuples of livestock commodities and livestock in model

 Parameter qdc(c)    reference demand: 1979 crops                            (1000 tons)
           qdl(cl,l)  reference demand: 1979 lvstk comm                       (1000 tons)
           pdc(c)    reference prices: 1979 crops                            ($ per ton)
           pdl(cl,l)  reference prices: 1979 lvstk comm                       ($ per ton)
           betac(c)      gradient of crop commodity demand curve
           betal(cl,l)    gradient of livestock commodity demand curve
           alphac(c)     intercept of crop commodity demand curve            ($ per ton)
           alphal(cl,l)   intercept of livestock commodity demand curve       ($ per ton) ;

 qdc(c)    = tradec(c,"production") + tradec(c,"import-q") - tradec(c,"export-q") - tradec(c,"other-q");
 qdl(cl,l)  = tradel(l,cl,"production") + tradel(l,cl,"import-q") - tradel(l,cl,"export-q") - tradel(l,cl,"other-q");
 pdc(c)    = 1000*pricec(c,"1979") - demandc(c,"factor")*demandc(c,"cost");
 pdl(cl,l)  = 1000*pricel(cl,l,"1979");

 betac(c)$(qdc(c)*demandc(c,"elas")) = pdc(c)/qdc(c)/demandc(c,"elas");
 betal(cl,l)$(qdl(cl,l)*demandl(l,cl))  = pdl(cl,l)/qdl(cl,l)/demandl(l,cl);
 alphac(c)   = pdc(c) - betac(c)*qdc(c);
 alphal(cl,l) = pdl(cl,l) - betal(cl,l)*qdl(cl,l);


 cll(cl,l)   = yes$betal(cl,l);

 Display qdc,qdl,pdc,pdl,betac,betal,alphac,alphal,cl;

$Stitle costs data

 Parameter costq(ps) seasonal input costs (tl per hr & $ per hr) / labor  25 , tractor     15 /
           costf(mi) costs of fertilizers (us$ per kg)  / phosphate .1 , nitrogen .15714 /

           costs(c)   cost of seeds (tl per kg) /
                      wheat      6.5 , corn       8 , rye         6   , rice      24  , barley   4.5
                      chickpea  32.5 , drybean   39 , lentil     18.5 , potato    10.5, onion    7.5
                      gr-pepper   .2 , cucumber 900 , sunflower  20   , groundnut 35  , cotton   10
                      tomato      .4 , sugarbeet 64 , tobacco      .02, melon    585  , alfalfa  60  , fodder  22.5 /

          capcostt(c)  capital cost for tree crops (tl per ha) /
                    olive      1000 , tea     25000 , citrus      5000 , grape   3820 , apple   3920 , peach     10810
                    apricot    5990 , cherry   7590 , strawberry 46470 , banana 72980 , quince  6380 , pistachio  2000
                    wildcherry 6730 , hazelnut 2000 /

           lcostc(s,r,pt)      rotational labor cost for plowing: annual crops       (1000$ per ha)
           lcostt(c,pt)        seasonal labor cost for plowing: tree creops          (1000$ per ha)
           dcostc(s,r,pt)      rotational draft cost for plowing: annual crops       (1000$ per ha)
           dcostt(c,pt)        seasonal draft cost for plowing: tree creops          (1000$ per ha)
           icostc(r,s)         other annual input costs: annual crops                    ($ per ha)
           icostt(c)           other annual input costs: tree crops                      ($ per ha)
           lcostl(l)           seasonal labor cost: livestock activities           (1000$ per head)
           capitalt(c)         capital cost: tree crops                                  ($ per ha);


 lcostc(s,r,pt)       = sum(tq, costq("labor")*labc(s,r,pt,tq))/exchrate;
 lcostt(ct,pt)        = sum(tq, costq("labor")*labt(ct,pt,tq))/exchrate;
 dcostc(s,r,"mechanized") = sum((tq,ds), costq(ds)*drc(s,r,ds,"mechanized",tq));
 dcostt(ct,"mechanized")  = sum((tq,ds), costq(ds)*drt(ct,ds,"mechanized",tq));
 icostc(r,s)         = sum((ca,mc), costf(mc)*inpc(ca,s,r,mc)) + sum(ca, costs(ca)*inpc(ca,s,r,"seeds"))/exchrate;
 icostt(ct)          = sum(mc, costf(mc)*inpt(ct,mc));
 lcostl(l)           = card(tq)*costq("labor")*labl(l)/exchrate;
 capitalt(ct)        = capcostt(ct)/exchrate;
 Display lcostt,dcostc,dcostt,icostc,icostt,lcostl,capitalt;


$Stitle resource endowments

 Scalar    labsup    labor resource            (mill hours per season)  / 3088  /
           landlr    pasture land availability               (1000 ha)  /  21745.7 /

 Parameter landcr(s)  crop land availability (1000 ha) / dry-poor 16047.4 , dry-good  6560
                                                         irr-poor  1571.9 , irr-good  1221.8 /
           liver(l)  livestock endowment (1000 head)  / sheep   46026   , goat   15109 , angora  3666 , cattle  15567.1
                                                        buffalo  1040.3 , mule    2453 , poultry 58938.7  /
           drsup(ds) draft power supply (mill hrs per season)      / tractor  165.2  /
           landt(c)  tree crop land resource by tree crop (1000 ha) /
                     olive   545.5  , tea       53.6 , citrus     56.1 , grape     850  , apple   233.3 , peach    22.4
                     apricot    27.4, cherry    19.6 , wildcherry 11.5 , strawberry  5  , banana    1.5 , quince    7.4
                     pistachio  70.9, hazelnut 334.8 /
                ;

$Stitle model definition

 Variables xcrop(s,r,pt)     cropping activities: annual crops            (1000 ha)
           xtree(c,pt)       cropping activities: tree crops              (1000 ha)
           treeland(ct)      total land usage by tree crop                (1000 ha)
           cropland(ca)      total land usage by annual crop              (1000 ha)
           xlive(l)          livestock activities                      (1000 heads)
           prodc(c)          production: all crops                      (1000 tons)
           feed(l,fclass)    feed supply by source - starch equiv       (1000 tons)
           transfer(c)       products used for feed                     (1000 tons)
           totgrain          total products used for feed               (1000 tons)
           salesc(c)         sales: crop commodities                    (1000 tons)
           salesl(cl,l)       sales: livestock commodities               (1000 tons)
           exportp(c)        exports: proccessed and concentrates       (1000 tons)
           importc(c)        imports: crop commodities                  (1000 tons)
           importl(cl,l)      imports: livestock commodities             (1000 tons)
           exportc(c)        exports: crop commodities                  (1000 tons)
           exportl(cl,l)      exports: livestock commodities             (1000 tons)
           natconc(c)        national consumption: crop commodities     (1000 tons)
           natconl(cl,l)      national consumption: livestock commodities(1000 tons)
           revexp            revenue from exports                          (mill $)
           impcost           cost of imports                               (mill $)
           inpcost           cost of inputs                                (mill $)
           dprcost           cost of draft power                           (mill $)
           labcost           cost of labor                                 (mill $)
           capcost           capital costs for tree crops                  (mill $)
           pdev(ty)          positive revenue deviations                   (mill $)
           ndev(ty)          negative revenue deviations                   (mill $)
           sumdev            sum of absolute deviations                    (mill $)
           cps               consumer-producer surplus                     (mill $)

 Positive Variables xcrop,xtree,xlive,cropland,salesc,salesl,importc,importl,exportc,exportl,pdev,ndev,exportp
                    feed, transfer

 Equations landbc(s)         land balance: annual crops                   (1000 ha)
           landbt(ct)        land balance: tree crops                     (1000 ha)
           landuse(ca)       total crop land definition                   (1000 ha)
           labor(tq)         labor balance                               (mill hrs)
           draftb(ds,tq)     draft power balance                         (mill hrs)
           dprodc(c)         definition of crop production              (1000 tons)
           mbalc(c)          material balance: crops                    (1000 tons)
           mball(cl,l)       material balance: livestock                (1000 tons)
           feedp             pasture: starch equiv                      (1000 tons)
           feedg             grain and concentrates: starch equiv       (1000 tons)
           feedd             dry fodder supply: starch equiv            (1000 tons)
           feedgr            green fodder: starch equiv                 (1000 tons)
           totfeed(l)        total feed requirements                    (1000 tons)
           minfeed(l,fclass) minimum feed by component                  (1000 tons)
           maxfeed(l,fclass) maximum feed by component                  (1000 tons)
           tgrain            total grains consumed by animals           (1000 tons)
           mingrain(cg)      minimum grain by components                (1000 tons)
           maxgrain(cg)      maximum grain by components                (1000 tons)
           ndemc(c)          national demand balance: crops             (1000 tons)
           ndeml(cl,l)       national demand balance: livestock         (1000 tons)
           ddev              revenue deviation definition                  (mill $)
           dsum              sum of absolute revenue deviations definition (mill $)
           aexp              accounting: export revenues                   (mill $)
           aimp              accounting: import costs                      (mill $)
           ainp              accountinf: input costs                       (mill $)
           adpr              accounting: cost of draft power               (mill $)
           alab              accounting: cost of labor                     (mill $)
           acap              accounting: capital costs                     (mill $)
           obj               objective function                            (mill $);

$Eject

 landbc(s).. sum((r,pt)$sr(s,r), xcrop(s,r,pt)) =l= landcr(s);

 landuse(ca).. cropland(ca) =e= sum((r,s,pt), a(ca,r,s)*xcrop(s,r,pt)) ;

 landbt(ct)..   sum(pt$cpt(ct,pt), xtree(ct,pt)) =e= treeland(ct) ;


 labor(tq).. sum((s,r,pt), labc(s,r,pt,tq)*xcrop(s,r,pt)) + sum((ct,pt), labt(ct,pt,tq)*xtree(ct,pt))
           + sum(l, labl(l)*xlive(l)) =l= labsup;

 draftb(ds,tq).. sum((s,r,pt), drc(s,r,ds,pt,tq)*xcrop(s,r,pt)) + sum((ct,pt), drt(ct,ds,pt,tq)*xtree(ct,pt))
             =l= drsup(ds) + sum(l, dpower(ds,l)*xlive(l))/1000;

 dprodc(c)..  prodc(c) =e= sum((s,r,pt), yieldc(c,s,r)*xcrop(s,r,pt)) + sum(pt$cpt(c,pt), yieldt(c)*xtree(c,pt));


 ddev(ty)..  (sum(ca, revdevc(ca,ty)*cropland(ca)) + sum((cl,l)$cll(cl,l), revdevl(cl,l,ty)*xlive(l))
         + sum(ct, revdevc(ct,ty)*treeland(ct)))/1000 =e= pdev(ty) - ndev(ty);

 dsum.. sumdev =e= sum(ty, pdev(ty) + ndev(ty));

 mbalc(c).. prodc(c) =g= salesc(c)  + transfer(c)$ctr(c) + iop(c)*exportp(c)$cp(c);

 mball(cl,l)$cll(cl,l).. yieldl(cl,l)*xlive(l)/1000 =g= salesl(cl,l);

 feedp..  sum(l, feed(l,"pasture")) =l= landlr*evalp ;

 feedg..  sum(l, feed(l,"grain+con")) =l= sum(cg, eval("product",cg)*transfer(cg))
                              + sum(co, ioconc(co)*eval("concentrat",co)*natconc(co)) ;

 feedd..  sum(l, feed(l,"d-fodder")) =l= sum((ca,s,r,pt), yieldf(ca,s,r)*eval("fodder",ca)*xcrop(s,r,pt)) ;

 feedgr..  sum(l, feed(l,"g-fodder")) =l= sum(cgf, eval("product",cgf)*transfer(cgf)) ;

 totfeed(l)..  sum(fclass, feed(l,fclass)) =g= ereq(l)*xlive(l) ;

 minfeed(l,fclass)..  feed(l,fclass) =g=  fmin(l,fclass)*ereq(l)*xlive(l);

 maxfeed(l,fclass)..  feed(l,fclass) =l=  fmax(l,fclass)*ereq(l)*xlive(l);

 tgrain..   totgrain =e= sum(cg, transfer(cg)) ;

 mingrain(cg)..   transfer(cg) =g= gmin(cg)*totgrain ;

 maxgrain(cg)..   transfer(cg) =l= gmax(cg)*totgrain ;

 ndemc(c).. natconc(c) =e= salesc(c) + importc(c)$pmc(c) - exportc(c)$pec(c);

 ndeml(cl,l)$cll(cl,l).. natconl(cl,l) =e= salesl(cl,l) + importl(cl,l)$pml(cl,l) - exportl(cl,l)$pel(cl,l);

 ainp.. inpcost =e= (sum((r,s,pt)$sr(s,r), icostc(r,s)*xcrop(s,r,pt))
                  + sum((ct,pt)$cpt(ct,pt), icostt(ct)*xtree(ct,pt))) / 1000;

 adpr.. dprcost =e= sum((r,s,pt)$sr(s,r), dcostc(s,r,pt)*xcrop(s,r,pt)) + sum((ct,pt), dcostt(ct,pt)*xtree(ct,pt));

 alab.. labcost =e= sum((r,s,pt)$sr(s,r), lcostc(s,r,pt)*xcrop(s,r,pt)) + sum(l, lcostl(l)*xlive(l))
                  + sum((ct,pt), lcostt(ct,pt)*xtree(ct,pt));

 acap.. capcost =e= (sum((ct,pt)$cpt(ct,pt), capitalt(ct)*xtree(ct,pt))) / 1000;

 aimp.. impcost =e= (sum(c, pmc(c)*importc(c)$tradec(c,"import-q"))
                  + sum((cl,l)$cll(cl,l), pml(cl,l)*importl(cl,l)$tradel(l,cl,"import-q")) ) / 1000;

 aexp.. revexp =e= (sum(c, pec(c)*exportc(c)$tradec(c,"export-q"))
                 + sum((cl,l)$cll(cl,l), pel(cl,l)*exportl(cl,l)$tradel(l,cl,"export-q"))
                 + sum(cp, pep(cp)*exportp(cp)$tradepp1("price",cp))) / 1000;

 obj.. cps  =e=   (sum(c, alphac(c)*natconc(c) + .5*betac(c)*sqr(natconc(c)))
                    + sum((cl,l), alphal(cl,l)*natconl(cl,l) + .5*betal(cl,l)*sqr(natconl(cl,l))) ) / 1000
                 + revexp - impcost - inpcost - dprcost - labcost - capcost - phi*k*sumdev/card(ty);


 Model turkeyn  nonlinear formulation  /
                landbc , landuse , landbt , labor , draftb , dprodc ,  ddev , dsum , mbalc , mball
                feedg , feedd, feedgr, totfeed, minfeed, maxfeed , ndemc , ndeml ,  ainp , adpr , alab , acap , aimp
               aexp, obj / ;

 exportc.up(c)   = expcb(c);    importc.up(c) = impcb(c);
 exportl.up(cl,l) = explb(cl,l);  importl.up(cl,l) = implb(cl,l);
 exportp.up(cp)   = exppb(cp);

 xlive.up(l)  = liver(l);

 treeland.lo(ct) = 0.75*landt(ct);   treeland.up(ct) = 1.25*landt(ct);

 Options limrow=0, limcol=0;

Solve turkeyn maximizing cps using nlp;

$Stitle demand curve linearization

 Set g     grid pints for demand curve linearization  / 1*11 /


 Parameter pmaxc(c)      maximum crop commodity price                        ($ per ton)
           pminc(c)      minimum crop commodity price                        ($ per ton)
           qmaxc(c)      maximum crop commodity demand                       (1000 tons)
           qminc(c)      minimum crop commodity demand                       (1000 tons)
           incrc(c)      quantity increment interval for crop commodity segments    (1000 tons)

           pmaxl(cl,l)   maximum livestock commodity price                    ($ per ton)
           pminl(cl,l)   minimum livestock commodity price                    ($ per ton)
           qmaxl(cl,l)   maximum livestock commodity demand                   (1000 tons)
           qminl(cl,l)   minimum livestock commodity demand                   (1000 tons)
           incrl(cl,l)   quantity increment interval for livestock commodity segments (1000 tons)

           qsc(c,g)      quantity definition                                 (1000 tons)
           qsl(cl,l,g)    quantity definition                                 (1000 tons)
           wsc(c,g)      welfare segments: crops                                (mill $)
           wsl(cl,l,g)    welfare segments: livestock                            (mill $)
           rsc(c,g)      revenue definition: crops                              (mill $)
           rsl(cl,l,g)    revenue definition: livestock                          (mill $);


 pminc(c)      = .2*pdc(c);
 qmaxc(c)$betac(c) = (pminc(c) - alphac(c))/betac(c);
 pmaxc(c)      = min(2*pdc(c),alphac(c));
 qminc(c)$betac(c)            = (pmaxc(c) - alphac(c))/betac(c);
 pminl(cl,l)              = .2*pdl(cl,l);
 qmaxl(cl,l)$betal(cl,l)  = (pminl(cl,l) - alphal(cl,l))/betal(cl,l);
 pmaxl(cl,l)              = min(2*pdl(cl,l),alphal(cl,l));
 qminl(cl,l)$betal(cl,l)  = (pmaxl(cl,l) - alphal(cl,l))/betal(cl,l);


 incrc(c) = (qmaxc(c) - qminc(c))/(card(g)-1);
 qsc(c,g) = qminc(c) + (ord(g)-1)*incrc(c);
 wsc(c,g) = (alphac(c)*qsc(c,g) + .5*betac(c)*sqr(qsc(c,g))) / 1000;
 rsc(c,g) = (alphac(c)*qsc(c,g) + betac(c)*sqr(qsc(c,g))) / 1000;

 incrl(cl,l) = (qmaxl(cl,l) - qminl(cl,l))/(card(g)-1);
 qsl(cl,l,g) = qminl(cl,l) + (ord(g)-1)*incrl(cl,l);
 wsl(cl,l,g) = (alphal(cl,l)*qsl(cl,l,g) + .5*betal(cl,l)*sqr(qsl(cl,l,g))) / 1000;
 rsl(cl,l,g) = (alphal(cl,l)*qsl(cl,l,g) + betal(cl,l)*sqr(qsl(cl,l,g))) / 1000;

 Display pminc,pmaxc,pminl,pmaxl,qminc,qmaxc,qminl,qmaxl
         incrc,incrl,qsc,qsl,wsc,wsl,rsc,rsl;

$Stitle additional model definition for linearized version

 Variables natqc(c,g)        domestic consumption segment: crop commodities
           natql(cl,l,g)      domestic consumption segment: livestock commodities
           adc               area under the demand curve (aggregate)       (mill $)

 Positive Variables natqc,natql;

 Equations demnatc(c)        national consumption balance: crops        (1000 tons)
           demnatl(cl,l)      national consumption balance: livestock    (1000 tons)
           dadcl             definition of area under the linearized demand curve   (mill $)
           combc(c)          convex combination: crops
           combl(cl,l)        convex combination: livestock
           objlin            objective definition ;

 demnatc(c).. natconc(c) =e= sum(g, natqc(c,g)*qsc(c,g));

 demnatl(cl,l)$cll(cl,l).. natconl(cl,l) =e= sum(g, natql(cl,l,g)*qsl(cl,l,g));

 dadcl..  adc =e= sum((c,g), wsc(c,g)*natqc(c,g)) + sum((cl,l,g)$cll(cl,l), wsl(cl,l,g)*natql(cl,l,g));

 combc(c)..  sum(g, natqc(c,g)) =e= 1;

 combl(cl,l)$cll(cl,l).. sum(g, natql(cl,l,g)) =e= 1;

 objlin.. cps =e= adc + revexp - impcost - inpcost - dprcost - labcost - capcost - phi*k*sumdev/card(ty);

 Model turkeyl  linearized formulation /
                landbc , landuse , landbt , labor , draftb , dprodc ,  ddev , dsum , mbalc , mball
                feedp , feedg , feedd , feedgr , totfeed , minfeed , maxfeed , tgrain , mingrain , maxgrain , ndemc
                ndeml , demnatc , demnatl , dadcl , combc , combl , ainp , adpr , alab , acap , aimp , aexp , objlin /

 Solve turkeyl maximizing cps using lp;

$Stitle report section

 Parameter prc(c,*)      crop prices ($ per ton)
           prl(cl,*,l)    livestock commodity prices ($ per ton)
           procr         production accounting by rotation and technology: annual crops  (1000 tons)
           procc         production accounting by crop type and technology: annual crops  (1000 tons)
           prol          production accounting: livestock     (1000 tons)
           prot          production accounting by techonology: tree crops    (1000 tons)
           areac         area under crops (1000 ha)
           costsum       production cost summary (mill $)
           tfeeduse(l)   total feed use by livestock type - starch equivalent     (1000 tons)
           feedsch(l,*,fclass)   feeding scheme of livestock (percentage)
                         ;

 prc(c,"farm-1979") = 1000*pricec(c,"1979");
 prc(c,"ref-price") = pdc(c);
 prc(c,"import-pr") = pmc(c);
 prc(c,"export-pr") = pec(c);
 prc(c,"shadow-pr") = 1000*mbalc.m(c);
 prc(c,"demand-pr") = alphac(c) + betac(c)*natconc.l(c);
 prc(c,"relative-p")$prc(c,"farm-1979") = prc(c,"demand-pr")/prc(c,"farm-1979");

 prl(cl,"farm-1979",l) = 1000*pricel(cl,l,"1979");
 prl(cl,"ref-price",l) = pdl(cl,l);
 prl(cl,"import-pr",l) = pml(cl,l);
 prl(cl,"export-pr",l) = pel(cl,l);
 prl(cl,"shadow-pr",l) = 1000*mball.m(cl,l);
 prl(cl,"demand-pr",l) = alphal(cl,l) + betal(cl,l)*natconl.l(cl,l);
 prl(cl,"relative-p",l)$prl(cl,"farm-1979",l) = prl(cl,"demand-pr",l)/prl(cl,"farm-1979",l);

 procr(r,pt) = sum((s,c), yieldc(c,s,r)*xcrop.l(s,r,pt));
 procr(r,"total") = sum(pt, procr(r,pt));
 procc(c,pt) = sum((s,r), yieldc(c,s,r)*xcrop.l(s,r,pt));
 procc(c,"total") = sum(pt, procc(c,pt));
 procc(c,"observed") = tradec(c,"production") ;
 prot(ct,pt) = yieldt(ct)*xtree.l(ct,pt);
 prot(ct,"total") = sum(pt, prot(ct,pt));
 prot(ct,"observed") = tradec(ct,"production") ;
 prol(cl,l)  = yieldl(cl,l)*xlive.l(l)/1000;
 prol(cl,"total") = sum(l, prol(cl,l));
 areac(c,pt)  = sum((s,r), a(c,r,s)*xcrop.l(s,r,pt)) + xtree.l(c,pt);
 areac(c,"total") = sum(pt, areac(c,pt));
 areac("total",pt) = sum(c, areac(c,pt));
 areac("total","total") = sum(pt, areac("total",pt));
 Display prc,prl,procc,procr,prot,prol,areac,xlive.l;

 costsum("labor") = labcost.l;
 costsum("tractor") = dprcost.l;
 costsum("capital") = capcost.l;
 costsum("fert+seed") = inpcost.l;
 costsum("export rev") = revexp.l;
 Display costsum;

 tfeeduse(l) = sum(fclass, feed.l(l,fclass)) ;
 feedsch(l,"minimum",fclass) = fmin(l,fclass) * 100 ;
 feedsch(l,"actual",fclass)$tfeeduse(l) = feed.l(l,fclass) * 100 / tfeeduse(l) ;
 feedsch(l,"maximum",fclass) = fmax(l,fclass) * 100 ;
 Display feedsch ;

$Stitle value accounting

 Sets ctp   commodity type /grains, pulses, vegetables, oil-crops, industrial, fruits, livestock/,
      ao    aggregated output /
            grains.(wheat, corn, rye, rice, barley),
            pulses.(chickpea, drybean, lentil),
            vegetables.(potato, onion, gr-pepper, tomato, cucumber, melon),
            oil-crops.(sunflower, olive, groundnut, soybean, sesame),
            industrial.(cotton, sugarbeet, tobacco, tea),
            fruits.(citrus, grape, apple, peach, apricot, cherry, wildcherry, strawberry, banana, quince,
                    pistachio, hazelnut)/ ;

 Parameter acctg     value accounting (million us$) ;

 acctg(ctp,"production") = (sum(c$ao(ctp,c), prc(c,"ref-price")*procc(c,"total")) +
                           sum(ct$ao(ctp,ct), prc(ct,"ref-price")*prot(ct,"total"))) / 1000 ;
 acctg("livestock","production") = (sum((cl,l), prl(cl,"ref-price",l)*prol(cl,l))) / 1000 ;
 acctg(ctp,"consumptn") = (sum(c$ao(ctp,c), prc(c,"ref-price")*natconc.l(c))) / 1000 ;
 acctg("livestock","consumptn") = (sum((cl,l), prl(cl,"ref-price",l)*natconl.l(cl,l))) / 1000 ;
 acctg(ctp,"export") = (sum(c$ao(ctp,c), prc(c,"export-pr")*exportc.l(c))) / 1000 ;
 acctg("livestock","export") = (sum((cl,l), prl(cl,"export-pr",l)*exportl.l(cl,l))) / 1000 ;
 acctg(ctp,"import") = (sum(c$ao(ctp,c), prc(c,"import-pr")*importc.l(c))) / 1000 ;
 acctg("livestock","import") = (sum((cl,l), prl(cl,"import-pr",l)*importl.l(cl,l))) / 1000 ;
 acctg("total","production") = sum(ctp, acctg(ctp,"production")) ;
 acctg("total","consumptn") = sum(ctp, acctg(ctp,"consumptn")) ;
 acctg("total","export") = sum(ctp, acctg(ctp,"export")) ;
 acctg("total","import") = sum(ctp, acctg(ctp,"import")) ;
 Display acctg ;

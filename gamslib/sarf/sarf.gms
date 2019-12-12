option LP=convert;
option LP=convert;
option LP=convert;
$Title Farm Credit and Income Distribution Model (SARF,SEQ=49)
$Stitle Set definitions

$Ontext

   This model evaluates the effects of credit pricing on farm
   production mix and technology choice and thus on employment
   and income distribution.


Husain, T, and Inman, R, A Model for Estimating the Effects of Credit
pricing on Farm level employment and income distribution. Tech. rep.,
The World Bank, 1977.

$Offtext


 Set c       crop commodities   / wheat , soy-beans , maize-for , alfalfa , sugar-beet , cotton /

     s       cropping schedules / sch-1*sch-8 /

     w       irrigation levels  / normal , stress-1*stress-3 /

     t       time periods (in fortnights) / 01*24 /

     g       agricultural tasks /

             plough
             disce
             harrow
             spray
             drill
             plant
             fertilize  spreading
             cultivate
             beet-lift   ing
             mow
             windrow
             bale
             harvest-g   grain harvesting
             harvest-f   forage harvesting
             harvest-c   cotton harvesting
             transport                    /

     mn      implements and power sources  /

*            power sources:
             tractor-l    large
             tractor-s    small
             draft-unit   pair of oxen
             self-prop    self-propelled units
             manual       operation

*            self-propelled units:
             combine-h    combine harvester
             forage-h     forage harvester
             cotton-p     self-propelled cotton picker

*            implements:
             f-plow-6     5 to 6 furrow plow
             f-plow-3     3 furrow plow
             f-plow-1     1 furrow plow
             harrow-o-d   offset disc harrow
             harrow-s-t   spike tooth harrow
             harrow-s     small harrow
             sprayer-l    large sprayer
             sprayer-s    small sprayer
             drill        for tractor use
             drill-s      small drill
             planter      precision planter
             planter-s    small precision planter
             spreader-l   large fertilizer spreader
             spreader-s   small fertilizer spreader
             cult-l       large cultivator
             cult-s       small cultivator
             beet-lift    er
             mower
             baler
             rake
             trailer-4t    4 ton trailer
             trailer-ht    half ton trailer
             sprayer-k     knapsack sprayer for manual operation /

     m(mn)   implements   / combine-h  , forage-h   , cotton-p  , f-plow-6  , f-plow-3 , f-plow-1 , harrow-o-d
                            harrow-s-t , harrow-s   , sprayer-l , sprayer-s , drill    , drill-s  , planter
                            planter-s  , spreader-l , spreader-s, cult-l    , cult-s   , beet-lift, mower
                            baler      , rake       , trailer-4t, trailer-ht, sprayer-k, manual   /

     n(mn)   power sources/ tractor-l , tractor-s , draft-unit , self-prop , manual /

     cposs(c,s)        crop possibilities

     taskposs(g,t)     task possibilities

     equipposs(mn,t)   equipment use possibilities

     cc                cost classifications in model / misc-input , water , operating , wages , capital /

$Stitle data: task and technology data

 Table equip(mn,*)  equipment costs and operating costs

* cost    :   purchase price (1000 rials)
* life    :   expected life for amortization of capital cost (years)
* opcost  :   operating cost (rials / hour)
* avail   :   hours of utilization available per fortnight (hours)

              cost   life   opcost   avail

 tractor-l    1000     5      220     140
 tractor-s     540     5      113     140
 draft-unit    100     6       18     100
 combine-h    1500     6      770     140
 forage-h     1500    10     1310     140
 cotton-p     4000     8      770      80
 f-plow-6      140     5       38     140
 f-plow-3      100    10       11     140
 f-plow-1        3     3              100
 harrow-o-d    200     5       54     140
 harrow-s-t     35     8        5     140
 harrow-s        3     3              100
 sprayer-l     112     4       11     140
 sprayer-s      11     3              100
 drill         200     6       72     140
 drill-s        13     3              100
 planter       200     6       46     140
 planter-s      20     3              100
 spreader-l     27     3        5     140
 spreader-s      3     3              100
 cult-l        125     5       30     140
 cult-s         13     3              100
 beet-lift      30    10       25     140
 mower          65     3       15     140
 rake           50     4       12     140
 baler         280     4       70     140
 trailer-4t    180     5       28     140
 trailer-ht     25     5              100
 sprayer-k      11     2               84

$Eject

 Table tech(g,mn,mn)  task technologies (hours per ha)

* first index   : agricultural task
* second index  : implement/tool
* third index   : power source
*
* transport requirements are in hours per ton

                        tractor-l    tractor-s    draft-unit   manual   self-prop

 plough.f-plow-6           2
 plough.f-plow-3           3            3
 plough.f-plow-1                                      45
 disce.harrow-o-d           .6
 disce.harrow-s-t                       1
 disce.harrow-s                                        6
 harrow.harrow-s-t                      1.6
 harrow.harrow-s                                       2

 harrow.manual                                                  50
 spray.sprayer-l            .5           .5
 spray.sprayer-s                                       8
 spray.sprayer-k                                                 8
 drill.drill                .5           .5
 drill.drill-s                                         8
 plant.planter             1.5          1.5
 plant.planter-s                                      20

 fertilize.spreader-l     4            4
 fertilize.spreader-s                                 8
 fertilize.manual                                               8
 cultivate.cult-l           .5          1
 cultivate.cult-s                                     20
 cultivate.manual                                               50
 harvest-g.combine-h                                                       1
 harvest-f.forage-h                                                        1.25
 harvest-c.manual                                              504
 harvest-c.cotton-p                                                        1

 beet-lift.beet-lift       2.5          2.5
 beet-lift.manual                                              200
 mow.mower                 1            1
 windrow.rake               .5           .5
 bale.baler                 .8          2
 transport.trailer-4t       .25          .25
 transport.trailer-ht                                  4

$Stitle crop data

 Table cropdata(*,c)

* 1. seed, fertilizer, herbicide, pesticide - cost in 1000 rials per ha
* 2. crop-limit - maximum percentage of available land that can be planted in each crop: agrocomic constraint
* 3. trans-adj - transport adustment: reflects different travel distances and waiting times
* 4. price - 1000 rials per ton
* 5. yield - normal yield in metric tons per ha
* 6. water - normal requirements in 1000 cubic meters per ha

                 wheat     soy-beans     maize-for     sugar-beet     alfalfa     cotton

 seed            2.16        1.6           1.05            .9            .2         .375
 fertilize       3.3         2.4           4.2            6.3           2.61       2.25
 herbicide       1.395        .5            .5             .4            .32
 pesticide                                                 .4                      1.8
 crop-limit      1           1              .15           1              .25       1
 trans-adj        .33         .67           .15            .43           .5        1
 price          10          23.96          1.08           1.8           5         16.47
 yield           3.5         2            60             35            12          3.5
 water           6.44       15.83         11.11          16.83         22.55      14.37


 Table stress(*,w,c)  water stress multiplier (proportion)

                  wheat     soy-beans     maize-for     sugar-beet     alfalfa     cotton

 yield.normal      1          1             1              1             1           1
 water.normal      1          1             1              1             1           1
 yield.stress-1     .98        .95           .98            .94           .95         .96
 water.stress-1     .9         .83           .9             .61           .83         .58
 yield.stress-2     .94        .79           .94            .89           .79         .71
 water.stress-2     .8         .55           .8             .38           .55         .25
 yield.stress-3     .75        .53           .75            .83           .53
 water.stress-3     .5         .28           .5             .23           .28


 Table  cs(c,*,s)  time periods (fortnight) when cropping schedules start and end

                                      sch-1  sch-2  sch-3  sch-4  sch-5  sch-6  sch-7  sch-8

 wheat.start                           13     14     15     16     17     17     17
 wheat.end                             11     12     13     13     13     11     11
 soy-beans.start                       23     23     23      1      2      5      6
 soy-beans.end                         16     16     16     17     17     17     16
 maize-for.start                       12     12     13     13     13     12     13
 maize-for.end                         19     20     19     20     20     20     20
 alfalfa.start                         23     24      1      2      3      4      5      6
 alfalfa.end                           19     19     19     19     19     19     19     19
 sugar-beet.start                      24      1      2      3      3      3
 sugar-beet.end                        21     21     21     22     22     23
 cotton.start                           3      4      5      6      6      3      5
 cotton.end                            16     17     17     17     19     20     16

$Eject

 Table atask(c,g,s)  time periods when a unit of agricultural task is to be performed (per ha)

* table atask specifies the time periods when various agricultural activities for each crop and according to the
* schedule are required.  the first and last periods during which cultivation must take place are given.

                                       sch-1   sch-2   sch-3   sch-4   sch-5   sch-6   sch-7   sch-8

 wheat.plough                            13      14      15      16      17      17      17
 wheat.disce                             14      15      16      17      18      17      18
 wheat.(harrow,spray)                    18      19      19      20      20      18      18
 wheat.fertilize                          6       7       7       7       7       6       6
 wheat.drill                             19      20      21      21      21      19      19
 wheat.(harvest-g,bale,transport)        11      12      13      13      13      11      11

 soy-beans.plough                        23      23      23       1       2       5       6
 soy-beans.(disce,harrow,spray)           4       5       6       4       4       6       6
 soy-beans.drill                          7       7       7       8       8       8       7
 soy-beans.cultivate                      9       9       9      10      10      10       9
 soy-beans.fertilize                      5       6       6       5       5       6       6
 soy-beans.(harvest-g,transport)         16      16      16      17      17      17      16

 maize-for.disce                         12      12      13      13      13      12      13
 maize-for.plant                         13      14      13      14      14      14      13
 maize-for.spray                         14      15      14      15      16      15      14
 maize-for.cultivate                     15      16      15      16      16      16      15
 maize-for.fertilize                     16      17      16      17      16      16      16
 maize-for.harvest-f                     19      20      19      20      20      20      19
 maize-for.transport                     19      20      19      20      20      20      20

 cotton.plough                            3       4       5       6       6       3       5
 cotton.disce                             4       5       6       7       7       4       7
 cotton.plant                             8       9       8       8       9       9       8

 alfalfa.plough                          23      24       1       2       3       4       5       6
 alfalfa.(disce,harrow)                   6       6       6       7       7       6       7       6
 alfalfa.drill                            9       9       9       9      10      10      10      10

 sugar-beet.plough                       24       1       2       3       3       3
 sugar-beet.disce                         1       2       3       4       4       4
 sugar-beet.plant                         4       4       4       5       5       6
 sugar-beet.fertilize                     6       6       6       7       7       7

$Eject

 table btask(c,g,s,t)  task requirements according to crop and schedule (per ha)

                                                           01      02      03      04      05      06      07      08

 alfalfa.(fertilize,spray).(sch-1*sch-4)                                                            1
 alfalfa.(fertilize,spray).(sch-5*sch-8)                                                                    1
 sugar-beet.harrow.sch-1                                                    1                               1
 sugar-beet.harrow.(sch-2*sch-4)                                                    1                       1
 sugar-beet.harrow.(sch-5,sch-6)                                                            1               1
 sugar-beet.cultivate.(sch-1*sch-3)                                                                 1               1
 sugar-beet.cultivate.(sch-4,sch-5)                                                                         1
 sugar-beet.cultivate.sch-6                                                                                         1
 sugar-beet.spray.(sch-1,sch-3)                                             1
 sugar-beet.spray.(sch-2,sch-4)                                                     1
 sugar-beet.spray.(sch-5,sch-6)                                                             1

 +                                                         09      10      11      12      13      14      15      16

 alfalfa.(fertilize,spray).(sch-1*sch-8)                                                    1       1               1
 alfalfa.(mow,windrow,bale).(sch-1*sch-8)                                           1               1       1
 alfalfa.transport.(sch-1*sch-8)                                                    0.2             0.2     0.2
 sugar-beet.cultivate.(sch-4,sch-5)                         1
 sugar-beet.cultivate.sch-6                                         1
 sugar-beet.spray.(sch-1*sch-3)                             1       1       1                       1       1       1
 sugar-beet.spray.(sch-4,sch-5)                                     1       1       1       1               1       1
 sugar-beet.spray.sch-6                                                     1       1       1       1       1       1
 cotton.cultivate.(sch-1*sch-7)                                             1       1
 cotton.spray.(sch-1,sch-3,sch-4,sch-7)                            1        1       1       1       1       1
 cotton.spray.sch-2                                                         1       1       1       1       1       1
 cotton.spray.sch-5                                                1        1       1       1                       1
 cotton.spray.sch-6                                                         1       1       1                       1
 cotton.(harvest-c,transport).(sch-1,sch-7)                                                                         1
 cotton.(harvest-c,transport).(sch-3,sch-4)                                                                         0.5

 +                                                         17      18      19      20      21      22      23     24

 alfalfa.(fertilize,spray).(sch-1*sch-8)                            1
 alfalfa.(mow,windrow,bale).(sch-1*sch-8)                   1               1
 alfalfa.transport.(sch-1*sch-8)                            0.2             0.2
 sugar-beet.(beet-lift,transport).(sch-1*sch-3)                                     .5      .5
 sugar-beet.(beet-lift,transport).(sch-4,sch-5)                                             .5      .5
 sugar-beet.(beet-lift,transport).sch-6                                                             .5      .5
 cotton.spray.sch-5                                                 1
 cotton.spray.sch-6                                                 1       1
 cotton.(harvest-c,transport).sch-2                         1
 cotton.(harvest-c,transport).(sch-3,sch-4)                 0.5
 cotton.(harvest-c,transport).sch-5                         0.34    0.33    0.33
 cotton.(harvest-c,transport).sch-6                          .25     .25     .25    .25

$Eject

 table lreq(c,s,t) labor requirements (hours per fortnight)

                                                     01      02      03      04      05      06      07      08

 wheat.(sch-1,sch-6,sch-7)                                                                   2
 wheat.(sch-2*sch-5)                                                                                 2
 soy-beans.(sch-1,sch-4,sch-5)                                                      20
 soy-beans.(sch-2,sch-3,sch-6,sch-7)                                                        20
 sugar-beet.(sch-1*sch-3)                                                                   26               6
 sugar-beet.(sch-4,sch-5)                                                                           26
 sugar-beet.sch-6                                                                                           26

 +                                                   09      10      11      12      13      14      15      16

 wheat.(sch-1,sch-6,sch-7)                                            2
 wheat.sch-2                                                                  2
 wheat.(sch-3*sch-5)                                                                  2
 soy-beans.(sch-1*sch-3,sch-7)                                                                                1
 maize-for.(sch-1,sch-3,sch-5*sch-7)                                                                          8
 sugar-beet.(sch-4,sch-5)                             6
 sugar-beet.sch-6                                            6
 cotton.(sch-1,sch-7)                                        1.3     11.05   11.05    1.3     1.3     1.3    11.7
 cotton.sch-2                                                        11.05   11.05    1.3     1.3     1.3     1.3
 cotton.(sch-3,sch-4)                                        1.3     11.05   11.05    1.3     1.3     1.3    5.85
 cotton.sch-5                                                1.3     11.05   11.05    1.3                     1.3
 cotton.sch-6                                                        11.05   11.05    1.3                     1.3

 +                                                   17      18      19      20      21      22      23      24

 soy-beans.(sch-4*sch-6)                              1
 maize-for.(sch-2,sch-4)                              8
 sugar-beet.(sch-1*sch-3)                                                   16.5    16.5
 sugar-beet.(sch-4,sch-5)                                                           16.5    16.5
 sugar-beet.sch-6                                                                           16.5    16.5
 cotton.sch-2                                        11.7
 cotton.(sch-3,sch-4)                                 5.85
 cotton.sch-5                                         3.9     5.2     3.9
 cotton.sch-6                                         2.93    4.23    4.23   2.93

$Eject

 Scalar    rho         interest rate                                    /     .04 /
           land        farm size                                  (ha)  / 1600    /
           lcost       labor cost             (1000 rials per man-day)  /     .135 /
           watercost   water cost (rials per 1000 cubic meters per ha)  /     .267 /
           hrtoday     hours in a man-day                               /    6     /

 Parameter oc(g,mn,mn) operating costs                                       (1000 rials per ha)
           avail(mn)   equipment avaialbility               (hours of utilization per fortnight)
           life(mn)    expected life of equipment                                        (years)
           crf(mn)     capital recovery factor
           cap(mn)     amortized capital cost                                       (1000 rials)
           pmisc(c)      cost of inputs - seed pesticide herbicide & fertilizer (1000 rials per ha)
           pcrop(c)      price of agricultural commodities                     (1000 rials per ton)
           yield(c,w)    crop yields along yield-water curve                   (metric tons per ha)
           water(c,w)    water requirements along yield-water curve      (1000 cubic meters per ha)
           length(c,s)   length of cropping season for crop under schedule             (fortnights)
           luse(c,t,s)   land use possibilities
           treq(g,t,c,s) agricultural tasks requirements
           agrol(c)      agronomic constraints                                                 (ha);

 oc(g,m,n) = (equip(m,"opcost") + equip(n,"opcost"))*tech(g,m,n)/1000;
 avail(mn)  = equip(mn,"avail");
 life(mn)   = equip(mn,"life");

 pmisc(c)   = cropdata("seed",c) + cropdata("fertilize",c) + cropdata("pesticide",c) + cropdata("herbicide",c);
 pcrop(c)   = cropdata("price",c);
 yield(c,w) = cropdata("yield",c)*stress("yield",w,c);
 water(c,w) = cropdata("water",c)*stress("water",w,c);
 agrol(c)   = land*cropdata("crop-limit",c);

 crf(mn)$equip(mn,"life") = rho*(1 + rho)**equip(mn,"life")/((1 + rho)**equip(mn,"life") - 1);
 cap(mn) = crf(mn)*equip(mn,"cost");

 length(c,s)$cs(c,"start",s) = mod(card(t) + cs(c,"end",s) - cs(c,"start",s),card(t)) + 1;
 luse(c,t++(cs(c,"start",s)-1),s) = 1$(ord(t) le length(c,s));

 treq(g,t,c,s)  = 1$(atask(c,g,s) eq ord(t)) + btask(c,g,s,t);
 treq("transport",t,c,s) = treq("transport",t,c,s)*cropdata("trans-adj",c)*yield(c,"normal");

 cposs(c,s)       = yes$length(c,s);
 taskposs(g,t)    = sum((c,s), yes$treq(g,t,c,s));

* special adjustments for cotton picking:

 Parameter tadj(g)     extra tasks required for mechanical cotton picking (units per ha) / spray    1 /
           loss(c)     product loss from mechanical cotton picking;

 loss("cotton")      = .2*yield("cotton","normal");
 taskposs("spray",t) = taskposs("spray",t) + taskposs("harvest-c",t);

 equipposs(m,t)   = yes$(sum((g,n)$taskposs(g,t), tech(g,m,n)) ne 0);
 equipposs(n,t)   = yes$(sum((g,m)$equipposs(m,t), tech(g,m,n)) ne 0);
 equipposs("self-prop",t) = no; equipposs("manual",t) = no;

 Display lreq,cposs,taskposs,equipposs,oc,avail,life,pmisc,pcrop,loss,yield,water,length,luse,treq,crf,cap;

$Stitle model definition

 Variables xcrop(c,s)      cropping schedules                                      (ha)
           xwater(c,w)     cropping by irrigation level                            (ha)
           awater          annual water requirements             (million cubic meters)
           task(g,t,mn,mn) agricultural tasks by technology                        (ha)
           sales(c)        sales of agricultural commodities                     (tons)
           equipp(mn)      equipment purchases                                  (units)
           emply(t)        employment                                        (man-days)
           revenue         from crop sales                                 (1000 rials)
           cost(cc)        cost of cropping activities                     (1000 rials)
           profit          objective function                              (1000 rials)

 Positive Variables xcrop,xwater,task,sales,equipp,emply,revenue,cost

 Equations cbal(c)         commodity balance                                     (tons)
           tbal(g,t)       task balance                                            (ha)
           cropd(c)        crop-water balance                                      (ha)
           waterd          annual water requirement definition   (million cubic meters)
           agroc(c)        agronomic constraints                                   (ha)
           landc(t)        land constraints                                        (ha)
           labor(t)        labor requirements                                (man-days)
           equipb1(mn,t)   equipment balance for implements                      (unit)
           equipb2(mn,t)   equipment balance for power sources                   (unit)
           arev            accounting: revenue                             (1000 rials)
           acost1          accounting: cost of miscellaneous inputs        (1000 rials)
           acost2          accounting: cost of water                       (1000 rials)
           acost3          accounting: operating cost                      (1000 rials)
           acost4          accounting: capital charges                     (1000 rials)
           acost5          accounting: cost of labor                       (1000 rials)
           obj             objective function                              (1000 rials);

$Eject

 cbal(c)..  sales(c) =e= sum(w, yield(c,w)*xwater(c,w))
                       - loss(c)*sum(t$taskposs("harvest-c",t), task("harvest-c",t,"cotton-p","self-prop"));

 tbal(g,t)$taskposs(g,t).. sum((c,s)$cposs(c,s), treq(g,t,c,s)*xcrop(c,s)) =e= sum((m,n)$tech(g,m,n), task(g,t,m,n))
                                                                  - tadj(g)*task("harvest-c",t,"cotton-p","self-prop");

 cropd(c)..  sum(s$cposs(c,s), xcrop(c,s)) =e= sum(w$yield(c,w), xwater(c,w));

 waterd..    awater =e= sum((c,w), water(c,w)*xwater(c,w))/1000;

 agroc(c).. sum(s$cposs(c,s), xcrop(c,s)) =l= agrol(c);

 landc(t)..  sum((c,s)$cposs(c,s), luse(c,t,s)*xcrop(c,s)) =l= land;

 labor(t)..  sum((c,s)$cposs(c,s), lreq(c,s,t)*xcrop(c,s)) + sum((g,m,n)$taskposs(g,t), tech(g,m,n)*task(g,t,m,n))
         =l= hrtoday*emply(t);

 equipb1(m,t)$equipposs(m,t).. sum((g,n)$taskposs(g,t), tech(g,m,n)*task(g,t,m,n)) =l= avail(m)*equipp(m);

 equipb2(n,t)$equipposs(n,t).. sum((g,m)$taskposs(g,t), tech(g,m,n)*task(g,t,m,n)) =l= avail(n)*equipp(n);

 arev..      revenue =e= sum(c, pcrop(c)*sales(c));

 acost1..    cost("misc-input") =e= sum(c, pmisc(c)*sum(s$cposs(c,s), xcrop(c,s)));

 acost2..    cost("water") =e= watercost*awater;

 acost3..    cost("operating") =e= sum((g,t,m,n)$taskposs(g,t), oc(g,m,n)*task(g,t,m,n));

 acost4..    cost("capital") =e= sum(mn, cap(mn)*equipp(mn));

 acost5..    cost("wages") =e= lcost*sum(t, emply(t));

 obj.. profit =e= revenue - sum(cc, cost(cc));

 Model iran / all /;

 sales.lo("wheat") = 875; awater.up = 21.73;

 Option iterlim=5000;
 Solve iran maximizing profit using lp;

 Display xcrop.l,xwater.l;

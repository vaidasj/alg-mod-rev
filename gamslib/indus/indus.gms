option LP=convert;
option LP=convert;
option LP=convert;
$Title Indus Agricultural Model (INDUS,SEQ=90)
$Stitle Set Definition

$Ontext

   This is an example model of the indus basin model family. These models
   have been used by the Government of Pakistan to analyze investment
   design and water policy issues.


Duloy, J H, and O'Mara, G T, Issues of Efficiency and Interdependence
in Water Resource Investments: Lessons from the Indus Basin of Pakistan.
Tech. rep., The World Bank, 1984.

$Offtext


  Set  c          crop types   /

                       basmati     basmati rice,                        cotton          ,
                       berseem     fodder crop ,                        gram            ,
                       irri        irri rice   ,                        sorghum         ,
                       maiz                    ,                        mustard         ,
                       sc-mill     sugar cane for mill,                 sc-gur    sugar cane processed on the farm,
                       wheat                   /

       cf(c)      fodder crops                 /berseem, sorghum /

       cfr(c)     crops with yields given by optimal fertilizer response
                                               /basmati, cotton, irri, sc-mill, sc-gur, wheat  /

       cw(c)                                   /wheat,cotton/
       cri(c)    rice crops                    /basmati, irri/

       cc(c)     non-consumption crops        /gram, irri, maiz, mustard,  sc-gur, wheat /

       g         polygons                     /poly-17+19       ,  poly-18/

       l         types of livestock           / bullock  bullock pair, buffalo , cattle   cattle cow /
       q         livestock commodities
                                              / buff-milk  buffaloes milk, catl-milk  cattle cows milk, meat /

       sea       seasons                      /kharif, rabi /
       ps        price schedules              /  76-77, 80-81,  85-86 /
       psr(ps)   price schedules used for this run       / 76-77 /
       i         canals                                  /panjnad, abbasia/
       sg(g)     polygon with saline groundwater         / poly-18     /
       fsg(g)    polygon with fresh groundwater          / poly-17+19  /

*  cropping technology can be constructed from three codes i.e technology code, sequence codes and
*  water stress level. these codes are given in set t, s and w .

       t         technology                              / bullock , semi-mech/

       s         sequence                                /standard  standard sequence,  el-plant  early planting,
                                                          la-plant  late planting,      qk-harv   quick harvest/
       w         water stress level                      /standard  no stress,          heavy    heavy stress ,
                                                          light     light stress,       january  stress in january/

       m          months                                  /jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec/

       y  year /1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975/

  Set  cnf(c)   non fodder crops              ;   cnf(c)=yes;   cnf(cf)=no;

 Parameter fc  maunds to pounds conversion factor;    fc = 82.286  ;

$Stitle  crop data


 Table lando(c,t,m)   land requirements for crops other than wheat and cotton by month

                                            jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  (basmati,irri).(bullock,semi-mech)                                      1     1     1     1     1     1
  berseem.bullock                            1     1    1     1     1                       .5    1     1     1
  berseem.semi-mech                          1     1    1     1     1                       .25   1     1     1
  gram.bullock                               1     1    1                                   .5    1     1     1
  gram.semi-mech                             1     1    1                                   .25   1     1     1
  sorghum.(bullock,semi-mech)                           .5    .5    .5    1     1     1     .5    .5
  maiz.bullock                                                            .5    1     1     1     1     1     .5
  maiz.semi-mech                                                                1     1     1     1     1     .5
  mustard.(bullock,semi-mech)                1     1    1                                         1     1     1
  (sc-mill,sc-gur).(bullock,semi-mech)       1     1    1     1     1     1     1     1     1     1     1     1

 Table landcw(cw,t,s,w,m)  land requirements for cotton and wheat by month
                                            jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  cotton.(bullock,semi-mech).standard.(
                             standard)                               1    1     1     1     1     1     1     .5
  cotton.bullock.el-plant.standard                            .5     1    1     1     1     1     1     1     .5
  cotton.semi-mech.la-plant.standard                                      1     1     1     1     1     1     .5
  wheat.bullock.standard.(standard,light,
                          heavy,january)     1     1    1     1                                   .5    1     1
  wheat.bullock.la-plant.(standard,light,
                          heavy,january)     1     1    1     1                                         1     1
  wheat.bullock.qk-harv.(standard,light,
                          heavy,january)     1     1    1     .5                                  .5    1     1
  wheat.semi-mech.standard.(standard,light,
                          heavy,january)     1     1    1     1                                         1     1
  wheat.semi-mech.la-plant.(standard,
                           light,heavy)      1     1    1     1                                         .5    1
  wheat.semi-mech.la-plant.january           1     1    1     1                                               1
  wheat.semi-mech.qk-harv.(standard,light,
                           heavy,january)    1     1    1     .5                                        1     1


 Table bso(c,t,m)  bullock req. other than cotton and wheat in bullock pair hrs per month

                                            jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  basmati.bullock                                                        22.0  17.2                    2.0   15.6
  basmati.semi-mech                                                                                          13.6
  berseem.bullock                           2.0   4.0  4.0   2.0   2.0                    10.1  13.01  7.6    2.0
  gram.bullock                                         7.0                                10.8   5.6
  irri.bullock                                                           18.9  19.2                    1.5   18.4
  irri.semi-mech                                                                                             16.4
  sorghum.bullock                                     16.0   1.0   1.0   16.0   1.5 15.0   1.0   0.5
  maiz.bullock                                                           10.8   4.5 14.2                      5.0
  maiz.semi-mech                                                                     3.0
  mustard.bullock                           1.0   1.0  1.0                                      10.8  10.1    1.0
  sc-mill.bullock                          16.85 15.1 15.0  12.0   8.0    1.75                        10.0   12.5
  sc-mill.semi-mech                               2.5              1.75   1.75
  sc-gur.bullock                           17.85 11.6  8.2         1.75   1.75                        11.5   13.5
  sc-gur.semi-mech                         11.0   6.5  2.5         1.75   1.75                        11.5   11.0

 Table  bscw(cw,t,s,w,m) bullock requirements for cotton and wheat in bullock pair hours per month

                                            jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  cotton.bullock.standard.standard                                 17.09 15.2              1.0   1.0   1.0   1.0
  cotton.bullock.el-plant.standard                           16.0   4.0  12.3              1.0   1.0   1.0   1.0
  wheat.bullock.standard.standard                             8.4   8.4                         18.6  20.6
  wheat.bullock.standard.light                                7.1   7.1                         18.6  20.6
  wheat.bullock.standard.(heavy,january)                      5.5   5.5                         18.6  20.6
  wheat.bullock.la-plant.standard                             7.4   7.4                               39.2
  wheat.bullock.la-plant.light                                6.3   6.3                               39.2
  wheat.bullock.la-plant.(heavy,january)                      4.8   4.8                               39.2
  wheat.bullock.qk-harv.standard                             16.8                               18.6  20.6
  wheat.bullock.qk-harv.light                                14.3                               18.6  20.6
  wheat.bullock.qk-harv.(heavy,january)                      10.9                               18.6  20.6
  wheat.semi-mech.standard.standard                           5.9   5.9
  wheat.semi-mech.standard.light                              5.0   5.0
  wheat.semi-mech.standard.(heavy,january)                    3.8   3.8
  wheat.semi-mech.la-plant.standard                           5.2   5.2
  wheat.semi-mech.la-plant.light                              4.4   4.4
  wheat.semi-mech.la-plant.(heavy,january)                    3.4   3.4
  wheat.semi-mech.qk-harv.standard                           11.8
  wheat.semi-mech.qk-harv.light                              10.
  wheat.semi-mech.qk-harv.(heavy,january)                     7.7

 Table lbco(c,t,m) labor requirements for crops other than wheat and cotton in man hours per month

                                            jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  basmati.bullock                                                        29.1  88.8  65.9   5.6   5.6  47.9  17.6
  basmati.semi-mech                                                       8.4  71.6  65.9   5.6   5.6  47.4  16.1
  berseem.bullock                           32.3  41.5 41.8  29.4  18.2                    10.1  15.5  23.5  29.1
  berseem.semi-mech                         31.1  39.8 40.3  28.7  17.6                     7.5  13.2  21.6  28.4
  gram.bullock                                         21.7                                10.8   8.9   0.7   2.5
  gram.semi-mech                                       20.0                                 1.6   4.4   0.7   2.5
  irri.bullock                                                           22.9 122.3  35.9   8.4   6.4  43.9  20.4
  irri.semi-mech                                                          5.3 105.5  29.9   8.4   6.4  43.4  17.9
  sorghum.bullock                                      18.5   2.0   3.0  18.7   4.0  18.0   3.0   1.0
  sorghum.semi-mech                                     6.0   1.3   4.5   6.5   4.2   5.5   2.0   1.5
  maiz.bullock                                                           10.8   4.5  16.7  44.2   2.5  26.8  27.0
  maiz.semi-mech                                                                2.4   8.4  44.2   2.5  26.0  26.8
  mustard.bullock                           21.7  20.5  6.0                                      10.8  13.6  13.9
  mustard.semi-mech                         21.7  20.2  6.0                                       1.6   5.1  13.9
  sc-mill.bullock                           90.0  85.0 95.0  72.1  30.0   5.05  3.0   3.0   3.0   1.5  85.0  95.0
  sc-mill.semi-mech                         86.5  81.5 90.0  64.0  34.5   5.05  3.0   3.0   3.0   1.5  80.5  90.5
  sc-gur.bullock                           159.   80.4 54.4  22.5   4.75  5.05  3.0   3.0   3.0   1.5 150.3 148.5
  sc-gur.semi-mech                          151.  80.6 48.9  22.5   4.75  5.05  3.0   3.0   3.0   1.5 148.3 142.3

 Table lbcw(cw,t,s,w,m) labor requirements for wheat and cotton in man hours per month

                                            jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  cotton.bullock.standard.standard                                 35.6  18.4   2.5   7.6  13.2  41.3  57.4  22.1
  cotton.bullock.el-plant.standard                           26.8   6.7  20.5   2.5   7.6  13.2  41.3  57.4  22.1
  cotton.semi-mech.standard.standard                                5.0   9.4   2.5   7.6  12.7  40.8  56.9  21.6
  cotton.semi-mech.la-plant.standard                                     14.4   2.5   7.6  12.7  40.8  56.9  21.6
  wheat.bullock.standard.standard           4.3   3.9  3.9   64.4  23.8                          18.6  23.9   3.9
  wheat.bullock.standard.light              4.3   3.9  3.9   54.7  20.2                          18.6  23.9   3.9
  wheat.bullock.standard.(heavy,january)    4.3   3.9  3.9   41.9  15.5                          18.6  23.9   3.9
  wheat.bullock.la-plant.standard           4.3   3.9  3.9   51.4  18.9                                45.2   3.9
  wheat.bullock.la-plant.light              4.3   3.9  3.9   43.4  16.1                                45.2   3.9
  wheat.bullock.la-plant.(heavy,january)    4.3   3.9  3.9   33.2  12.3                                45.2   3.9
  wheat.bullock.qk-harv.standard            4.3   3.9  3.9   88.1                                18.6  23.9   3.9
  wheat.bullock.qk-harv.light               4.3   3.9  3.9   74.9                                18.6  23.9   3.9
  wheat.bullock.qk-harv.(heavy,january)     4.3   3.9  3.9   57.3                                18.6  23.9   3.9
  wheat.semi-mech.standard.standard         4.3   3.9  3.9   60.1  19.5                                15.6   3.9
  wheat.semi-mech.standard.light            4.3   3.9  3.9   51.1  16.6                                15.6   3.9
  wheat.semi-mech.standard.(heavy,january)  4.3   3.9  3.9   39.1  12.7                                15.6   3.9
  wheat.semi-mech.la-plant.standard         4.3   3.9  3.9   52.8  17.2                                 8.0  11.5
  wheat.semi-mech.la-plant.light            4.3   3.9  3.9   44.9  14.6                                 8.0  11.5
  wheat.semi-mech.la-plant.(heavy,january)  4.3   3.9  3.9   34.3  11.2                                 8.0  11.5
  wheat.semi-mech.qk-harv.standard          4.3   3.9  3.9   79.6                                      15.6   3.9
  wheat.semi-mech.qk-harv.light             4.3   3.9  3.9   67.7                                      15.6   3.9
  wheat.semi-mech.qk-harv.(heavy,january)   4.3   3.9  3.9   44.0                                      15.6   3.9

 Table tr(c,t,s,w,m)  tractor requirements in tractor hours per acre per month

                                            jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  basmati.semi-mech.standard.standard                                    2.7   1.7                     1.5   0.5
  cotton.semi-mech.standard.standard                               2.5   2.2               0.5   0.5   0.5   0.5
  cotton.semi-mech.la-plant.standard                               4.7               0.5   0.5   0.5   0.5
  berseem.semi-mech.standard.standard       1.5   1.5  1.5   1.5   1.5                     1.3   2.0   2.3   1.5
  gram.semi-mech.standard.standard                     3.7                                 1.3   0.8
  irri.semi-mech.standard.standard                                       2.6   2.2                     1.0   0.5
  sorghum.semi-mech.standard.standard                  2.5   0.5   1.8   1.0   2.2   1.5   1.0   0.5
  maiz.semi-mech.standard.standard                                             1.8   1.6                     2.5
  mustard.semi-mech.standard.standard       1.0   1.0  1.0                                       1.3   1.3   1.0
  sc-mill.semi-mech.standard.standard       6.4   6.6  5.2   4.5   4.0                                 5.8   5.8
  sc-gur.semi-mech.standard.standard        2.4   0.6  0.7                                                   0.3
  wheat.semi-mech.standard.standard                          0.7   0.8                                 7.6
  wheat.semi-mech.standard.light                             0.6   0.7                                 7.6
  wheat.semi-mech.standard.(heavy,january)                   0.5   0.5                                 7.6
  wheat.semi-mech.la-plant.standard                          0.6   0.7                                 4.0   3.6
  wheat.semi-mech.la-plant.light                             0.5   0.6                                 4.0   3.6
  wheat.semi-mech.la-plant.(heavy,january)                   0.4   0.4                                 4.0   3.6
  wheat.semi-mech.qk-harv.standard                           1.5                                       7.6
  wheat.semi-mech.qk-harv.light                              1.3                                       7.6
  wheat.semi-mech.qk-harv.(heavy,january)                    1.0                                       7.6

 Table wcro(c,t,m) water requirements in acre feet per acre for crops othe than wheat and cotton

                                            jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  (basmati,irri).(bullock,semi-mech)                                    .374  .842  .935  .935  .468
  berseem.(bullock,semi-mech)               .2   0.3  .45   .55   .25                     .20   .25   .15   .15
  gram.(bullock,semi-mech)                  .1    .05                                     .25   .15   .10   .10
  sorghum.(bullock,semi-mech)                         .10   .15   .25   .30   .40   .30   .20
  maiz.bullock                                                          .10   .10   .30   .30   .40   .20
  maiz.semi-mech                                                              .15   .30   .30   .40   .25
  mustard.(bullock,semi-mech)               .2    .15                                           .30   .20   .20
  (sc-mill,sc-gur).(bullock,semi-mech)      .094  .14 .234  .374  .374  .327  .374  .468  .468  .281  .374  .187

 Table wcrcw(cw,t,s,w,m) water requirements in acre feet per acre for wheat and cotton

                                               jan   feb  mar   apr   may   jun   jul   aug   sep   oct   nov   dec
  cotton.(bullock,semi-mech).standard.(
                             standard)                                .187  .281  .327  .374  .468  .327  .094
  cotton.bullock.el-plant.standard                              .187  .094  .374  .327  .374  .468  .327  .094
  cotton.semi-mech.la-plant.standard                                  .374  .327  .374  .468  .327  .094
  wheat.bullock.(standard,qk-harv).standard    .234  .374 .468                                      .187  .187  .187
  wheat.bullock.(standard,qk-harv).light       .234  .374                                           .187  .187  .187
  wheat.bullock.(standard,qk-harv).heavy       .281                                                 .187  .187  .187
  wheat.bullock.(standard,qk-harv).january           .281                                           .187  .187  .187
  wheat.bullock.la-plant.standard              .234  .374 .468                                            .281  .187
  wheat.bullock.la-plant.light                 .234  .374                                                 .281  .187
  wheat.bullock.la-plant.heavy                 .281                                                       .281  .187
  wheat.bullock.la-plant.january                     .281                                                 .281  .187
  wheat.semi-mech.(standard,
                   qk-harv).standard           .234  .374 .468                                            .281  .187
  wheat.semi-mech.(standard,qk-harv).light     .234  .374                                                 .281  .187
  wheat.semi-mech.(standard,qk-harv).heavy     .281                                                       .281  .187
  wheat.semi-mech.(standard,qk-harv).january         .281                                                 .281  .187
  wheat.semi-mech.la-plant.standard            .234  .374 .468                                            .234  .234
  wheat.semi-mech.la-plant.light               .234  .374                                                 .234  .234
  wheat.semi-mech.la-plant.heavy               .281                                                       .234  .234
  wheat.semi-mech.la-plant.january                   .281                                                 .234  .234

 Table crio(c,t,s,w,*)  crop inputs and outputs

*            yield and straw-yld is in maunds/acre
*            cash-input  working capital required net of fertilizer.
*            nit-input and pho-input  are nutrients required in kg per acre.
*            adjustments for fertilizer response made below

                                                          yield     straw-yld    cash-input    nit-input    pho-input

 basmati.(bullock,semi-mech).standard.standard             9.00      21.00         28.83        18.80        6.90
 cotton.(bullock,semi-mech).standard.standard              11.00                   35.34        17.40        5.20
 cotton.bullock.el-plant.standard                          11.00                   35.34        17.40        5.20
 cotton.semi-mech.la-plant.standard                        11.00                   35.34        17.40        5.20
 berseem.(bullock,semi-mech).standard.standard            471.00                   23.20        11.50        2.07
 gram.(bullock,semi-mech).standard.standard                 5.50      8.30         25.36         1.60
 irri.bullock.standard.standard                            16.70     27.00         28.70        25.40        7.90
 sorghum.(bullock,semi-mech).standard.standard            192.10                  153.08         8.72         .95
 maiz.(bullock,semi-mech).standard.standard                10.00     30.00         35.05         21.70       5.40
 mustard.(bullock,semi-mech).standard.standard              6.00      3.00         16.80
 sc-mill.(bullock,semi-mech).standard.standard            380.00     50.50        270.93         24.80       7.20
 sc-gur.(bullock,semi-mech).standard.standard              30.40     50.50        270.93         24.80       7.20
 wheat.(bullock,semi-mech).(standard,qk-harv).standard     20.20     27.30         54.25         19.20       7.40
 wheat.(bullock,semi-mech).(standard,qk-harv).light        17.20     23.20         54.31         16.30       6.30
 wheat.(bullock,semi-mech).(standard,qk-harv).(
                                heavy,january)             13.10     17.70         54.16         12.50       4.80
 wheat.(bullock,semi-mech).la-plant.standard               17.80     24.00         54.18         16.90       6.50
 wheat.(bullock,semi-mech).la-plant.light                  15.10     20.40         54.08         14.40       5.50
 wheat.(bullock,semi-mech).la-plant.(heavy,january)        11.50     15.60         54.18         11.00       4.20

 Table weed(c,t,s,w,sea)  weed yield from crops maunds per acre

                                                                   kharif       rabi
  (basmati,irri,cotton).(bullock,semi-mech).standard.standard       60.0
  cotton.bullock.el-plant.standard                                  60.0
  cotton.semi-mech.la-plant.standard                                60.0
  (sc-mill,sc-gur).(bullock,semi-mech).standard.standard            60.0        30.0
  wheat.(bullock,semi-mech).(standard,qk-harv).standard                         30.0
  wheat.(bullock,semi-mech).(standard,qk-harv).light                            25.5
  wheat.(bullock,semi-mech).(standard,qk-harv).(heavy,january)                  19.5
  wheat.(bullock,semi-mech).la-plant.standard                                   26.4
  wheat.(bullock,semi-mech).la-plant.light                                      22.4
  wheat.(bullock,semi-mech).la-plant.(heavy,january)                            17.1

 Table sconv(*,sea,c)   tdn and dp conversion factor from crop straw

                          basmati  cotton  berseem  gram   irri   sorghum   maiz  mustard  sc-mill sc-gur  wheat
    tdn.kharif                                       .6             .14             .5                      .5
    tdn.rabi                .5               .14            .5               .5               .17    .17
     dp.kharif                                       .1             .017           .005                     .005
     dp.rabi               .005              .025           .005             .1                .005    .005

      Parameter  land(c,t,s,w,m)    land requirements by crop technology and month in acres
                 bpr(c,t,s,w,m)      bullock power requirements by crop technology and month in bullock pair hours
                 labor(c,t,s,w,m)   labor requirements by crop technology and month in man-hours
                 watreq(c,t,s,w,m)  water requiremetns by crop technology and monthin acre feet
                  ;
      land(c,t,"standard","standard",m)  = lando(c,t,m);   land(cw,t,s,w,m)   = landcw(cw,t,s,w,m) ;
      bpr(c,t,"standard","standard",m)   = bso(c,t,m)  ;   bpr(cw,t,s,w,m)    = bscw(cw,t,s,w,m)     ;
      labor(c,t,"standard","standard",m) = lbco(c,t,m) ;   labor(cw,t,s,w,m)  = lbcw(cw,t,s,w,m)   ;
      watreq(c,t,"standard","standard",m)= wcro(c,t,m) ;   watreq(cw,t,s,w,m) = wcrcw(cw,t,s,w,m)  ;

 Table dev60(c,y)  revenue deviation   (1960 rupees)

                      1960     1961      1962      1963     1964     1965      1966       1967
 (basmati,irri)       23.8     20.84    -22.76    -12.2    -15.6    -34.17    -13.56     -11.42
 cotton                                 -15.97    -17.11    57.01    -6.33     -1.24     -41.37
 (berseem,sorghum)    22.38   -12.03    -28.12    -34.9    -21.6     11.7      17.49      17.99
 gram                 11.03     2.04      2.25      8.35   -13.42    10.86    -19.79      -8.49
 maiz                 25.19   -17.17    -19.34     24.41   -16.36    -3.21      1.21      -16.17
 mustard              -9.82   -13.58     -5.53      1.51   -12.77    16.01     23.22      16.92
 (sc-mill,sc-gur)                        52.24     18.16  -104.2    -11.1       4.4      -195.3
 wheat                12.87     7.58    -11.77     -9.44      .57    -1.58    -33.53       28.4

       +              1968     1969      1970      1971     1972     1973      1974       1975
 (basmati,irri)       95.66   -16.06     -5.81     -6.94     2.74     1.83     -8.03       1.69
  cotton             -63.62   -42.76    -28.96     36.79    30.73    40.42     78.63     -99.33
 (berseem,sorghum)    16.45    40.79     10.16     -2.43    20.17    -1.45    -23.06     -33.62
  gram               -15.5      8.02     17.6     -14.77    -2.88     9.5     -17.55      22.73
  maiz                26.15    18.63      -.38    -28.43    12.44    -6.79    -51.35      51.18
  mustard            -21.64    14.64     34.12     22.87   -37.17   -17.17    -25.34      13.72
  (sc-mill,sc-gur)   -25.52   151.48    184.69     -9.53   -137.6   189.2     -21.49    -132.4
   wheat               5.3     -1.74     18.49    -17.75     14.1    -9.48    -20.31      18.3

   Scalar  kl  normalizing contant for risk ;  kl= sqrt(3.1445926*card(y)/(card(y)-1)/2);  display kl ;
   Parameter r(g) risk aversion coefficient ;  r(g)=  5.5    ;

$Stitle  price data, fertilizer response and livestock data


 Table pri(*,ps,c)  crop price yield change working capital increase

*       crop prices are rs/lb,  working capital is in rupees
                          basmati  cotton  berseem  gram   irri   sorghum   maiz  mustard  sc-mill sc-gur  wheat
  price.76-77             1.086    1.544            .450   .485             .450  .720      .070    .650   .5
  price.(80-81,85-86)     1.5      1.86             .563   .760             .563  .9        .1     1.0     .63
  yldchng.(80-81,85-86)            1.5
  wcapchng.(80-81,85-86) 10.34     210.35    13.6   12.    10.34    13.6     5.4   8.0       19.93  19.93  6.25

   Set  p1 /  nitrogen, phosphorus, prdef, protein, drinvt, twinvt,  trinvt,twopc,tropc,dropc/

 Table pri1(p1,ps)  fertilizer tubewell tractor and protein prices
*                          fertilizer prices are rupees per kg
*                          prdef  price index deflator

                     76-77           80-81            85-86

    nitrogen            2.96             4.12           6.47
    phosphorus          1.80             2.86           4.26
    prdef               3.1285           4.0671         4.0671
    protein             2.25            3.0              na

    drinvt          88904           124465         124465
    twinvt           5300             7420           7420
    trinvt          15890            22246          22246
    twopc              75              154            216
    tropc              20               33.75          41
    dropc              15.872           32.59          32.59

 Table  liveprc(q,ps)   prices of livestock commodities

                76-77     80-81     85-86

  buff-milk     1.250     1.562     1.562
  catl-milk     0.950     1.188     1.188
  meat          2.5       3.125     3.125

 Table wageps(m,ps)    wage rates rs per man hour

                                      76-77   80-81   85-86

  (jan,feb,mar,jun,jul,aug,sep,dec)   0.75    0.975   0.975
  (apr,may,oct,nov)                   1.5     1.95    1.95

* ---  price setup for this run

     Parameter pbc(c)           buying price, crop comodities  rupees per maund
               psc(c)           selling price for crop comodities rupees per maund
               pbq(q)           buying price, livestock comodities
               psq(q)           livestock commodity selling prices
*                              (rupees per litre for buff-milk and catl-milk, rupees per pound meat)
               dev(c,y)         revenue deviation
               wcapchng(c)      capital change by crop
               yldchng(c)       yield change by crop
               misc(p1)         miscellenious prices
               wage(m)          wage rates rs per man hour by month
               pp               purchase price of prorein concentrate re per lbs
                    ;
   Scalar      cdrwell          annualized cost of public drainage well rupees per well
               trcap            tractor capacity in tractor hours per month     / 250 /
               twcap            private tubewell capacity acre feet per month   /44.6 /
               drcap            drainage well capacity in acre feet per year    /2138.4 /
                    ;
  Loop (psr,
     psc(c) =  pri("price",psr,c)  ;        pp = pri1("protein",psr) ;
     psq(q) =  liveprc(q,psr)      ;

     yldchng(c) = pri("yldchng",psr,c) ;    wcapchng(c) = pri("wcapchng",psr,c) ;
     misc(p1)  =  pri1(p1,psr)     ;

     dev(c,y)       =  dev60(c,y)*pri1("prdef",psr)  ;
     wage(m)         = wageps(m,psr)
        );

     pbc(c) = psc(c)*1.5;           pbq(q) = psq(q)* 2.0 ;
     cdrwell = drcap*misc("dropc")  + misc("drinvt") ;

*---    fertilizer response calculations

*   underlying equation for fertilizer response calculations is  y = y0 * (f/f0)**gamma  where f0 anf y0
*   are the fertilizer application and yield at the base price f and y are fertilizer  application for a
*   given price and corresponding yield.

    Parameter gammafrt(c)    fertilizer response elasticities
      /basmati  .153,  cotton  .0795, irri   .246, sc-mill  .179,  sc-gur  .179, wheat  .101 /

    Set fresp             / with , without /
        sfresp(fresp)     / with    /        ;

*   to incorporate fertilizer response in the model change member of set sfresp to "with" and to delete
*   the fertilizer response change sfrest to "without" .

    Parameter nit(c,t,s,w)              nitrogen input kg per acre
              yc(c,t,s,w)               crop yield maunds per acre
              straw(c,t,s,w)            straw yield maunds per acre
              frtfac(cfr,t,s,w,fresp)   fertilizer response factor
              rep3(t,s,w,c,*)           report on yield  fertilizer response factor  working capital
              cwcaptl(c,t,s,w)          total working capital by scenario crop and tecnology in rs per acre
              tech(c,t,s,w)             land use indicator
               ;
    frtfac(cfr,t,s,w,"with")$(crio(cfr,t,s,w,"nit-input") ne 0) =  min(3, (gammafrt(cfr)*psc(cfr)*
                   crio(cfr,t,s,w,"yield")*fc /misc("nitrogen")/crio(cfr,t,s,w,"nit-input"))**(1/(1-gammafrt(cfr))));
    frtfac(cfr,t,s,w,"without")  = 1.0     ;
    nit(c,t,s,w)    = crio(c,t,s,w,"nit-input")  ;    yc(c,t,s,w)  = crio(c,t,s,w,"yield");
    straw(c,t,s,w)  = crio(c,t,s,w,"straw-yld")  ;
    Loop(sfresp,
    nit(cfr,t,s,w)$(frtfac(cfr,t,s,w,sfresp) ne 0)    =  crio(cfr,t,s,w,"nit-input")*frtfac(cfr,t,s,w,sfresp) ;
    yc(cfr,t,s,w)$ (frtfac(cfr,t,s,w,sfresp) ne 0)    =  (crio(cfr,t,s,w,"yield")+yldchng(cfr))*
                                                                       frtfac(cfr,t,s,w,sfresp)**gammafrt(cfr)  ;
    straw(cfr,t,s,w)$(frtfac(cfr,t,s,w,sfresp) ne 0)  =  crio(cfr,t,s,w,"straw-yld")*frtfac(cfr,t,s,w,sfresp)**
                                                                                    gammafrt(cfr)   ;
    rep3(t,s,w,cfr,"frtfac")    = frtfac(cfr,t,s,w,sfresp)   )  ;
    cwcaptl(c,t,s,w)$(crio(c,t,s,w,"cash-input") ne 0)=  crio(c,t,s,w,"cash-input")+misc("nitrogen")*
                               nit(c,t,s,w)+misc("phosphorus")*crio(c,t,s,w,"pho-input") + wcapchng(c) ;

    rep3(t,s,w,c,"yield")    = yc(c,t,s,w);
    rep3(t,s,w,c,"nitrogen") = nit(c,t,s,w);        rep3(t,s,w,c,"phosphorus")  = crio(c,t,s,w,"pho-input");
    rep3(t,s,w,c,"straw")    = straw(c,t,s,w);      rep3(t,s,w,c,"cwcaptl")     = cwcaptl(c,t,s,w);

* ---  nutrients availablity for livestock from fodder crops , crop straw and weeds

     Parameter tdy(c,t,s,w,sea)        crop tdn yield       ,     dpy(c,t,s,w,sea)   crop dp yield
               wtd(c,t,s,w,sea)        tdn yield from weeds ,     wdp(c,t,s,w,sea)   dp yield from weeds
               gfd(g,sea)              green fodder available from grazing by season
               gdp(g,sea)              protein available from grazing by season
               ;
     tdy(cnf,t,s,w,sea)  = sconv("tdn",sea,cnf) *straw(cnf,t,s,w)*fc                    ;
     dpy(cnf,t,s,w,sea)  = sconv("dp",sea,cnf)  *straw(cnf,t,s,w)*fc                    ;
     tdy(cf,t,s,w,sea)   = sconv("tdn",sea,cf)  *yc(cf,t,s,w)*fc                        ;
     dpy(cf,t,s,w,sea)   = sconv("dp",sea,cf)   *yc(cf,t,s,w)*fc                        ;
     wtd(c,t,s,w,sea)    = sconv("tdn","rabi","berseem")*weed(c,t,s,w,sea)*fc           ;
     wdp(c,t,s,w,sea)    = sconv("dp","kharif","sorghum")*weed(c,t,s,w,sea)*fc          ;
     gfd(g,sea) = 0.0   ;  gdp(g,sea) = 0.0 ; tech(c,t,s,w) = sum(m,  land(c,t,s,w,m) );

 Table livio(l,*)  livestock comodity yields  and output

*          milk    production is in liters/ year per animal.
*          meat    production is in lbs / year per animal, in case of bullock per bullock pair.
*          tn      seasonal tdn requirements (lbs per season)
*          pr      seasonal dp requirements  (lbs per season)

                       buff-milk  catl-milk     meat     tn      pr
       buffalo            750                   35.2    2300     210
       cattle                        550        26.0    1500     135
       bullock                                  55.4    2800     256

     Scalar    repco       reproductive coefficient / 1.25 / ;
     Parameter lbq(l,m)    livestock labor requirement  (man hours per month)
               bp(m)       bullock pair draft power capacity  (pair-hours per month)
               lwcaptl(l)  livestock miscellaneous cash requirement (rupees)
               yq(l,q)     livestock comodity yields
               gr          required proportion of green fodder in total fodder
                ;
           lbq("bullock",m) = 30.1 ;  lbq("buffalo",m) = 33.6;  lbq("cattle",m) = 25.1 ;
           bp(m)=96;                  bp("may")=77;             bp("jun")=77;
           lwcaptl(l)=0.0              ;
           yq(l,q)=livio(l,q);         gr  = 0.3 ;

*---  report on crop input output coefficients
      Set r1 /land,labor,bullock,tractor,watreq  / ;
      Parameter  rep1(t,s,w,c,r1,* )   report on crop input output
                 rep2(t,s,w,c,*)       report on crop weed fodder yield
                  ;
      rep1(t,s,w,c,"land",m)   = land(c,t,s,w,m)  ;   rep1(t,s,w,c,"land","total")    = sum(m, land(c,t,s,w,m) )  ;
      rep1(t,s,w,c,"bullock",m)= bpr(c,t,s,w,m)   ;   rep1(t,s,w,c,"bullock","total") = sum(m, bpr(c,t,s,w,m) )   ;
      rep1(t,s,w,c,"tractor",m)= tr(c,t,s,w,m)    ;   rep1(t,s,w,c,"tractor","total") = sum(m,  tr(c,t,s,w,m) )   ;
      rep1(t,s,w,c,"labor",m)  = labor(c,t,s,w,m) ;   rep1(t,s,w,c,"labor","total")   = sum(m, labor(c,t,s,w,m) ) ;
      rep1(t,s,w,c,"watreq",m) = watreq(c,t,s,w,m);   rep1(t,s,w,c,"watreq","total")  = sum(m, watreq(c,t,s,w,m) );
      rep2(t,s,w,c,sea) =weed(c,t,s,w,sea);           rep2(t,s,w,c,"total")           = sum(sea, weed(c,t,s,w,sea));
     Display  rep1  , rep2, rep3  ;

$Stitle  population, labor and consumption parameters


* --- population and labor availability

      Set   labs   labor sex / men , women /
            int    labor intensity  / fulltime, parttime, occasional  /
            hht    house hold type  / fh  farm household ,  lh livestock labor household /
            dis    districts /rahim-kh/
             ;
  Parameter  fpop(dis)     farm population by districts ; fpop("rahim-kh") = 846897 ;
*        source :  agricultural census of population 1972 .

  Scalar    lstd               standard labor limit ( hours per month )             /      200/   ;
  Parameter plab(hht)          proportional labor participation by household type   /fh 1.0 , lh .49 /
            flab(g,hht)        available farm labor by household type thousand man-hrs per month
            flabps(ps,g,hht)   available farm labor by hh type thousand man-hrs per month  by scenario
            popadj(ps)         farm population increase
            pop(g)             farm population in thousands
            popps(g,ps)        farm population in thousands by scenarios
             ;
* popadj is estimated using increase in total farm population reported in world bank report no. 2018-pak
* over level of 1972 agricultural census .

       popadj("76-77") = 1.1048 ;  popadj("80-81") = 1.1965  ;  popadj("85-86") = na ;

 Table alab(dis,hht,labs,int)  available household labor by district

                         fulltime    parttime     occasional
  rahim-kh.fh.men         217336      11446           8202
  rahim-kh.fh.women        65647      84106          10039
  rahim-kh.lh.men          20528       7207            782
  rahim-kh.lh.women         5030      11299            783

 Table labint(labs,int)    mapping from labor class to standard intensity

                 fulltime     parttime   occasional
    men            .9            .5         .1
    women          .6            .3         .06

 Table pmap(dis,g)  mapping from distrits to polygon

                 poly-17+19     poly-18
   rahim-kh          .7            .3
             ;
    flabps(ps,g,hht) = sum( (labs, int,dis), alab(dis,hht,labs,int) * labint(labs,int)* pmap(dis,g)*plab(hht)
                                                                                   *lstd*popadj(ps) )/1000;
    popps(g,ps)      = sum(  dis,  fpop(dis)*pmap(dis,g)*popadj(ps) )/1000;
   Loop(psr,  pop(g) = popps(g,psr);  flab(g,hht) =  flabps(psr,g,hht)  );
   Display  pop, flab   ;
*--- consumption parameters

 Table  conspc(cc,*)     crop  commodity consumption  parameters
*               gamc          minimum per capita commodity consumption  crops
*               eec           expenditure elasticity  crop
*               bwc           budget weight crop

               gamc      eec     bwc
  gram        12.60      .5     .0246
  irri        62.46      .3     .0264
  maiz        20.00      .3     .0097
  mustard      1.73      .55    .0301
  sc-gur      19.50     1.65    .0270
  wheat      270.57      .4     .1995

 Table conspl(q,*)    livestock products consumption parameters
*              gamq   minimum per capita commodity consumption  livestock
*              eeq    expenditure elasticity  livestock
*              bwq    budget weight livestock

                 gamq      eeq     bwq
  buff-milk      16.83     2.1     .0761
  catl-milk      10.76     2.1     .0507
  meat            5.92     1.1     .0174

     Scalar    fs                  share of food in minimum per capita budget /   .601/
               mu                  marginal propensity to consume from income /   .931/
               sub                 minimum per capita consumption budget in rupees
     Parameter mpcc(cc)            marginal propensity to consume out of income, crop
               mpcq(q)             marginal propensity to consume out of income, livestock
               alphc(g,c)          autonomous consumption of crop comodity in thousand lbs
               alphq(g,q)          autonomous consumption of livestock comodities in thousand lbs or liters
               betac(g,c)          induced consumption, crop
               betaq(g,q)          induced consumption, livestock
               ;
     mpcc(cc)  = conspc(cc,"eec")*conspc(cc,"bwc")                                          ;
     mpcq(q)   = conspl(q,"eeq")*conspl(q,"bwq")                                            ;
     sub       = (sum(cc, psc(cc)*conspc(cc,"gamc")) + sum(q, psq(q)*conspl(q,"gamq")))/fs  ;

     betac(g,cc) = mu*mpcc(cc)/psc(cc)                             ;
     betaq(g,q ) = mu*mpcq(q)/ psq(q)                              ;
     alphc(g,cc) = ( conspc(cc,"gamc") - betac(g,cc)*sub )*pop(g);
     alphq(g,q ) = ( conspl(q,"gamq")  - betaq(g,q )*sub )*pop(g);
     Display sub, mpcc, mpcq,  betac, betaq, alphc,alphq ;


$Stitle   water data


 Table  wal(*,i,g,m)      water diversions in maf

                              jan       feb       mar       apr       may       jun

 post.panjnad.poly-17+19   .1187200  .1352400  .1411200  .2305800  .3306800  .4071200
 post.panjnad.poly-18      .0508800  .0579600  .0604800  .0988200  .1417200  .1744800
 post.abbasia.poly-17+19   .0145800  .0235800  .0288000  .0399600  .0489600  .0547200
 expj.panjnad.poly-17+19   .0567875  .0652750  .0708750  .1423625  .2977625  .3733625
 expj.panjnad.poly-18      .0597998  .1041390  .1342239  .1075394  .1276125  .2249383
 expj.abbasia.poly-17+19   .0110250  .0140625  .0131625  .0239625  .0412875  .0516375

      +                       jul       aug       sep       oct       nov       dec

 post.panjnad.poly-17+19   .3844400  .3991400  .3924200  .3869600  .1877400  .1173200
 post.panjnad.poly-18      .1647600  .1710600  .1681800  .1658400  .0804600  .0502800
 post.abbasia.poly-17+19   .0477000  .0489600  .0477000  .0478800  .0343800  .0268200
 expj.panjnad.poly-17+19   .4321625  .4032875  .3858040  .2609250  .1193500  .0601125
 expj.panjnad.poly-18      .2229836  .2677125  .2851960  .1765128  .1056247  .0616534
 expj.abbasia.poly-17+19   .0564750  .0522000  .0486000  .0326250  .0219375  .0129375

  Parameter wdiv(i,g,m)  water diversions used for this run ;  wdiv(i,g,m) = wal("expj",i,g,m) ;
 Table  height(g,* )  land surface and water table height from sea level in feet

                        hs       hwr
    poly-17+19         290     280.58
    poly-18            285       279

 Table wpara1(*,*,m)  evaporation rain and river seepage

*             pevap    unit pan evaporation ( in acre feet per acre )
*             rain     mean monthly rainfall on total land area   ( in af/month )
*             rivseep  seepage to aquifer from river reaches  ( af )

                   jan     feb     mar    apr       may    jun       jul       aug    sep     oct     nov     dec
 pevap.poly-17+19   .207   .317     .544    .780    .977   1.111    1.026     .913    .799   .556    .336    .439
 pevap.poly-18      .200   .314     .529    .771    .968   1.112    1.026     .913    .800   .543    .329    .457

 rain.poly-17+19  21.51  24.76    29.32   18.24   13.69   18.24   171.3    143.3    14.99    .978  10.43   11.73
 rain.poly-18      9.96  11.31    13.12    8.15    6.34    8.15    75.12    63.80    6.79    .453   4.98    5.43
 rivseep.(
     poly-17+19)   1000   1000     1000    1000                              2600    4000    5000   4100    2000

 Table areac(g,*)        area characteristics

*              twg      installed tubewell capacity  polygon  (acre feet)
*              trg1     installed tractor capacity  polygon  (tractor hours)
*              at       total area  polygon  (acres)
*              alg      irrigated land in polgon  ( acres)
*              sra      area within transportation radius of sugar mills
*              scoeff   storage coefficient

                twg       trg1        at       alg       sra     scoeff
  poly-17+19   227000    274000    1173000   862665.2   511000    .25
  poly-18                117000     543000   369713.6   392000    .25

* --- following calculations are to compute water loss coefficints , we, ws and wl

   Set     u         water transit mode from barrage to root zone
                     / lc    link canal    ,  mb    main and branch canals ,   dm  distributories and minors
                       wc    water courses,   fd    fields                 ,   pg  private tubewell    /

           ud        components of canal system
                     / lc    link canal,      mc  main canal
                       bc    branch canal,    di  distributory,         mi  minors /

           dsp(g,i)  downstream polygon canal map          / poly-18.panjnad /
           usp(g)    upstream polygon                      / poly-17+19         /
           n          /  1,2,3,4,5,6 /

 Table  wpara(g,*)    canal data

*                wamb     wetted area main and branch canals units acres
*                wadm     wetted area distributory and minor canals units acres
*                factor   adjustment factor distributory and minor canals
*                factor1  adjustment factor main and branch canals
*                mb       main and branch canal capacity (kaf/m for all months)
*                dm       capacity of distributories and minors (kaf/m for all months)

                 wamb      wadm     factor   factor1   mb    dm
  poly-17+19     2624.0    2464     3.4366   2.4335   800   542
  poly-18          46.0     452     3.9044   9.0671   201   201

 Table wpara3(*,*,m)  parameters for water course and  field efficiencies
*             hc       height of canal surface above sea level  ( in feet )
*             cfw      monthly adjustment factor for operational losses
*             gamma    seasonal evaporation loss factor
*             zeta     seasonal seepage loss factor

                 jan     feb     mar    apr       may    jun       jul       aug    sep     oct     nov     dec

 zeta.wtrcrs     -.075  -.075    -.075   -.075   -.0025   .070     .070     .07    -.0025 -.075   -.075   -.075
 zeta.fld        -.048  -.048    -.048   -.048   -.0063   .035     .035     .035   -.0063 -.048   -.048   -.048

 gamma.wtrcrs     .025   .025     .025    .025    .0525   .08      .08      .08     .0525  .025    .025    .025
 gamma.fld        .0475  .0475    .0475   .0475   .0563   .065     .065     .065    .0563  .0475   .0475   .0475
 hc.poly-17+19    290.1  290.2    290.2    290.6   291.5  292.0    292.3    292.2   292.0  291.5    290.6   290.1
 hc.poly-18       285.1  285.1    285.2    285.6   286.4  286.9    287.2    287.0   286.9  286.4    285.5   285.1
 cfw.(poly-17+19
    , poly-18)      4     4        4        4       5      6        6         6       5      4        4       4

 Table lw(*,g,ud)  length(in k ft) and width of canals (in ft )

                         lc     mc     bc     di     mi
  length.poly-17+19            300    775   2135   1450
  length.poly-18                       50    300    300
  width.poly-17+19             150     80     25      7
  width.poly-18                        45     25      7


     Parameter   pemax(g)        maximum of pan evaporation over the year in feet
                 alpha           scale factor watercourse and field evaporation
                 rpe(g,m)        ratio pan evap. to maximum pan evaporation in the year
                 wa(g)           wetted area along canal units acres
                 phi1mb(g)       seepage proportionality constant  for main and branch canals
                 phi1dm(g)       seepage proportionality canstant for distributories and minors
                 we(u,g,m)       evaporation loss coefficient in transit mode
                 ws(u,g,m)       water seepage coefficient within polygon
                 dephc(g,m)      depth from water level in the canals to watertable
                 wl(u,g,m)       water loss coefficient within polygon
                 wsu             seepage coefficient  upstream polygon
                 weu             evaporation coefficient  upstream polygon
                 wlu             water loss coefficient  upstream polygon
                 beta            loss level constant
                 per             permeability coefficient
                 nrc             normalizing constant to convert cusecs to af per month
                  ;
     alpha  = 0.10;  beta= 0.25 ;  per = 2*10**(-5) ;   nrc = 59.504;
*---     evaporation loss coefficients


     pemax(g) = smax(m,wpara1("pevap",g,m));   rpe(g,m) = wpara1("pevap",g,m)/pemax(g) ;
     wa(g)    = wpara(g,"wamb") + wpara(g,"wadm")                    ;
     we("mb",g,m) = wpara(g,"wamb")*wpara1("pevap",g,m) *(wpara(g,"factor1")*10**(-6))   ;
     we("dm",g,m) = wpara(g,"wadm")*wpara1("pevap",g,m) *(wpara(g,"factor")*10**(-6))    ;
     we("wc",g,m) = alpha * rpe(g,m) +  wpara3("gamma","wtrcrs",m)              ;
     we("fd",g,m) = alpha * rpe(g,m) +  wpara3("gamma","fld",m)                ;
     we("pg",g,m) = 0.5*we("wc",g,m)                                           ;

*---           seepage coefficients

 Table function(*,n)  function of canal width

                        1    2      3      4       5      6
         input          0    10    30     100     300     500
         output         0   .36    .67    .90    1.30    1.90

     Parameter step  grid point for function
               ftn   function value
               ftna  interpolated function output
               ftni  function input
               ftno  function output                                           ;

     ftni(n) = function("input",n);   ftno(n) = function("output",n) ;
     step(g,ud,n) = (ftni(n) le lw("width",g,ud)) and (ftni(n+1) gt lw("width",g,ud) )    ;
     ftna(g,ud,n) = (ftno(n) + (lw("width",g,ud) -ftni(n)) * (ftno(n+1)-ftno(n))/(ftni(n+1)-ftni(n)))$step(g,ud,n);
     ftn(g,ud) = sum(n, ftna(g,ud,n))  ;

     dephc(g,m) = wpara3("hc",g,m)-height(g,"hwr")                                 ;
     phi1mb(g) = per*nrc*(lw("length",g,"mc")*ftn(g,"mc")+lw("length",g,"bc")*ftn(g,"bc"));
     phi1dm(g) = per*nrc*(lw("length",g,"di")*ftn(g,"di")+lw("length",g,"mi")*ftn(g,"mi"));

     ws("mb",g,m) = wpara3("cfw",g,m)*phi1mb(g)*dephc(g,m)/wpara(g,"mb")       ;
     ws("dm",g,m) = wpara3("cfw",g,m)*phi1dm(g)*dephc(g,m)/wpara(g,"dm")       ;
     ws("wc",g,m) = beta - alpha * rpe(g,m) +wpara3("zeta","wtrcrs",m)         ;  ws("pg",g,m)=0.5*ws("wc",g,m);
     ws("fd",g,m) = beta - alpha * rpe(g,m) +wpara3("zeta","fld",m)            ;
     wl(u,g,m) = ws(u,g,m) + we(u,g,m)                                         ;

  wsu("mb",i,g,m)$dsp(g,i)=sum(usp, .824*ws("mb",usp,m));  weu("mb",i,g,m)$dsp(g,i) =sum(usp,  .824*we("mb",usp,m));
  wlu("mb",i,g,m) = wsu("mb",i,g,m) + weu("mb",i,g,m)   ;

*---  delivery efficiencies and water availability at the root zone

  Parameter      wcdeleff(g,m)   water course delivery eff. from water course head to root zone
                 twdeleff(g,m)   delivery eff. from private tubwell to root zone
                 cnldeleff(g,m)  delivery eff. from canal head to root zone
                 wr(g,m)         canal water netted to the root zone in kaf
                    ;
     wcdeleff(g,m)  = (1-wl("wc",g,m))*(1-wl("fd",g,m));           twdeleff(g,m) = (1-wl("pg",g,m))*(1-wl("fd",g,m));
     cnldeleff(g,m) = (1.0-wl("mb",g,m))*(1-wl("dm",g,m))*wcdeleff(g,m);
     wr(g,m)        = sum(i,wdiv(i,g,m)*(1-wlu("mb",i,g,m))  )* cnldeleff(g,m)*1000 ;

* ---  sub-irrigation and crop water requirements net of sub-irr. and rain fall

  Set  v                                                 / 1,2,3,4,5,6,7,8,9,10,11,12,13,14/

 Table fg(*,v)    fireman gardner curve

              1   2   3     4      5     6     7      8    9      10    11     12   13    14
   depth      0   1   2    2.5    2.7   3.0   3.4     4   5.167    6     8     10   20   100
   pro-pan    1   1   1     1      .8    .6    .4   .317   .2    .133  .064   .02    0     0

     Parameter fgi(v)            input point for fg function ,  fgo(v)  output point for fg function
               dep2(g)           mean depth to watertable from canal wetted area feet
               dep(g)            depth to watertable   feet
               fgc1(g,v)         initial fg function value canal fg evap
               fgc(g)            interpolated fg function value fg evap
               fga1(g,v)         initial fg function value aquifer fg evap
               fga(g)            interpolated fg function value aquifer fg evap
               wn(g,c,t,s,w,m)   crop water req net of rainfall and subirrigation
               efr(g,m)          effective rainfall in feet
               subirr(g,m)       water supplied by capillary action from the aquifer
               drc               proportion of rainfall which is run-off
               the1              proportion of nonconsumptive evapotranspiration
               test              interpolation tests
               test2             interpolation tests
                 ;
  drc = .15 ;                  the1 = 0.6;
  fgi(v)      = fg("depth",v);  fgo(v) = fg("pro-pan",v)                         ;
  dep(g)      = height(g,"hs") - height(g,"hwr");  dep2(g) = 0.5 *  dep(g)       ;
  test(v,g)   = (dep(g)  ge fgi(v)) and (dep(g)  lt fgi(v+1))                    ;
  test2(v,g)  = (dep2(g) ge fgi(v)) and (dep2(g) lt fgi(v+1))                    ;

  fgc1(g,v)   = (fgo(v) + (dep2(g)-fgi(v))*(fgo(v+1)-fgo(v))/(fgi(v+1)-fgi(v))) $ test2(v,g) ;
  fga1(g,v)   = (fgo(v) + (dep(g)-fgi(v))*(fgo(v+1)-fgo(v))/(fgi(v+1)-fgi(v)))  $ test(v,g)  ;
  fgc(g)      = sum(v,  fgc1(g,v))  ;          fga(g) = sum(v,fga1(g,v))  ;

  efr(g,m)    = (1.0 - drc - wl("fd",g,m) )*wpara1("rain",g,m)*1000/areac(g,"at")  ;
  subirr(g,m) = wpara1("pevap",g,m)*(1-the1)*fga(g)                                ;
  wn(g,c,t,s,w,m) = watreq(c,t,s,w,m) - efr(g,m) - subirr(g,m);  wn(g,c,t,s,w,m)$(wn(g,c,t,s,w,m) lt 0 ) = 0.0;

*---  calculations below are to compute annual underflow from neighbouring polygons qggw(g)
*
  Set  gn        neighbouring polygons        /poly-17+19, poly-18,  pl15, pl16, pl22  /
       gg(g,gn)                               /poly-17+19.(poly-18,pl15,pl22),  poly-18.(poly-17+19,pl16)   /

 Table wpara2(*,* )  height of water table above sea level and transmissibility coeff.
*                        (in  feet )                                (.001 sq.ft per sec      )

                          poly-17+19   poly-18    pl15    pl16    pl22
     hwr                   280.58         279    197.1   181.9   347
     trn                   458.8          448    493     370     412

 Table dist(*,g,gn) node to-node length (lnn in feet) perpendicular bisector (lpb in feet )

                        pl15      pl16      pl22   poly-18       poly-17+19
  lnn.poly-17+19      604058              309840   104148
  lnn.poly-18                   601455                            104148
  lpb.poly-17+19       67696              174448   343688
  lpb.poly-18                    70300                            343688

  Parameter    qgf(gn,g)    underflows from polygon gn to polygon g in kaf
               qggw(g)      total inflow from neighbouring polygons kaf
              ;
  qgf(gn,g) = ((dist("lpb",g,gn)*((wpara2("trn",gn)+wpara2("trn",g))/2.0/1000)*(wpara2("hwr",gn)-wpara2("hwr",g))*
                                                       nrc )/dist("lnn",g,gn))$gg(g,gn)/1000        ;
  qggw(g)   =        sum(gn$gg(g,gn), qgf(gn,g)   )   ;

*---  annual recharge from canals, rain, govt. tubewells, evaporation from ground water pumpage by govt. tubwells
*     and net rercharge

     Parameter efs(g,m)     effective seepage of rainfall from slack culturable land in feet
               seepcgw(g)   canal water seepage to the  groundwater in kaf
               seeprain(g)  seepage of rain to groundwater in kaf
               seepgtw(g)   seepage from the publick tubelwells  kaf
               trseep(g)    seepage in transit by polygon kaf
               etgw(g)      evapotraspiration from the groundwater along the canal and irrigated area
               delgw(g)     annual change in groudwater thousand acre feet
               ntw(g)       number of existing tubewells
               ntr(g)       number of existing tractors
               gtw(g,m)     government tubewell pumping (af per month)
               gtw1(g,m)    government tubewell pumping routed to root zone (af per month)
              ;
  efs(g,m)    = (1.0-drc)*0.2*wpara1("rain",g,m)/areac(g,"at")       ;
  etgw(g)     = sum(m, wpara1("pevap",g,m) * (wa(g)*fgc(g) +  areac(g,"alg")*fga(g) ) )/1000;
  seeprain(g) = sum(m, (1.0-drc)*( (ws("fd",g,m)+0.2)*(areac(g,"at")-areac(g,"alg"))+ws("fd",g,m)*areac(g,"alg") )*
                wpara1("rain",g,m)/areac(g,"at") );
  trseep(usp) = sum( (m,i,g), wdiv(i,g,m)*1000*wsu("mb",i,g,m)$dsp(g,i)   ) ;
  seepcgw(g)  = sum(m, sum(i, wdiv(i,g,m)*1000*(1-wlu("mb",i,g,m))*( ws("mb",g,m)+(1-wl("mb",g,m))*( ws("dm",g,m)+
                (1-wl("dm",g,m))*(ws("wc",g,m)+ (1-wl("wc",g,m))*ws("fd",g,m)) ) )  ))  +  trseep(g) ;

      ntw(g)        = 0.0  ;                  ntr(g)  =  0.0;   gtw(g,m)  =  0.0;  delgw(g)  =  0.0;
     gtw1(g,m)      = gtw(g,m)*wcdeleff(g,m) ;
     seepgtw(g)     = sum(m, gtw(g,m)*( ws("wc",g,m) +(1-wl("wc",g,m))*ws("fd",g,m) )  )/1000;
   Display wsu,weu,wlu, trseep ;
*---    report in effficiencies, and seepage to groundwater

   Parameter  rep4(g,*,u,*)   report on water losses
              rep5(g,*,*)     water requirements and avalability
              rep6(g,*)       groundwater inflows and outflows
               ;

     rep4(g,"seepage",u,m) = ws(u,g,m);          rep4(g,"evap",u,m)= we(u,g,m);     rep4(g,"total",u,m) = wl(u,g,m) ;
     rep5(g,"rain",m)      = efr(g,m);                  rep5(g,"rain","total")     = sum(m, efr(g,m) ) ;
     rep5(g,"subirr",m)    = subirr(g,m);               rep5(g,"subirr","total")   = sum(m, subirr(g,m) ) ;
     rep5(g,"cnldeleff",m) = cnldeleff(g,m);
     rep5(g,"canal",m)     = sum(i, wdiv(i,g,m)*1000);  rep5(g,"canal","total")    = sum(m, rep5(g,"canal",m) );
     rep5(g,"canal-rt",m)  = wr(g,m);                   rep5(g,"canal-rt","total") = sum(m, wr(g,m) ) ;

  rep6(g,"seepcgw")  = seepcgw(g);                             rep6(g,"seeprain")= seeprain(g);
  rep6(g,"rivseep")  = sum(m, wpara1("rivseep",g,m) )/1000;    rep6(g,"seepgtw") = seepgtw(g) ;
  rep6(g,"underflow")= qggw(g);          rep6(g,"gtw") = sum(m, gtw(g,m) )/1000;  rep6(g,"etgw  ") = etgw(g);
  rep6(g,"net-seep") = seepcgw(g)+seeprain(g)+rep6(g,"rivseep")+rep6(g,"seepgtw") + qggw(g)-rep6(g,"gtw")-
                                                                                              etgw(g)   ;
   Display  rep4 ;
     Display     "  rain        rain use by crops in feet "
                 "  subirr      water used by crop by cappilary action from the gw acre feet/acre "
                 "  cnldeleff   canal delivery efficiency from canal head to the root zone "
                 "              excluding the losses in transit through other polygons     "
                 "  canal       canal water availability at canal head kaf "
                 "  canal-rt    canal water availability at root zone  kaf "
     Display     rep5  ;
     Display     "  seepcgw     seepage from canal water to the groundwater( gw ) in kaf "
                 "  seeprain    seepage from rain to gw  kaf              "
                 "  rivseep     seepage from rivers to gw   in kaf"
                 "  seepgtw     seepage from public tubewells to gw in kaf "
                 "  underflow   flow  from neighbouring polygons to gw kaf "
                 "  etgw        evaporation from groundwater kaf          "
                 "  gtw         public tubewell pumpage  kaf  "
                 "  net-seep    net seeapge to gw from sources mentioned above kaf "
    Display rep6;


$Stitle    equations and variables

  Variables  yfa(g)         farm income thousand rupees
             yva(g)         normal farm income thousand rupees
             mad(g)         mean absolute revenue deviation of cropping pattern thousand rupees
             dr(g)          public drainage from groundwater in kaf
             inj(g)         public injection to groundwater in kaf
             tw(g,m)        private tubewell water use  in month m kaf
             ts(g,m)        private tractor services use  m month thousand hrs
             scc(g,c)       sales of crop commodities c in thousand lbs
             ccc(g,c)       on farm consumption of crops commodities c in thousand lbs
             pcc(g,c)       farm purchases of crop commodities c in thousand lbs
             slc(g,q)       sales of livestock commodities q  in thousand lbs or liters
             clc(g,q)       farm consumption of livestock commodities q in thousand lbs or liter
             plc(g,q)       farm purchases of livestock commodity q in thousand lbs or liters
             acost(g)       farm cost  in thousand rupees
*                           operating cost + annualized cost of capital services
             x(g,c,t,s,w)   area of crop c in thousand acres using a technology
             xca(g,c)       area of crop c by polygon
             animal(g,l)    production of livestock type l thousands
*                           thouands of bullocks pairs, cattle or buffaloes
             ppc            purchases of protein concentrates thousand lbs
             esl(g,m)       employment of seasonal labor in month m  in thousand man-hrs
             itw(g)         investment in increased private tubewell capacity kaf per month
             itr(g)         investment in increased tractor capacity
*                           thousand tractor-hours per month
             efl(g,m)       employment of family labor in month m in k man-hrs
             pdev(g,y)      positive revenue deviation in thousand  rupees
             ndev(g,y)      negative revenue deviation in thousand  rupees
             utl            utility of income million rupees
             slkland(g,m)   slack land in k acres
             slkwater(g,m)  slack water in kaf

  Positive Variables   pdev, ndev, mad, dr, inj, tw, ts, scc, ccc, pcc, slc, clc, plc, acost, x ,xca, animal,
                       ppc, esl, itw, itr, efl, slkwater, slkland  ;

  Equations  objt   objective function
             inbl   income accounting balance
             nfin   normal farm income constraint
             ddev   definition of revenue deviation year
             cost   annual farm cost
             cmbc   commodity balances for crops
             cmbq   commodity balances for livestock
             cblc   farm consumption of crop commodity
             cblq   farm consumption of livestock commodity
             fdsp   seasonal maintenance of fodder supplies
             slsk   protein requirements of livestock in season s
             sgfd   requirement for green fodder by livestock
             bupw   bullock draft power constraint
             buca   bullock reproduction constraint
             trpw   tractor draft power balance
             trcp   tractor capacity constraint
             labr   labor requirements constraint
             landc  land constraint
             cacr   crop acreage
             watr    water requirements for cropping activities
             tbcp   tubewell capacity constraint
             gwbl   annual groundwater balance
              ;
*   objective function

  objt..              utl     =e=    sum(g,  yfa(g)  -   r(g)*kl*sum(y, pdev(g,y) + ndev(g,y)) / card(y) -
                                                         cdrwell*( dr(g) + inj(g) )$sg(g)/drcap ) /1000 ;

  inbl(g)..           yfa(g)  =e=  sum(c$cnf(c), psc(c)*scc(g,c))+sum(c$cc(c),  psc(c)*ccc(g,c)- pbc(c)*pcc(g,c)  )
                                   +  sum(q, psq(q)*slc(g,q)- pbq(q)*plc(g,q)+psq(q)*clc(g,q)  )-acost(g);

  nfin(g)..           yva(g)  =e=  yfa(g) - sum(c$cc(c), (pbc(c)-psc(c))*pcc(g,c))+ sum(q, (pbq(q)-psq(q))*plc(g,q));

  ddev(g,y)..         sum(c, dev(c,y)*xca(g,c) )   =e= pdev(g,y) - ndev(g,y)   ;

  cost(g)..           acost(g) =e=    sum((c,t,s,w), cwcaptl(c,t,s,w)*x(g,c,t,s,w)$tech(c,t,s,w))+
                                      sum(m, misc("twopc")*tw(g,m) + misc("tropc")*ts(g,m)+ wage(m)*esl(g,m) ) +
                                      sum(l, lwcaptl(l)*animal(g,l)) + sum(sea, pp*ppc(g,sea))+
                                      misc("twinvt")*(itw(g) + ntw(g))$fsg(g) + misc("trinvt")*(itr(g) + ntr(g) ) ;

  cmbc(g,c)$cnf(c)..  sum((t,s,w), yc(c,t,s,w)*fc*x(g,c,t,s,w)$tech(c,t,s,w))-scc(g,c)-(ccc(g,c)-pcc(g,c))$cc(c) =e= 0;

  cmbq(g,q)..         sum(l, yq(l,q)*animal(g,l) )- slc(g,q) - clc(g,q) +plc(g,q) =e= 0.0 ;

  cblc(g,c)$cc(c)..   ccc(g,c)   =g=    alphc(g,c)      +   betac(g,c)*yva(g)  ;

  cblq(g,q)..         clc(g,q)  =g=     alphq(g,q)       +  betaq(g,q)*yva(g)  ;

  fdsp(g,sea)..       sum(l, livio(l,"tn")*animal(g,l) )  =l= gfd(g,sea)+
                                    sum((c,t,s,w), (tdy(c,t,s,w,sea)+wtd(c,t,s,w,sea))*x(g,c,t,s,w)$tech(c,t,s,w) );


  slsk(g,sea)..       sum(l, livio(l,"pr")*animal(g,l) )    =l=  ppc(g,sea) + gdp(g,sea) +
                                   sum((c,t,s,w), (dpy(c,t,s,w,sea)+wdp(c,t,s,w,sea))*x(g,c,t,s,w)$tech(c,t,s,w) );

  sgfd(g,sea)..       gr*sum(l, livio(l,"tn")*animal(g,l) )  =l=  gfd(g,sea) +  sum( (cf,t,s,w), tdy(cf,t,s,w,sea)*
                       x(g,cf,t,s,w)$tech(cf,t,s,w))  + sum((c,t,s,w), wtd(c,t,s,w,sea)*x(g,c,t,s,w)$tech(c,t,s,w) );

  bupw(g,m)..         sum((c,t,s,w), bpr(c,t,s,w,m)*x(g,c,t,s,w)$tech(c,t,s,w)) =l= bp(m)*animal(g,"bullock")  ;


  buca(g)..           animal(g,"bullock")   =l=   repco*animal(g,"cattle")    ;


  trpw(g,m)..         sum((c,t,s,w), tr(c,t,s,w,m)*x(g,c,t,s,w)$tech(c,t,s,w))   -   ts(g,m) =e= 0.0 ;


  trcp(g,m)..  ts(g,m)   =l=  areac(g,"trg1")/1000 + trcap*itr(g) ;

  labr(g,m)..         sum((c,t,s,w), labor(c,t,s,w,m)*x(g,c,t,s,w)$tech(c,t,s,w) )+sum(l, lbq(l,m)*animal(g,l)) =e=
                                             efl(g,m) + esl(g,m) ;

  landc(g,m)..        sum((c,t,s,w), land(c,t,s,w,m)*x(g,c,t,s,w)$tech(c,t,s,w))+slkland(g,m)=e= areac(g,"alg")/1000 ;


  cacr(g,c)..          xca(g,c) =e= sum((t,s,w) , x(g,c,t,s,w)$tech(c,t,s,w) )  ;


  watr(g,m)..         sum((c,t,s,w), wn(g,c,t,s,w,m)*x(g,c,t,s,w)$tech(c,t,s,w))+slkwater(g,m)  =e=
                                        wr(g,m) + twdeleff(g,m)*tw(g,m)$fsg(g) + gtw1(g,m)/1000 ;

  tbcp(g,m)$fsg(g)..  tw(g,m) =l= areac(g, "twg")/1000 + twcap*itw(g)  ;

*   annual groundwater balance --- additional seepage of rain from slack land + seepage from tubewell water +
*   seepage from canal water + underflow + seepage of rain from unirrigated area + seepage from rain in
*   irrigated area + seepage from rice fields and river reaches  = e = private and government tubewell pumpage
*   + evapotranspiration along canals and aquifer + drainage/injection + change storage
*

  gwbl(g)..   sum(m, efs(g,m)*slkland(g,m) + ( ws("pg",g,m) + (1-wl("pg",g,m))*ws("fd",g,m) )*tw(g,m)$fsg(g) +
                     wpara1("rivseep",g,m)/1000 )  + sum(cri, xca(g,cri))*1.5   + seepcgw(g)+
                     seepgtw(g) + qggw(g) + seeprain(g)  =e=
              sum(m,  tw(g,m)$fsg(g) + gtw(g,m)/1000) +etgw(g) + (dr(g) - inj(g))$sg(g)  + delgw(g);

*      solve the model using lp
      xca.up(g,"sc-mill") = areac(g,"sra")/1000;
      efl.up(g,m) = flab(g,"fh");   esl.up(g,m) = flab(g,"lh") ;
*    itr.fx(g)   = 0.0;            itw.fx(g)   = 0.0  ;

   Model indus1  / objt,inbl,nfin,ddev,cost,cmbc,cmbq,cblc,
                   cblq,fdsp,slsk,sgfd,bupw,buca,trpw,labr,
                   landc,cacr,watr,tbcp,gwbl,trcp/;


*  indus2 is model without groundwater balance constraint

   Model indus2  /  objt,inbl,nfin,ddev,cost,cmbc,cmbq,cblc,
                    cblq,fdsp,slsk,sgfd,bupw,buca,trpw,trcp,labr,
                    landc,cacr,watr,tbcp/  ;

   Solve indus1 maximizing utl using lp     ;

*     end of source code


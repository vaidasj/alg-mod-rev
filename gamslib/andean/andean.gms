option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title A N D E A N Fertilizer model  (ANDEAN,SEQ=44)
$Stitle  Set Definitions

$Ontext

This model has been used by the secretariat of the Andean
common market to assist in the planning of investments in
the fertilizer sector. Efficient and equitable investment
plans were studied.


Mennes, L, and Stoutjesdijk, A, Multicountry Investment Analysis. The
John Hopkins University Press, Baltimore and London, 1986.

$Offtext

 Set   w      countries in andean common market /

              bolivia, colombia, ecuador, peru, venezuela /

       wr     countries and region


       i      plant locations     /

              palmasola     pta-pequena
              pto-suarez    pta-grande
              potosi        enaf
              baranquill    monomeros
              cartagena     abocol

              barrancabr    ferticol
              la-dorada     la-dorada
              guayaquil     fertiza
              pt-bolivar    cepe
              callao-f      fertiza

              cuzco         cachimayo
              talara        petroperu
              callao-i      indus
              bayovar       bayovar
              moron         ivp

              pta-caiman    pedevesa
              caripito      ivp
              tablazo       nitroven   /


       wi(w,i)  country plant location mapping     /

              bolivia.(palmasola ,pto-suarez,potosi)
              colombia.(baranquill,cartagena,barrancabr,la-dorada )
              ecuador.(guayaquil,pt-bolivar)
              peru.(callao-f,cuzco,talara,callao-i,bayovar)
              venezuela.(moron,pta-caiman,caripito,tablazo)   /


       j      demand regions         /

              cochabamba    valles
              santa-cruz    llanos-orientales
              potosi        altiplano
              bogota        central
              bucaramang    nor-oriental

              armenia       cafetera
              cali          sur
              quito         nor-occidental
              babahoyo      centro-occidental
              machala       sur-occidental

              chiclayo      norte
              ica           centro
              arequipa      sur
              tingo-mar     selva
              maturin       oriental

              maracaibo     occidental
              calabozo      centro-oriente
              acarigua      centro-occidente     /


       wj(w,j)  country demand region mapping  /

              bolivia.(cochabamba,santa-cruz,potosi)
              colombia.(bogota,bucaramang,armenia,cali)
              ecuador.(quito,babahoyo,machala)
              peru.(chiclayo,ica,arequipa,tingo-mar)
              venezuela.(maturin,maracaibo,calabozo,acarigua) /


       m      productive units       /

              amm-elec      ammonia: electrolysis
              amm-n-gas     ammonia: natural gas
              amm-f-oil     ammonia: fuel oil
              nitr-acid     nitric acid
              amm-nitr      ammonium nitrate

              amm-sulf      ammonium sulfate
              urea
              ssp           single superphosphate
              tsp           triple superphosphate

              ss-tsp        combined ssp-tsp plant
              phos-acid     phosphoric acid
              sulf-acid     sulfuric acid
              npk           compound fertilizer
              dap           diammonium phosphate
              granulator    unit for dap npk and tsp granulation
              pot-chlor     potassium chloride             /


       g      plant types   / old, new /
$Eject
       p      processes        /

              amm-elec      ammonia: electrolysis
              amm-n-gas     ammonia: natural gas
              amm-f-oil     ammonia: fuel oil
              nitr-acid     nitric acid
              amm-nitr      ammonium nitrate
              amm-sulf      ammonium sulfate

              urea
              ssp           single superphosphate
              tsp           triple superphosphate
              s-sp          single superphosphate on ss-tsp unit
              t-sp          triple superphosphate on ss-tsp unit
              phos-acid     phosphoric acid

              sulf-acid     sulfuric acid
              dap           diammonium phosphate
              dap-g         diammonium phosphate on granulator unit
              comp-g        compound fertilizer on granulator unit
              pot-chlor     potassium chloride

              c-20-18-10    compound fertilizer
              c-13-13-20    compound fertilizer
              c-15-21-10    compound fertilizer
              c-16-12-12    compound fertilizer
              c-08-24-12    compound fertilizer
              c-12-12-12    compound fertilizer  /


       cq     nutrients        /

              n             nitrogen
              p2o5          phosphorus
              k2o           potash     /


       c      all commodities            /

              urea
              amm-nitr      ammonium nitrate
              amm-sulf      ammonium sulfate
              ssp           single superphosphate
              tsp           triple superphosphate
              pot-chlor     potassium chloride
              dap           diammonium phosphate

              c-20-18-10    compound fertilizer
              c-13-13-20    compound fertilizer
              c-15-21-10    compound fertilizer
              c-16-12-12    compound fertilizer
              c-08-24-12    compound fertilizer
              c-12-12-12    compound fertilizer

              phos-acid     phosphoric acid
              ammonia
              carb-diox     carbon dioxide
              nitr-acid     nitric acid
              electr        electricity          (1000 kwh      )
              nat-gas       natural gas          (1000 std.cu.ft)

              fuel-oil
              phos-rock     phosphate rock       ( .75 pct bpl  )
              el-sulfur     elemental sulfur
              sulf-acid     sulfuric acid
              brine                                    /


       cf(c)  final products    /

              urea      , amm-nitr  , amm-sulf  , ssp       , tsp       , pot-chlor , dap
              c-20-18-10, c-13-13-20, c-15-21-10, c-16-12-12, c-08-24-12, c-12-12-12      /


       co(c)  compounds    /

              c-20-18-10, c-13-13-20, c-15-21-10, c-16-12-12, c-08-24-12, c-12-12-12 /


       cr(c)  domestic raw materials   /

              electr, nat-gas, fuel-oil, phos-rock, el-sulfur, sulf-acid, brine /


       cis(c) products for interplant shipment   /

              urea, amm-nitr, amm-sulf, ssp, tsp, pot-chlor, dap, phos-acid, ammonia /


       ce(c)  products for export    /

              urea, amm-nitr, amm-sulf, ssp, tsp, pot-chlor, dap, phos-acid, ammonia  /


       cv(c)  products for import        /

              urea, amm-nitr, amm-sulf, tsp, pot-chlor, dap, phos-acid, ammonia, phos-rock, el-sulfur /


       wnpk(w,c) country-compound mapping    /

              venezuela.(c-20-18-10,c-13-13-20)
              colombia.(c-16-12-12,c-15-21-10)
              ecuador.(c-08-24-12)
              peru.(c-12-12-12)                /


       t      time periods         /  1981-83, 1984-86, 1987-89, 1990-92  /


       te(t)  expansion periods    /  1984-86, 1987-89, 1990-92  /


       cores(co,i,j) compound shipment possibilities ;


 Alias(i,ip),(j,jp),(t,tp),(te,tep),(w,wp);


    wr(w) = yes; wr("andean")=yes;
    cores(co,i,j) = sum(w$(wi(w,i)*wj(w,j)), wnpk(w,co));

 Display wr,cores;


* the following format will be used in all the data sections below:
*
* a. define all the parameters that are used in the model.
* b. present the data used.
* c. define intermediate parameters.
* d. compute necessary parameters from data.

$Stitle demand data

 Parameter d(j,cq,t)    demand for nutrients (1000 tpy)



 Table dem82(j,cq)  nutrient demand projections for 1982 (1000 tpy)

                 n        p2o5        k2o

 cochabamba     1.2         2.3
 santa-cruz     1.2          .6
 potosi          .3         2.4
 bogota        74.2        57.1        34.2
 bucaramang    29.4         7.1         5.4
 armenia       54.3        44.3        29.3
 cali          30.8        25.3        15.4
 quito         12.6        10.3         6.1
 babahoyo      16.2        13.2         7.9
 machala        7.2         5.8         3.4
 chiclayo      58.0        15.8         9.4
 ica           43.2        11.8         7.1
 arequipa      17.2         4.7         2.8
 tingo-mar      4.9         1.3          .8
 maturin       24.8        18.3        11.7
 maracaibo     16.5        12.2         7.8
 calabozo      42.7        31.5        20.2
 acarigua      53.7        39.6        25.4


 Table dem85(j,cq)  nutrient demand projections for 1985 (1000 tpy)

                 n        p2o5        k2o

 cochabamba     3.7         3.2
 santa-cruz     4.6         1.1
 potosi         0.9         3.0
 bogota        90.7        65.9        37.2
 bucaramang    34.9         8.4         6.1
 armenia       76.8        63.5        43.7
 cali          38.9        31.8        16.9
 quito         14.4        11.6         7.0
 babahoyo      23.1        18.5        11.3
 machala       10.6         8.5         5.1
 chiclayo      70.8        21.5        12.8
 ica           45.8        13.9         8.3
 arequipa      23.6         7.2         4.3
 tingo-mar      7.4         2.2         1.4
 maturin       30.6        23.6        14.1
 maracaibo     20.4        15.7         9.4
 calabozo      52.6        40.7        24.2
 acarigua      66.2        51.1        30.5

$Eject

 Table dem88(j,cq)  nutrient demand projections for 1988 (1000 tpy)

                 n        p2o5        k2o

 cochabamba     5.7         4.7
 santa-cruz     7.4         1.7
 potosi         3.3         4.3
 bogota        99.9        71.1        42.0
 bucaramang    38.3         9.9         7.6
 armenia      100.8        82.6        49.8
 cali          46.6        38.4        18.8
 quito         16.0        12.8         7.7
 babahoyo      32.0        25.8        15.5
 machala       16.0        12.8         7.7
 chiclayo      81.5        29.2        17.4
 ica           48.2        17.3        10.3
 arequipa      28.3        10.2         6.0
 tingo-mar      8.3         3.0         1.8
 maturin       39.2        32.9        17.2
 maracaibo     26.2        21.9        11.5
 calabozo      67.5        56.7        29.7
 acarigua      84.9        71.3        37.4


 Table dem91(j,cq)  nutrient demand projections for 1991 (1000 tpy)

                 n        p2o5        k2o

 cochabamba     8.0         6.9
 santa-cruz    10.4         3.0
 potosi         4.6         5.4
 bogota       104.2        74.2        43.2
 bucaramang    44.4        12.3         9.0
 armenia      121.1       100.8        59.1
 cali          54.3        44.3        20.5
 quito         16.7        13.3         8.1
 babahoyo      43.1        34.8        20.9
 machala       23.3        18.7        11.3
 chiclayo      90.6        38.8        23.2
 ica           51.6        21.4        12.7
 arequipa      33.3        14.3         8.5
 tingo-mar     11.1         4.8         2.8
 maturin       51.0        47.3        21.2
 maracaibo     34.0        31.5        14.2
 calabozo      87.9        81.6        36.6
 acarigua     110.5       102.6        46.1

$Eject

 Table db(j,*)  minimum ammonium sulfate requirement (1000 tpy)

              1981-83     1984-86     1987-89     1990-92

 cochabamba      .5          .5          .5          .5
 santa-cruz      .5          .5          .5          .5
 potosi                      .3          .5          .5
 bogota         9.8        12.4        13.4        15.5
 bucaramang     4.7         4.7         6.9         8.0
 armenia        9.4        12.0        13.4        15.5
 cali           4.7         4.7         6.4         7.5
 quito          1.8         2.3         2.8         3.1
 babahoyo       1.8         2.3         2.4         2.6
 machala        1.4         1.5         1.9         2.2
 chiclayo       3.8         4.5         5.3         6.5
 ica            3.8         4.5         5.3         6.5
 arequipa       3.2         3.9         4.6         5.7
 tingo-mar      1.3         1.9         2.7         3.3
 maturin       15.4        16.9        20.5        21.5
 maracaibo     11.5        11.8        11.9        12.5
 calabozo      23.3        24.5        27.0        28.4
 acarigua      28.8        32.9        34.0        35.7


 Table alpha(c,cq)   nutrient content

              n      p2o5   k2o

 ammonia      .80
 nitr-acid    .22
 phos-acid           .54
 phos-rock           .30
 brine                      .0004
 urea         .46
 amm-nitr     .33
 amm-sulf     .205
 ssp                 .20
 tsp                 .46
 pot-chlor                  .60
 dap          .18    .46
 c-20-18-10   .20    .18    .10
 c-13-13-20   .13    .13    .20
 c-15-21-10   .15    .21    .10
 c-16-12-12   .16    .12    .12
 c-08-24-12   .08    .24    .12
 c-12-12-12   .12    .12    .12
                                              ;
$Eject

   d(j,cq,"1981-83") = dem82(j,cq);
   d(j,cq,"1984-86") = dem85(j,cq);
   d(j,cq,"1987-89") = dem88(j,cq);
   d(j,cq,"1990-92") = dem91(j,cq);

* computations below are simply for analysis.

 Parameter   dr(cq,t,*)  demand for nutrients (1000 tpy)
             dbr(*,t)    demand for ammonium sulfate by country  (1000 tpy)
             dgr(*,cq,*) demand growth rates;

   dr(cq,t,w)        = sum(j$wj(w,j), d(j,cq,t));
   dr(cq,t,"andean") = sum(w, dr(cq,t,w));
   dbr(w,t)          = sum(j$wj(w,j), db(j,t));
   dbr("andean",t)   = sum(w, dbr(w,t));

 Table  con76(*,cq)   nutrient consumption in 1976 (1000 tpy)

                n   p2o5   k2o

 bolivia        1     2
 colombia     108    69     42
 ecuador       20    17     10
 peru         101    17     13
 venezuela    133    95     71
                                      ;

 con76("andean",cq) = sum(w, con76(w,cq));
 dgr("76/82",cq,wr)$con76(wr,cq) = (dr(cq,"1981-83",wr)/con76(wr,cq))**(1/6) - 1 ;
 dgr("76/91",cq,wr)$con76(wr,cq) = (dr(cq,"1990-92",wr)/con76(wr,cq))**(1/16) - 1 ;
 dgr("82/85",cq,wr)$dr(cq,"1981-83",wr) = (dr(cq,"1984-86",wr)/dr(cq,"1981-83",wr))**(1/3) - 1 ;
 dgr("85/88",cq,wr)$dr(cq,"1984-86",wr) = (dr(cq,"1987-89",wr)/dr(cq,"1984-86",wr))**(1/3) - 1 ;
 dgr("88/91",cq,wr)$dr(cq,"1987-89",wr) = (dr(cq,"1990-92",wr)/dr(cq,"1987-89",wr))**(1/3) - 1 ;
 dgr("82/91",cq,wr)$dr(cq,"1981-83",wr) = (dr(cq,"1990-92",wr)/dr(cq,"1981-83",wr))**(1/9) - 1 ;

 Display d,db,dr,dbr,con76,dgr;

$Stitle transport

 Parameters   mur(i)    transport cost: imported raw material             (us$ per ton)
              mue(i)    transport cost: export                            (us$ per ton)
              muf(i,j)  transport cost: final products                    (us$ per ton)
              mui(i,ip) transport cost: interplant shipments              (us$ per ton)
              mufv(j)   transport cost: imported final products           (us$ per ton)
              mux(c)    transport cost factor for acids;

 Table trsp   transport cost (us$ per ton)

               palmasola    pto-suarez    potosi    baranquill    cartagena    barrancabr    la-dorada    guayaquil

 potosi           31.25         55.97                  70.68         70.68         93.97        97.58        70.32
 cochabamba       21.50         46.22      18.17       74.34         74.34         97.63       101.24        71.10
 santa-cruz        3.00         27.72      28.25       86.84         86.84        110.13       113.74        83.60
 bogota          122.72       1000.00     103.56       32.88         35.61         16.44        12.00        64.04
 bucaramang      113.13       1000.00      93.97       23.28         26.03          8.22        21.28        54.45
 armenia         101.63       1000.00      82.66       31.15         31.15         21.91        11.47        42.33
 cali             96.15       1000.00      77.18       25.67         20.67         32.98        16.95        36.75
 quito           103.12       1000.00      87.92       48.76         48.67         72.05        47.40        20.80
 babahoyo         91.13       1000.00      75.92       36.76         36.76         60.05        63.66         5.60
 machala          88.52       1000.00      73.32       34.16         34.16         57.45        61.06         9.60
 chiclayo         88.52       1000.00      70.37       36.14         36.14         59.43        63.04        32.90
 ica              84.36       1000.00      66.25       51.05         51.05         74.34        77.95        47.81
 arequipa         65.55       1000.00      47.40       41.99         41.99         65.28        68.89        38.25
 tingo-mar       124.99       1000.00     106.84       72.61         72.61         95.90        99.51        69.37
 maturin          95.81       1000.00      74.49       39.61         39.61         55.46        66.51        39.11
 maracaibo        95.81       1000.00      74.49       22.61         31.61         38.17        49.51        39.11
 calabozo        105.12       1000.00      83.80       44.22         49.14         45.65        60.21        48.42
 acarigua        103.95       1000.00      82.63       37.33         46.33         38.64        53.70        47.25
 pts-plant          .009      1000.00      40.00         .009          .009        23.30        25.00          .009

      +        pt-bolivar    callao-f    cuzco    talara    callao-i    bayovar    moron    pta-caiman    caripito

 potosi           70.32        75.40     55.45     77.02      75.40       77.02    75.12       67.48        67.48
 cochabamba       71.10        68.40     47.85     70.02      68.40       70.02    80.94       73.30        73.30
 santa-cruz       83.60        80.90     64.70     82.52      80.90       82.52    93.44       85.80        85.80
 bogota           64.04        66.02   1000.00     66.02      66.02       66.02    73.34       65.48        65.48
 bucaramang       54.45        56.43   1000.00     56.43      56.43       56.43    63.75       55.89        55.89
 armenia          42.33        44.93   1000.00     44.93      44.93       44.93    53.33       44.43        44.43
 cali             36.75        39.43   1000.00     39.45      39.45       39.45    47.85       38.95        38.95
 quito            26.00        46.42   1000.00     46.42      46.42       46.42    58.60       49.70        49.70
 babahoyo         13.20        34.42   1000.00     34.42      34.42       34.42    46.60       37.70        37.70
 machala           3.00        31.82   1000.00     31.82      31.82       31.82    44.00       35.10        35.10
 chiclayo         32.90        21.82   1000.00     19.16      21.82       19.16    44.00       35.10        35.10
 ica              47.81        17.91     49.00     36.73      17.91       36.73    58.91       50.01        50.01
 arequipa         38.75        27.20     24.70     27.67      27.20       27.67    49.85       40.95        40.95
 tingo-mar        69.37        39.47   1000.00     58.29      39.47       58.29    80.47       71.57        71.57
 maturin          39.11        39.11   1000.00     39.11      39.11       39.11    20.86       21.03         7.01
 maracaibo        39.11        39.11    106.02     39.11      39.11       39.11    15.88       17.52        32.01
 calabozo         48.42        48.42   1000.00     48.42      48.42       48.42    11.68       13.08        15.65
 acarigua         47.25        47.25   1000.00     47.25      47.25       47.25    10.51       12.27        24.65
 pts-plant          .009         .009    29.80       .009       .009        .009     .009        .009         .009

      +        tablazo    pts-market

 potosi          67.48       33.00
 cochabamba      73.30       50.50
 santa-cruz      85.80       71.50
 bogota          65.48       32.90
 bucaramang      55.89       23.30
 armenia         44.43       12.30
 cali            38.95        6.90
 quito           49.70       17.60
 babahoyo        37.70        5.60
 machala         35.10        3.00
 chiclayo        35.10        3.10
 ica             50.01       18.00
 arequipa        40.95        8.90
 tingo-mar       71.57       39.50
 maturin         28.74        7.00
 maracaibo        7.01        7.00
 calabozo        23.26       11.70
 acarigua        11.21       10.50
 pts-plant         .009

$Eject

 Table tran(i,i)   transport cost for interplant shipments (us$ per ton)

               palmasola    pto-suarez    potosi    baranquill    cartagena    barrancabr    la-dorada    guayaquil

 pto-suarez       87.22
 potosi           31.25         55.97
 baranquill       89.80        114.56      70.68
 cartagena        89.80        114.56      70.68        5.00
 barrancabr      115.80        137.85      93.97       23.28         26.00
 la-dorada        90.16        141.46      97.58       35.90         35.90        13.06
 guayaquil        88.52        111.32      70.32       31.20         31.20        54.20         56.10
 pt-bolivar       91.52        111.32      70.32       31.14         31.20        54.45         56.10         9.60
 callao-f         85.52        108.62      75.40       33.10         33.10        56.43         56.43        28.80
 cuzco            90.25         92.42      72.10       69.69         69.69        89.98         93.59        63.45
 talara           88.52        110.24      77.02       33.10         33.10        56.43         56.43        29.90
 callao-i         85.52        108.62      75.40       33.10         33.10        56.40         60.00        29.90
 bayovar          75.12        110.24      77.02       33.10         33.10        56.43         56.43        29.90
 moron            67.48        121.16      75.10       40.50         40.50        43.30         57.90        39.70
 pta-caiman       67.48        113.52      67.50       32.60         32.60        45.00         60.22        37.10
 caripito         67.48        113.52      67.48       32.60         32.60        55.48         66.51        39.11
 tablazo          67.48        113.52      67.48       31.60         31.60        38.17         49.51        39.11

      +        pt-bolivar    callao-f    cuzco    talara    callao-i    bayovar    moron    pta-caiman    caripito

 callao-f         28.82
 cuzco            63.45        51.90
 talara           28.82        18.82     52.37
 callao-i         28.82                  51.90     18.80
 bayovar          28.82        21.82     52.37     18.80      21.82
 moron            39.70        39.70     77.00     39.70      39.70       39.70
 pta-caiman       32.10        32.10     61.80     32.10      32.10       32.10     7.20
 caripito         32.10        39.11     77.00     39.11      39.11       39.11    20.90       21.03
 tablazo          32.10        39.11     77.00     39.11      39.11       39.11    23.40       17.52        28.74
                                                                      ;


    mur(i)    =  trsp("pts-plant",i) ;

*   adjust the raw material transport cost for palmasola because the import/export point for palmasola is not
*   the same as it is in the case of all other locations.  palmasola imports from the coast but its market is
*   just across the border in argentina.

    mur("palmasola") = 60 ;

    mufv(j)   =  trsp(j,"pts-market");
    muf(i,j)  =  trsp(j,i)           ;
    mue(i)    =  trsp("pts-plant",i) ;
    mui(i,ip) =  (tran(i,ip) + tran(ip,i));

    mux(c)    = 1;  mux("phos-acid") = 2;  mux("ammonia") = 2;

    Display mur, mue, muf, mui, mufv, mux;

$Stitle technology data

 Set misc miscellanious inputs / electr, water-pr, water-c, nat-gas, steam, misc, bags  /


 Table a(c,p) input-output coefficients

               amm-elec    amm-n-gas    amm-f-oil    nitr-acid    amm-nitr    amm-sulf    urea    ssp    tsp

 nitr-acid                                              1.           -.76
 amm-nitr                                                            1.
 amm-sulf                                                                        1.
 urea                                                                                    1.
 ssp                                                                                            1.0
 tsp                                                                                                   1.0
 phos-acid                                                                                             -.74
 sulf-acid                                                                       -.76           -.38
 ammonia          1.           1.          1.           -.27         -.2        -.265   -.58
 carb-diox                     1.          1.                                            -.58
 electr         -87.
 nat-gas                     -27.
 fuel-oil                                  -.84
 phos-rock                                                                                      -.7   -.45

      +        phos-acid    sulf-acid    dap    pot-chlor    s-sp    t-sp    dap-g    comp-g    c-20-18-10    c-13-13-20

 urea                                                                                  -.283        -.15          -.283
 ssp                                                        1.
 tsp                                                                1.                 -.293        -.1          -.293
 phos-acid        1.                   -.84                         -.74     -.84
 sulf-acid       -1.5         1.                           -.38
 dap                                   1.                                    1.                     -.17
 pot-chlor                                          1.                                 -.334        -.17          -.334
 c-20-18-10                                                                                          1.
 c-13-13-20                                                                            1.                         1.
 ammonia                               -.23                                  -.23                   -.15
 phos-rock       -1.8                                      -.7    -.45                            -.19
 el-sulfur                     -.33
 brine                                           -150.

      +        c-15-21-10     c-16-12-12    c-08-24-12    c-12-12-12

 nitr-acid         -.15          -.17
 amm-sulf          -.15                        -.053         -.42
 urea                            -.26
 ssp                                           -.34          -.21
 phos-acid         -.2          -.04          -.32
 dap               -.17                                      -.17
 pot-chlor         -.17          -.2          -.2          -.2
 c-15-21-10         1.
 c-16-12-12                      1.
 c-08-24-12                                    1.
 c-12-12-12                                                  1.
 ammonia           -.08                        -.107
 phos-rock         -.2          -.33


 Table b(m,p)  capacity utilization matrix

               amm-elec    amm-n-gas    amm-f-oil    nitr-acid    amm-nitr    amm-sulf    urea    ssp    tsp

 amm-elec        1.0
 amm-n-gas                    1.0
 amm-f-oil                                 1.0
 nitr-acid                                              1.0
 amm-nitr                                                           1.0
 amm-sulf                                                                       1.0
 urea                                                                                    1.0
 ssp                                                                                            1.0
 tsp                                                                                                   1.0

      +        phos-acid    sulf-acid    dap    pot-chlor    s-sp    t-sp    dap-g    comp-g    c-20-18-10    c-13-13-20

 ss-tsp                                                     1.0     1.0
 phos-acid        1.0
 sulf-acid                     1.0
 npk                                                                                               1.0           1.0
 dap                                   1.0
 granulator                                                                  1.045     1.0
 pot-chlor                                         1.0

      +        c-15-21-10    c-16-12-12    c-08-24-12    c-12-12-12

 npk              1.0           1.0           1.0           1.0



 Table am(i,p,misc)  miscellanious inputs by plant and process


                        electr  water-pr  water-c  nat-gas  steam  misc  bags

 baranquill.nitr-acid    .7       1.2     180.0              .6    .4
 baranquill.amm-sulf     .18                                 .05   .3   22.0
 baranquill.sulf-acid    .05               15.2              .1    .4
 baranquill.c-15-21-10   .80               17.0     0.5     2.1    .7   22.0
 baranquill.c-16-12-12   .80               17.0     0.5     2.1    .7   22.0

 cartagena.amm-n-gas     9.9       1.0     150.0             6.0    .6
 cartagena.nitr-acid     1.6       1.1     160.0                    .4
 cartagena.urea           .56      2.5     190.0             2.0   1.1   22.0
 cartagena.c-15-21-10     .75               20.0                    .9   22.0
 cartagena.c-16-12-12     .75               20.0                    .9   22.0

 barrancabr.amm-n-gas   10.4       4.2     500.0             4.1    1.6
 barrancabr.nitr-acid    1.74      1.0     170.0                     .5
 barrancabr.urea         2.7       3.2     180.0             1.8    2.6  22.0
 barrancabr.amm-nitr     0.74               34.0    0.6      0.5    2.2  22.0

 guayaquil.phos-acid     4.0       4.0     100.0             2.0    3.0
 guayaquil.ssp            .2                                        1.6  22.0
 guayaquil.sulf-acid      .05               15.2               .1    .4
 guayaquil.c-08-24-12     .3                  .2      0.6      .2   1.8  22.0

 callao-f.amm-f-oil     17.0       4.2      70.0             4.1    1.1
 callao-f.nitr-acid       .2       1.1     160.0                     .4
 callao-f.amm-nitr        .75               35.0             0.5    2.3  22.0
 callao-f.amm-sulf        .13                                0.1    1.0  22.0

 cuzco.amm-elec          15.0        .4      58.0             6.0    2.2
 cuzco.nitr-acid         3.1       1.5     150.0                    0.9
 cuzco.amm-nitr           .8                30.0              .4    2.8  22.0

 talara.amm-n-gas        7.9       2.9     105.0             1.3     .6
 talara.urea              .94      1.0      50.0             1.0    1.1  22.0

 callao-i.ssp             .1                 1.6                    3.6  22.0
 callao-i.c-12-12-12      .33                 .3     1.5      .03   1.8  22.0

 moron.amm-n-gas          .25      1.9     254.0                     .4
 moron.urea              1.63      1.5      56.0             1.1    1.0  22.0
 moron.amm-sulf           .18                                 .05   1.8  22.0
 moron.s-sp               .10                                       1.6  22.0
 moron.t-sp               .20                 .1                    1.6  22.0
 moron.sulf-acid          .05               15.2              .1     .4
 moron.phos-acid          .95      3.8     123.0             1.5     .6
 moron.nitr-acid         1.24      1.2     168.0              .23    .5
 moron.dap-g              .30                        1.4     0.1    1.6  22.0
 moron.comp-g             .25                4.5      .3     0.1    1.2  22.0
 moron.c-13-13-20         .25                4.5      .3     0.1    1.2  22.0
 moron.c-20-18-10         .25                4.5      .3     0.1    1.2  22.0

 tablazo.amm-n-gas        .22      1.9     254.0                     .4
 tablazo.urea            1.63      1.5      56.0             1.1    1.0  22.0

*note:
*     the inputs for nitr-acid at moron are weighted averages from the other
*     nitr-acid plants. the norms for the grannulator at moron are assumed to
*     be the same as the compound plant.

$Stitle operating costs

 Parameter oz(g,p,i)      variable operating cost (us $ per unit level)
           ocap(m)        fixed operating cost (us$ per ton per year)

           miscost(misc)  cost of miscellaneous inputs /  electr   2    , water-pr   .3 , water-c   .05
                                                          nat-gas  1.1  , steam     3   , misc     1    , bags .28 /


 Table opcost(m,*)  operating cost for new plants (us$ per ton per year)

                  capacity    process

 amm-elec            34.5       12.3
 amm-n-gas           34.5       12.3
 amm-f-oil           34.5       12.3
 nitr-acid           10.6        2.2
 amm-nitr             8.4       10.4
 amm-sulf             8.0        0.2
 urea                17.8        8.0
 ssp                  9.3        1.7
 tsp                  9.3        1.7
 ss-tsp               9.3        1.7
 phos-acid           16.8        9.0
 sulf-acid            0.3        2.5
 npk                  6.5        2.9
 dap                  7.7        5.5
 granulator           9.3        1.7
 pot-chlor           13.0       22.0


  Parameters  oold(p,i) operating cost of old plants (us$ per unit level)
              onew(p)   operating cost for new plants (us$ per unit level);


    oold(p,i) = sum(misc, miscost(misc)*am(i,p,misc));
    onew(p)   = sum(m, b(m,p)*opcost(m,"process"));

    oz("old",p,i) = oold(p,i) ;
    oz("new",p,i) = onew(p) ;

    ocap(m)       = opcost(m,"capacity");

 Display oold,onew,oz,ocap ;

$Stitle capacity data

 Parameter k(m,i,t)    effective capacity of old plants (1000 tpy)
           umin(t)     lower bound on npk plant utilization
 Scalar    unew        utilization rates for new plants          / .85 /


 Table   dcap(i,m)  installed capacity in operation in 1980 (tons per day)

              amm-elec     amm-f-oil   amm-n-gas   nitr-acid   amm-nitr

 baranquill                                           230
 cartagena                                340          68
 barrancabr                                65          85        150
 callao-f                      70                     107        140
 cuzco             50                                  90        118
 talara                                   300
 moron                                    600          88
 tablazo                                 1800

 +            amm-sulf    urea    ssp       ss-tsp     phos-acid

 baranquill    212
 cartagena                 500
 barrancabr                 65
 guayaquil                         120                    17
 callao-f       50
 talara                    510
 callao-i                          100
 moron         200         750               300         650
 tablazo                  2400

 +            sulf-acid     granulator     npk

 baranquill    162                         850
 cartagena                                 425
 guayaquil      80                         180
 callao-i                                  240
 moron        1200           920           460


 Parameter   caput(m,i,t)   capacity utilization for old plants
             dcapw(*,m)     nameplate capacity by country (1000 tpy)
             kw(m,*,t)      effective capacity by country (1000 tpy);

    umin(t) =.7; umin("1981-83") = .6; umin("1984-86") =  .65;

    caput(m,i,t) = .9 ;  caput(m,i,t)$(wi("peru",i)+wi("venezuela",i)) = .75 ;

    k(m,i,t)                        = .33*caput(m,i,t)*dcap(i,m) ;
    k("amm-sulf","moron","1987-89") = .75*.33*390 ;
    k("amm-sulf","moron","1990-92") = .75*.33*390 ;

 Display k,umin,caput;

* computations below are for data analysis only.

    dcapw(w,m)  = sum(i$wi(w,i), dcap(i,m));
    kw(m,w,t)   = sum(i$wi(w,i), k(m,i,t));
    dcapw("region",m)   = sum(w, dcapw(w,m));
    kw(m,"region",t)    = sum(w, kw(m,w,t));

    Display caput, k, dcapw, kw;

* comments on installed capacity:
*
* the installed capacity for urea at cartagena is assumed to be 500 mt/day.
* the construction of the plant however is not yet completed.
* the ss-tsp unit at moron can produce either tsp or ssp at 300 mt/day.
* the granulator at moron is designed to produce dap at 880 mt/day or
* npk at 920 mt/day. this particular unit can also be used to granulate
* powdered tsp from other units at 1400 mt/day.
* the ammonium sulfate prodution capacity at moron venzuela is assumed
* to be 390 mt/day for the periods 1987-89 and 1990-92.

$Stitle prices

 Parameter pv(c,t)    import prices cif (us$ per ton)
           pe(c,t)    export prices     (us$ per ton)
           pd(i,c)    domestic raw material prices (us$ per unit)
           pdlim(i,c) domestic raw material limits (1000 tpy) / potosi.phos-rock   35 /


 Table pv

              1981-83     1984-86     1987-89     1990-92

 el-sulfur      73.3        78.3        80.0        80.0
 phos-rock      57.4        60.3        61.3        61.3
 phos-acid     169.2       193.0       200.0       200.0
 ammonia       119.4       160.1       179.0       179.0
 urea          163.7       186.8       198.0       198.0
 amm-nitr      145.4       165.0       174.0       174.0
 amm-sulf      112.2       120.3       123.0       123.0
 ssp            92.2       101.2       104.2       104.2
 tsp           166.1       187.0       194.2       194.2
 pot-chlor      98.8       103.6       105.2       105.2
 dap           211.4       242.9       254.2       254.2
 c-20-18-10    172.01      191.01      199.01      199.01
 c-13-13-20    149.01      160.01      165.01      165.01
 c-15-21-10    165.01      183.01      190.01      190.01
 c-16-12-12    140.01      154.01      160.01      160.01
 c-08-24-12    154.01      170.01      176.01      176.01
 c-12-12-12    125.01      138.01      143.01      143.01
                                                           ;

  pe(ce,t) = .8*pv(ce,t) - 20*mux(ce);    Display pv, pe;


 Table  pd

              electr      nat-gas     fuel-oil  phos-rock

 palmasola                 1.02
 pto-suarez                1.02
 potosi                                            45.
 cartagena                 1.02
 barrancabr                1.02
 la-dorada                 1.02                    50.
 pt-bolivar                1.02
 callao-f                              39.00
 cuzco          2.00
 talara                    1.02
 callao-i
 bayovar                   1.02                   30.0
 moron                     1.02                   49.70
 pta-caiman                                       42.00
 caripito                  1.02
 tablazo                   1.02

 +            el-sulfur   sulf-acid   brine

 potosi                    10.0
 callao-f                  40.00
 callao-i                  40.00
 bayovar       40.00                  0.2
 moron         45.00
 pta-caiman    45.00


 Display pd,pdlim;

$Stitle investment data

 Sets  n  packages  / bol-1, bol-2, col-1, col-2, ecu-1, per-1, per-2, per-3, ven-1, ven-2 /

 Scalar      nnum      package exclusivity                                                  /  1    /
             npack     minimum number of packages in each country                           /  0    /
             dpack     difference in number of packages between countries                   / na    /
             gamma     package size multiplier for experiments with flexible package sizes  /  1    /

             rho       discount rate                                                        /   .1  /
             life      life of productive units (years)                                     / 15    /

 Parameter   ndef(n,i,m) package definitions    (tons per day)
             nupf(n)     fixed package cost         (1000 us$)
             hp(n,i,m)   effective package size     (1000 tpy): used to model fixed package sizes
             hb(m)       maximum plant size         (1000 tpy): used to model variable package sizes
             nu(m)       proportional investment (us$ per tpy)

             delta(t)    discount factor
             sigma       capital recovery factor


 Table invdat(m,*)  investment data

                fixed      prop        limit

*            (mill us$)  (us$/tpy)  (1000 tpy)

 amm-n-gas       84.7       185         550
 nitr-acid        5.0        43         200
 amm-nitr         5.4        36         200
 amm-sulf         4.7        48         300
 urea            29.4        93         550
 ssp             10.2        35         200
 tsp              9.5        47         400
 dap              8.6        63         300
 npk              8.6        63         800
 pot-chlor       10.2       153         150
 phos-acid       17.4       100         500
 sulf-acid      14.8         58         700



 Parameter  ndef    /

 bol-1.palmasola.amm-n-gas        160
 bol-1.palmasola.urea             250

 bol-2.potosi.tsp                 170
 bol-2.potosi.phos-acid           125

 col-1.la-dorada.amm-n-gas       1000
 col-1.la-dorada.urea            1600

 col-2.la-dorada.tsp              880
 col-2.la-dorada.phos-acid        650
 col-2.la-dorada.sulf-acid        980

 ecu-1.pt-bolivar.amm-n-gas       435
 ecu-1.pt-bolivar.urea            750

 per-1.bayovar.amm-n-gas          651
 per-1.bayovar.urea               870

 per-2.bayovar.sulf-acid         2000
 per-2.bayovar.phos-acid         1334
 per-2.bayovar.tsp               1076
 per-2.bayovar.dap                636

 per-3.bayovar.pot-chlor          303

 ven-1.pta-caiman.phos-acid       830
 ven-1.pta-caiman.sulf-acid      1245
 ven-1.pta-caiman.npk            2272
 ven-1.pta-caiman.tsp             242
 ven-1.pta-caiman.dap             561

 ven-2.caripito.amm-n-gas        1500
 ven-2.caripito.urea             1030  /;


  nupf(n)   = sum((i,m)$ndef(n,i,m), 1000*invdat(m,"fixed"));
  hp(n,i,m) = .33*ndef(n,i,m);
  hb(m)     = invdat(m,"limit");
  nu(m)     = invdat(m,"prop");


 Parameters  nup(n)     package cost               (1000 us$)
             pop(n)     fixed operating cost       (1000 us$)
             midyear(t) of each period;


  nup(n)    = sum((i,m)$ndef(n,i,m), 1000*invdat(m,"fixed") + .33*invdat(m,"prop")*ndef(n,i,m));
  pop(n)    = sum((i,m)$ndef(n,i,m), .33*opcost(m,"capacity")*ndef(n,i,m));

 sigma  = rho*(1+rho)**life/((1+rho)**life-1);

 midyear(t) = 1979 + 3*ord(t);
 delta(t)   = (1+rho)**(1981-midyear(t)) + (1+rho)**(1982-midyear(t)) + (1+rho)**(1983-midyear(t));

 Display nupf,hp,hb,nu,delta,rho,life,sigma,pop,nup,midyear;

$Stitle mappings and model reduction possibilities

 Set nmap(n,i)    map of packages to locations
     wn(w,n)      map of countries to packages
     cfv(cf)      imported final products other than compounds
     old(g)       old vintage plants                             / old /
     new(g)       new vintage plants                             / new /
     mc(c,i,j)    marketing possibilities;

 nmap(n,i)  = yes$sum(m, ndef(n,i,m));
 wn(w,n)    = yes$sum((m,i)$wi(w,i), ndef(n,i,m));
 cfv(cf)    = cv(cf) - co(cf);
 mc(cf,i,j) = yes;   mc(co,i,j)$(not cores(co,i,j)) = no;

 Display nmap,wn,cfv,mc;

 Scalar    tariffvi    tariff on imported intermediate goods             / .15 /
           tariffvf    tariff on imported final goods                    / .1  /

 Parameter ple(w,wp)    matrix for comparing package phasing in countries
           ts(t,tp)     time summation matrix
           lam(i)       maximum export capability of individual plants;

 ple(w,wp)$(ord(w) ne ord(wp))  = 1;
 ts(t,tp)$(ord(t) ge ord(tp))   = 1;
 lam(i) = .3; lam("tablazo") = .7;  lam("palmasola") = .7;

 Display ple,ts,lam;

** process/reduction possibilities: step 1: define all possibilities

 Sets  mpos(g,m,i)  unit possibility
       ppos(g,*,i)  process possibility
       cposm(c,i)   consumption possibility
       cposp(c,i)   production possibility
       hpos(m,i)    unit expansion possibility
       nfix(m,i)    fixed package expansions;


 mpos(g,m,i) = yes; ppos(g,p,i) = yes; cposm(c,i) = yes; cposp(c,i) = yes; hpos(m,i) = yes; nfix(m,i) = yes;

$Stitle capacity analysis

 Parameters ax(c,p,i)   reduced i-o matrix for nutrient potential
            kx(m,i)     effective capacity
            weight(cq)  nutrient weights / n = 100, p2o5 = 10, k2o = 1 /
            nutxx(c)    nutrient weight for products
            xrep(*,cq)  maximum nutrient shipments (1000 tpy)

 Sets       pposx(*,i)  plant possibilities
            cposxp(c,i) commodity output possibilities;


   ax(c,p,i) = a(c,p) ;  ax(c,p,i)$((a(c,p) lt 0) and (1$cv(c) or pd(i,c))) = 0 ;
   nutxx(cf) = sum(cq, weight(cq)*alpha(cf,cq));
   kx(m,i) = 1; pposx(p,i) = yes; cposxp(c,i) = yes;

 Display ax,nutxx;

 Variables   zx(p,i)  process level                   (1000 tpy)
             xx(c,i)  output of final products        (1000 tpy)
             nut      total nutrient value            (1000 tpy)

 Positive Variables zx, xx;

 Equations   mbx(c,i) material balance                (1000 tpy)
             ccx(m,i) capacity constraint             (1000 tpy)
             dnut     nutrient definition ;

 mbx(c,i)..   sum(p$pposx(p,i), ax(c,p,i)*zx(p,i)) =g= xx(c,i)$(cposxp(c,i)*cf(c));

 ccx(m,i)..  sum(p$pposx(p,i), b(m,p)*zx(p,i)) =l= kx(m,i);

 dnut..     nut =e= sum((c,i)$(cposxp(c,i)*cf(c)), nutxx(c)*xx(c,i)) - .1*sum((p,i)$pposx(p,i), zx(p,i));


 Model capcheck /mbx, ccx, dnut / ;




* define initial capacity values and reduction possibilities for period 1981-83

   kx(m,i)                                    = k(m,i,"1981-83");

   pposx(p,i)                                 = yes$(sum(m$(not kx(m,i)), b(m,p) ne 0) eq 0 ) ;
   pposx(co,i)$sum(w$wi(w,i), not wnpk(w,co)) = no ;
   cposxp(c,i)                                = yes$sum(p$pposx(p,i), ax(c,p,i) gt 0);

   Display "maximum nutrient output for n, p and k", "year 1981-83" ;

  Solve capcheck maximizing nut using lp;

*   define report of shipments for 1981-83 solution

   xrep(w,cq) = sum((cf,i)$wi(w,i), alpha(cf,cq)*xx.l(cf,i));
   xrep("region",cq) = sum(w, xrep(w,cq));
   Display xx.l, xrep;


* define initial capacity values and reduction possibilities for period 1990-92 without capacity expansion

   kx(m,i)                                    = k(m,i,"1990-92");

   pposx(p,i)                                 = yes$(sum(m$(not kx(m,i)), b(m,p) ne 0) eq 0 ) ;
   pposx(co,i)$sum(w$wi(w,i), not wnpk(w,co)) = no ;
   cposxp(c,i)                                = yes$sum(p$pposx(p,i), ax(c,p,i) gt 0);

   Display "maximum nutrient output for n, p and k", "year 1990-92 no capacity expansion" ;

   Solve capcheck maximizing nut using lp;

*   define report of shipments for 1990-92 solution without capacity expansion

   xrep(w,cq)        = sum((cf,i)$wi(w,i), alpha(cf,cq)*xx.l(cf,i));
   xrep("region",cq) = sum(w, xrep(w,cq));
   Display xx.l, xrep;


* define initial capacity values and reduction possibilities for period 1990-92 with all packages

   kx(m,i)                                    = k(m,i,"1990-92") + sum(n, hp(n,i,m));

   pposx(p,i)                                 = yes$(sum(m$(not kx(m,i)), b(m,p) ne 0) eq 0 ) ;
   pposx(co,i)$sum(w$wi(w,i), not wnpk(w,co)) = no ;
   cposxp(c,i)                                = yes$sum(p$pposx(p,i), ax(c,p,i) gt 0);

   Display "maximum nutrient output for n, p and k", "year 1990-92 and all packages" ;

 Solve capcheck maximizing nut using lp;

*   define report of shipments for 1990-92 solution with all packages

   xrep(w,cq)        = sum((cf,i)$wi(w,i), alpha(cf,cq)*xx.l(cf,i));
   xrep("region",cq) = sum(w, xrep(w,cq));

   Display xx.l, xrep;

$Stitle reduction and data analysis

*
* reduction procedure: step 2:
*
   mpos("old",m,i)  = yes$sum(t, k(m,i,t));
   mpos("new",m,i)  = yes$sum(n, ndef(n,i,m));
   ppos(g,p,i)      = yes$(sum(m$( not mpos(g,m,i)), b(m,p) ne 0) eq 0 ) ;
   ppos(g,co,i)$sum(w$wi(w,i), not wnpk(w,co)) = no;
   cposm(c,i) = yes$sum((g,p)$ppos(g,p,i), a(c,p) lt 0);
   cposp(c,i) = yes$sum((g,p)$ppos(g,p,i), a(c,p) gt 0);
   hpos(m,i)  = mpos("new",m,i);

   nfix(m,i)  = hpos(m,i);


* in the section below we analyse the transport cost for the cases where it is cheaper
* for one location to export a product and for another location to import the same product
* instead of simply intra-shipping between themselves.

 Parameter  eviip(i,ip,cis,t)  international trade advantage (us$ per ton)
            evij(i,j,cf,t)     international trade advantage (us$ per ton)
            reviip(i,ip,cis,t) international trade advantage - with reductions (us$ per ton)
            revij(i,j,cf,t)    international trade advantage - with reductions (us$ per ton);

 eviip(i,ip,cis,t)$(cv(cis)*ce(cis)) = max(0, mux(cis)*(mui(i,ip)-mur(ip)-mue(i)) - (tariffvi+1)*pv(cis,t) + pe(cis,t));
 evij(i,j,cf,t)$(cv(cf)*ce(cf))      = max(0, mux(cf)*(muf(i,j)-mufv(j)-mue(i)) - (tariffvf+1)*pv(cf,t) + pe(cf,t));

 Display eviip, evij;

 reviip(i,ip,cis,t) = eviip(i,ip,cis,t)$(cposp(cis,i)*cposm(cis,ip));
 revij(i,j,cf,t)    = evij(i,j,cf,t)$cposp(cf,i);

 Display reviip, revij;

$Stitle model definition

 Variables  z(g,p,i,t)     process level                              (1000 units per year)
            xf(c,i,j,t)    domestic shipment activity: final products            (1000 tpy)
            xi(c,i,ip,t)   domestic shipment activity: interplant                (1000 tpy)
            vf(cf,j,t)     imports: final products                               (1000 tpy)
            tvf(w,t)       value of imports: final products             (mill us$ per year)
            vi(c,i,t)      imports of: intermediates and raw materials           (1000 tpy)
            tvi(w,t)       value of imports: intermediates              (mill us$ per year)
            e(c,i,t)       exports                                               (1000 tpy)
            u(c,i,t)       domestic material purchases                           (1000 tpy)
            h(m,i,te)      capacity expansion                                    (1000 tpy)
            yp(n,te)       package decision variable                               (binary)
            yw(w,te)       package decision variable by country
            phik(w,t)      capital cost                                 (mill us$ per year)
            phip(w,t)      operating cost                               (mill us$ per year)
            phig(w,t)      domestic materials cost                      (mill us$ per year)
            phiw(w,t)      working capital cost                         (mill us$ per year)
            phim(w,t)      import cost                                  (mill us$ per year)
            phit(w,t)      tariffs                                      (mill us$ per year)
            phil(w,t)      transport cost                               (mill us$ per year)
            phie(w,t)      export revenue                               (mill us$ per year)
            phi(w,t)       cost per year                                (mill us$ per year)
            phitot         discounted total cost                      (mill us$ discounted)

 Positive Variables z, xf, vf, vi, e, u, h, xi
 Binary Variable yp;

 Equations  mbd(cq,j,t)    material balance on demand                            (1000 tpy)
            mba(j,t)       ammonium sulfate requirements                         (1000 tpy)
            mb(c,i,t)      material balance at plants                            (1000 tpy)
            ubnd(c,i,t)    bounds on local materials                             (1000 tpy)
            atvf(w,t)      definition of import value: finals products  (mill us$ per year)
            atvi(w,t)      definition of import value: intermediates    (mill us$ per year)
            elim(c,i,t)    export limits                                         (1000 tpy)
            cc(g,m,i,t)    capacity constraints                                  (1000 tpy)
            ccmin(i,t)     minimum npk utilization                               (1000 tpy)
            binv(m,i,te)   binary constraint: variable plant size                (1000 tpy)
            binf(m,i,te)   binary constraint: fixed plant size                   (1000 tpy)
            minpack(w)     minimum number of packages per country
            bw(w,te)       aggregation of packages in country
            gple(w,wp,te)  inter-country constraint on package - inequality
            ex(n)          package mutual exclusivity                               (units)
            acc(w,t)       accounting: capital cost                     (mill us$ per year)
            acp(w,t)       accounting: operating cost                   (mill us$ per year)
            acg(w,t)       accounting: domestic materials               (mill us$ per year)
            acw(w,t)       accounting: working capital                  (mill us$ per year)
            acm(w,t)       accounting: import cost                      (mill us$ per year)
            act(w,t)       accounting: tariffs                          (mill us$ per year)
            acl(w,t)       accounting: transport cost                   (mill us$ per year)
            ace(w,t)       accounting: export revenue                   (mill us$ per year)
            ac(w,t)        accounting: total annual undiscounted cost   (mill us$ per year)
            obj            accounting: total discounted cost                     (mill us$);

$Double

 mbd(cq,j,t)..
   sum(cf, alpha(cf,cq)*( sum(i$(mc(cf,i,j)*cposp(cf,i)), xf(cf,i,j,t)) + vf(cf,j,t)$cfv(cf) )) =g= d(j,cq,t) ;

 mba(j,t)..  sum(i$cposp("amm-sulf",i), xf("amm-sulf",i,j,t)) + vf("amm-sulf",j,t) =g= db(j,t) ;

 mb(c,i,t)..
   sum((g,p)$ppos(g,p,i), a(c,p)*z(g,p,i,t)) + ( vi(c,i,t)$cv(c) + u(c,i,t)$pd(i,c)
 + sum(ip$cposp(c,ip), xi(c,ip,i,t))$cis(c) )$cposm(c,i) =g= ( sum(ip$cposm(c,ip), xi(c,i,ip,t))$cis(c) + e(c,i,t)$ce(c)
 + sum(j$mc(c,i,j), xf(c,i,j,t)) )$cposp(c,i) ;

 ubnd(cr,i,t)$(cposm(cr,i)$pdlim(i,cr))..  u(cr,i,t) =l= pdlim(i,cr);

 elim(ce,i,t)$cposp(ce,i).. e(ce,i,t) =l= lam(i)*sum((g,p)$((a(ce,p) gt 0)$ppos(g,p,i)), a(ce,p)*z(g,p,i,t));

 cc(g,m,i,t)$mpos(g,m,i)..
   sum(p$ppos(g,p,i), b(m,p)*z(g,p,i,t)) =l= k(m,i,t)$old(g) + sum(te$ts(t,te), unew*h(m,i,te))$new(g) ;

 ccmin(i,t)$k("npk",i,t).. sum(p$ppos("old",p,i), b("npk",p)*z("old",p,i,t)) =g= umin(t)*k("npk",i,t);

 binv(m,i,te)$hpos(m,i)..  h(m,i,te) =l= gamma*sum(n$ndef(n,i,m), hb(m)*yp(n,te)) ;

 binf(m,i,te)$nfix(m,i)..  h(m,i,te) =e= sum(n$ndef(n,i,m), hp(n,i,m)*yp(n,te)) ;

 minpack(w)..  sum((n,te)$wn(w,n), yp(n,te)) =g= npack;

 bw(w,te)..    yw(w,te) =e= sum(n$wn(w,n), yp(n,te));

 gple(w,wp,te)$ple(w,wp)..  yw(w,te) - yw(wp,te) =l= dpack;

 ex(n)..  sum(te, yp(n,te)) =l= nnum ;

 acc(w,t)..
 phik(w,t) =e= sigma*sum(te$ts(t,te), sum((m,i)$(wi(w,i)*mpos("new",m,i)), nu(m)*h(m,i,te))
                                    + sum(n$wn(w,n), nupf(n)*yp(n,te)))/1000;

 acp(w,t)..
   phip(w,t) =e= sum(i$wi(w,i), sum((g,p)$ppos(g,p,i), oz(g,p,i)*z(g,p,i,t))
                              + sum((m,te)$(ts(t,te)$hpos(m,i)),ocap(m)*h(m,i,te)))/1000;

 acg(w,t)..   phig(w,t) =e= sum((cr,i)$(wi(w,i)*cposm(cr,i)$pd(i,cr)), pd(i,cr)*u(cr,i,t))/1000;

 acw(w,t)..
 phiw(w,t) =e= .025*( phip(w,t)+phig(w,t)+sum((cv,i)$(wi(w,i)*cposm(cv,i)), (pv(cv,t)+mux(cv)*mur(i))*vi(cv,i,t)))/1000;

 acm(w,t)..   phim(w,t) =e= tvi(w,t) + tvf(w,t);

 act(w,t)..   phit(w,t) =e= tariffvi*tvi(w,t) + tariffvf*tvf(w,t) ;

 atvf(w,t)..  tvf(w,t) =e= sum((cfv,j)$wj(w,j), pv(cfv,t)*vf(cfv,j,t))/1000;

 atvi(w,t)..  tvi(w,t) =e=  sum((cv,i)$(wi(w,i)$cposm(cv,i)), pv(cv,t)*vi(cv,i,t))/1000;

 acl(w,t)..
 phil(w,t) =e=
       ( sum((cf,j)$wj(w,j), sum(i$(mc(cf,i,j)*cposp(cf,i)), muf(i,j)*xf(cf,i,j,t)) + mufv(j)*vf(cf,j,t)$cfv(cf))
       + sum(i$wi(w,i), sum(ce$cposp(ce,i), mux(ce)*mue(i)*e(ce,i,t)) + sum(cv$cposm(cv,i), mux(cv)*mur(i)*vi(cv,i,t))
       + sum((cis,ip)$(cposm(cis,ip)*cposp(cis,i)), mux(cis)*mui(i,ip)*xi(cis,i,ip,t))) ) / 1000;

 ace(w,t)..  phie(w,t) =e= sum((ce,i)$(wi(w,i)*cposp(ce,i)), pe(ce,t)*e(ce,i,t))/1000;

 ac(w,t)..   phi(w,t) =e= phik(w,t) + phip(w,t) + phig(w,t) + phiw(w,t) + phim(w,t) + phil(w,t) - phie(w,t) ;

 obj..       phitot =e= sum((w,t), delta(t)*phi(w,t));


$Single

 Model andean1  / mbd, mba, mb, ubnd, atvf, atvi, elim, cc, ccmin, binv, binf, minpack, bw, gple, ex
                  acc, acp, acg, acw, acm, act, acl, ace, ac, obj / ;

 dpack = 1;

 Solve andean1 minimizing phitot using mip;

$Stitle report

 Set label / capital, oper+w-cap, material, intra, imports, transport, total-cost, exports, net-cost, balance /

     lab1(label) / capital, oper+w-cap, material, imports, transport /

     wim         / bolivia, colombia, ecuador, peru, venezuela, extra /

     cap         / ecap, slack, utilize /

 Alias (wim,wex);


 Parameters  flowf     final product flow                             (1000 tpy)
             flowi     intermediate and raw material flow             (1000 tpy)
             cifcif    value flows - valued at import prices (mill us$ per year)
             tradecost trade flow advantage at fob cost      (mill us$ per year)
             arep      capacity reporting: by plant                   (1000 tpy)
             brep      capacity reporting: by country                 (1000 tpy)

             aut       capacity utilization by plant and unit
             but       capacity utilization by unit
             cut       capacity utilization by plant
             dut       capacity utilization by country
             regcost   regional cost components              (mill us$ per year)
             regtrade  regional trade                        (mill us$ per year)
             regbal    regional trade balance                (mill us$ per year)
             phicr     total undiscounted cost with corrected regional trade at cifcif;


* compute values of the various product flows:

  flowf(w,wp,cf,t)         = sum((i,j)$(wi(w,i)*wj(wp,j)), xf.l(cf,i,j,t));
  flowf("extra",wp,cf,t)   = sum(j$wj(wp,j), vf.l(cf,j,t));
  flowf(w,"extra",cf,t)    = sum(i$wi(w,i), e.l(cf,i,t));
  flowf(wim,wex,"final",t) = sum(cf, flowf(wim,wex,cf,t));

  flowi(w,wp,cis,t)         = sum((i,ip)$(wi(w,i)*wi(wp,ip)), xi.l(cis,i,ip,t));
  flowi("extra",wp,cv,t)    = sum(ip$wi(wp,ip), vi.l(cv,ip,t));
  flowi(w,"extra",ce,t)$(not cf(ce)) = sum(i$wi(w,i), e.l(ce,i,t));
  flowi(wim,wex,"interm",t) = sum(c, flowi(wim,wex,c,t));

* convert the flow values above to cifcif prices by using import prices.  and then compute the
* the intra-regional trade and net of intra-regional and extra-regional.

  cifcif(wim,wex,t) = sum(c, pv(c,t)*(flowf(wim,wex,c,t) + flowi(wim,wex,c,t)))/1000;
  cifcif("intra",w,t) = sum(wp$(ord(w) ne ord(wp)), cifcif(wp,w,t));
  cifcif(w,"intra",t) = sum(wp$(ord(w) ne ord(wp)), cifcif(w,wp,t));
  cifcif(w,"total",t) = cifcif(w,"intra",t) + cifcif(w,"extra",t);
  cifcif("total",w,t) = cifcif("extra",w,t) + cifcif("intra",w,t);
  cifcif(w,"balance",t) = cifcif(w,"total",t) - cifcif("total",w,t);

*Display flowf,flowi,cifcif;

* compute individual country and regional trade flows at fob cost.

  tradecost(wex,"extra-imp",t) = cifcif("extra",wex,t);
  tradecost(wex,"intra-imp",t) = cifcif("intra",wex,t);
  tradecost(wex,"total-imp",t) = tradecost(wex,"extra-imp",t) + tradecost(wex,"intra-imp",t);
  tradecost(wex,"extra-exp",t) = sum(c, pe(c,t)*(flowf(wex,"extra",c,t) + flowi(wex,"extra",c,t)))/1000;
  tradecost(wex,"intra-exp",t) = cifcif(wex,"intra",t);
  tradecost(wex,"total-exp",t) = tradecost(wex,"extra-exp",t) + tradecost(wex,"intra-exp",t);
  tradecost(wex,"balance",t)   = tradecost(wex,"total-exp",t) - tradecost(wex,"total-imp",t) ;
*Display tradecost;

* compute the effective total capacities, slack and utilization rates.

 arep(i,m,t,"ecap")     = k(m,i,t) + sum(te$ts(t,te), unew*h.l(m,i,te));
 arep(i,m,t,"slack")    = sum(g, cc.up(g,m,i,t) - cc.l(g,m,i,t));
 arep(i,m,t,"utilize")$(arep(i,m,t,"ecap") ne 0) = (arep(i,m,t,"ecap")-arep(i,m,t,"slack"))/arep(i,m,t,"ecap");
 arep(i,"total",t,cap)  = sum(m, arep(i,m,t,cap));
 arep("total",m,t,cap)  = sum(i, arep(i,m,t,cap));

 arep(i,"total",t,"utilize")$(arep(i,"total",t,"ecap") ne 0) = (arep(i,"total",t,"ecap")-arep(i,"total",t,"slack"))/
                                                                 arep(i,"total",t,"ecap");
 arep("total",m,t,"utilize")$(arep("total",m,t,"ecap") ne 0) = (arep("total",m,t,"ecap")-arep("total",m,t,"slack"))/
                                                                arep("total",m,t,"ecap");


 brep(w,m,t,cap) = sum(i$wi(w,i), arep(i,m,t,cap));
 brep(w,m,t,"utilize")$(brep(w,m,t,"ecap") ne 0) = (brep(w,m,t,"ecap")-brep(w,m,t,"slack"))/
                                                    brep(w,m,t,"ecap");
 brep("total",m,t,cap) = arep("total",m,t,cap);
 brep(w,"total",t,cap) = sum(m, brep(w,m,t,cap));
 brep(w,"total",t,"utilize")$(brep(w,"total",t,"ecap") ne 0) = (brep(w,"total",t,"ecap")-brep(w,"total",t,"slack"))/
                                                                 brep(w,"total",t,"ecap");


* report just the utilization rates at various aggregation levels

  aut(i,m,t)       = arep(i,m,t,"utilize");
  aut(i,"total",t) = arep(i,"total",t,"utilize");
  aut("total",m,t) = arep("total",m,t,"utilize");

  but(m,t) = aut("total",m,t);
  cut(i,t) = aut(i,"total",t);

  dut(w,t) = brep(w,"total",t,"utilize");


 regcost("capital",t)    = sum(w, phik.l(w,t));
 regcost("oper+w-cap",t) = sum(w, phip.l(w,t) + phiw.l(w,t));
 regcost("material",t)   = sum(w, phig.l(w,t));
 regcost("imports",t)    = sum(w, phim.l(w,t));
 regcost("transport",t)  = sum(w, phil.l(w,t));
 regcost("total-cost",t) = sum(lab1, regcost(lab1,t));
 regcost("exports",t)    = sum(w, phie.l(w,t));
 regcost("net-cost",t)   = regcost("total-cost",t) - regcost("exports",t);

 regcost(label,"all-years") = 3*sum(t, regcost(label,t));

 regtrade("intra",t)   = sum(w,  cifcif(w,"intra",t));
 regtrade("imports",t) = regcost("imports",t);
 regtrade("exports",t) = regcost("exports",t);
 regtrade("balance",t) = regtrade("imports",t) - regtrade("exports",t);
 regtrade(label,"all-years") = 3*sum(t, regtrade(label,t));


 regbal(w,"reg-export",t) = cifcif(w,"intra",t);
 regbal(w,"reg-import",t) = cifcif("intra",w,t);
 regbal(w,"reg-bal",t)    = regbal(w,"reg-export",t) - regbal(w,"reg-import",t);

 phicr(w,t) = phi.l(w,t) - regbal(w,"reg-bal",t);
 Display phi.l,phicr,regbal;
 Display phitot.l,phip.l,phig.l,phiw.l,phim.l,phit.l,phil.l,phie.l,phi.l;
 Display regcost,regtrade,dut,cut,but,cifcif,tradecost,flowf,flowi,arep,brep,aut;
 Display vf.l,vi.l,u.l,e.l,tvf.l,tvi.l,yp.l,h.l;


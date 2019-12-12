option NLP=convert;
option NLP=convert;
option NLP=convert;
$title South African Regionalized Farm-level Resource Use & Output Supply Response (SARAS) model (SARAS,SEQ=383)

$ontext
South African Regionalized Farm-level Resource Use & Output Supply Response
(SARAS) model. A static comparative PMP models is developed for SARAS and used
to study the impact of changes in SA agricultural policies, land reform, market
environment, etc. to optimize crop acreage and animal breeding stock

Contributed by Dr. Femi Olubode-Awosola
email: olucube@yahoo.co.uk

PMP cost based calibration approach by (Howitt, 1995a, 1995b & 2002, Paris, 1988,
Heckelei and Britz, 2000; Heckelei 2002) was used to calibrate the model


Reference:

Olubode-Awosola, O O, van Schalkwyk H D, and Jooste, A, Mathematical
modeling of the South African land redistribution for development policy. 
Journal of Policy Modeling 30, 5 (2008), 841-855.

Olubode-Awosola, O O, Farm-Level Resource Use and Output Supply
Response: A Free State Case Study. PhD thesis, University of the Free State, 
South Africa, 2006.
http://etd.uovs.ac.za/ETD-db//theses/available/etd-09062007-074209/unrestricted/OlubodeAOO.pdf

OUTLINE
1. Set definitions
          Regions
          Farm types
          Production technology
          Production activities
           cropping activities
           livestock activities
          Farm resources
          Years
2. Historical time series data for price
3. Base year data
4. Parameters declarations

-------------------------------------------------------------------------------
Assumptions:
   Producers' behaviour
1. maximisation of expected utility
 which is a function of expected profitability and farmer's averstion to risk
 (Henderson and Quandts, 1980; Tomek and Robinson, 1990)
2. REVENUE (YIELD RISK AND PRICE RISK) RISK CONSCIOUS

   Given technology of production
   Technology and production possibility differences at farm levels in each region
4. 2 technologies - irrigation and dryland croppings
5. at least 2 farm types - established and emerging farm types

   Available fixed inputs
6. Land availability - arable land; grass land; irrigable land

    Market environments (base scinario)
7.  competitive industry (i.e producers are price taker ie each farm's MR =  prevailing market price)
    Supply elastic for outputs (mkt deregulations) and
    A farm decides to produce the following crops
8.  Demand elastic for farmland/farm resources: willing-buyers-willing-sellers
9.  Fixed demand
    fixed prices for all factors of production

   Policy environments
10. Risky output prices
11. Increasing Number of emmerging farms : 30% land transfer
12. Variation in Land price (DAVC)
13. Variation in Labour wages (Component of DAVC)
14. Variation in Land tax (component of DAVC)
15. Variation in irrigation charge (component of DAVC)
16. Variaton in (tarrif, import/export duties, quotas)
    (componet of regional demand-supply & import-export balances)

   Calibration
17. The PMP function is calculated on increasing cost function of
    area grown to crop and constant yield.

Application:
1.  Forecasts and policy analysis
    - to know the effect of a price change on aggregate output and supply offered by each farm type
$offtext

*===============================================================================
*         A.        SETS DEFINITION
*===============================================================================
$ontext
 SET DEFINITIONS
 In this section, the sets of the model are declared. the model contains 9 regions,
 each regions has 2 farm types, each farm types could engage in 2 types of production
 technologies, and each technology could be used to produce a vector of production
 activities with farm resources constraints both at region and farm-type levels.
 The land resources are contrained and classified.
$offtext

SETS
*      ---- South African provinces
          r Regions
                    /
*                       WCape   "Western Cape"
*                       NCape   "Northern Cape"
                       FState  "Free State"
*                       ECape   "Eastern Cape"
*                       KNatal  "Kwazulu Natal"
*                       Mpum    "Mpumalanga"
*                       Limp    "Northern Province"
*                       Gaut    "Gauteng"
*                       NWest   "North-West"
                                                  /
          f Farm types
                    /  f1   'established farm'
                       f2   'developing  farm' /

          t production technologies
                    /  dry     'Rain fed'
                       irrig   'irrigated' /

*     A representive farm type decides to engage in the following production activities
          p Revenue generating activities
                    /
*  --- grains
                       Wmaize   "White maize"
                       YMaize   "Yellow maize"
                       Wheat    "Wheat"
                       Soya     'Soya beans'
                       Sorghum  "Sorghum"
                       Sunflower 'Sun flower'
* --- animals
                       Beef_Cattle       'Beef'
                       mutton_Sheep      'Mutton'
                       Pork_Pig          'Pork'
                       Broilers_chicken  'Broilers chicken'
                       Layers_eggs       'Layer eggs'
                       Dairy_cattle      'Fresh milk'
                                                                      /

          cp(p) croping activities and primary products
*  --- grains
                 /     Wmaize   'White maize'
                       YMaize   'Yellow maize'
                       Wheat    'Wheat'
                       Soya     'Soya beans'
                       Sorghum  'Sorghum'
                       Sunflower 'Sun flower'
                                                                      /

          ap(p) Livestock activities
                  /    Beef_Cattle       'Beef'
                       mutton_Sheep      'Mutton'
                       Pork_Pig          'Pork'
                       Broilers_chicken  'Broilers chicken'
                       Layers_eggs       'Layer eggs'
                       Dairy_cattle      'Fresh milk' /

          res inputs in the long-run such that all costs are variable
                    / land        'land'
                      aland       'arable land'
                      dryland     'dry land'
                      irrigland   'irrigable land'
                      gland       'grazing land'
                      housing     'housing'
                      capital     'capital investiment'
                      seed        'seed'
                      fert        'fertilizer'
                      herbi       'hericide'
                      pesti       'pesticide'
                      iwater      'irrigation water'
                      labour      'casual labour'
                      harvest_cont 'harvest contract'
                      spray_cont   'sprayer contract'
                      insu         'insurance'
                      chicks_ani   'breeding stock replacement'
                      feed         'feed'
                      VacVit       'vacination and vitamins'
                      sani         'sanitation'
                      elect        'electricity'
                      fuel         'fuel'
                      trays        'trays'
                      gest_exam    'gestimation and examination'
                      shearing     'shearing'
                      pasture      'pature'
                      bedmat       'bedding materials'
                      trans        'transportation'
                      govt_levy    'government levy'
                                                             /
          rentable(res)   rentable property
                    / dryland      'dry land'
                      irrigland    'irrigable land'
                      gland        'grazing land'         /

*$ontext
          fix(res)   fixed inputs in the short-run
                    / land         'land'
                      aland        'arable land'
                      dryland      'dry land'
                      irrigland    'irrigable land'
                      gland        'grazing land'
                      iwater      'irrigation water'                /


          ar(res) arable land
                    / dryland 'dryland'
                      irrigland "irrigable land"          /

          g(res) grass land
                    / gland "grazing land" /

*          cy cycle per year

          yr years /1994*2015/

          count sim /1*2/

          ot(yr) obeserved years for output prices /1994*2004/
          it(yr) observed years for input prices  /2000*2004/
          bt base year
          ft future years
          pt pivot years;
          bt(yr) = yes$(ord(yr) eq card(ot));
          pt(yr) = yes$(ord(yr) eq card(ot)+1);
*          bt(t) = Yes$(Ord(t) eq 1);
          ft(yr) =yes$(ord(yr) gt card(ot));
*         ft(t) future years /2005*2020/

option decimals = 4;

display bt,pt,ft;
alias (p,p1,p2,P3), (ap,ap1), (cp,cp1), (r,r1,r2), (t,tt,ttt,tttt), (f,ff,fff), (yr, yrs),
       (ot,ot1,ot2,ot3), (ft, ft1), (res, res1, res2, res3);
*===============================================================================

*===============================================================================
*         B.        COMMON TIME SERIES DATA
*===============================================================================
* 2. RAW TIME SERIES
Table RCY(r,p,yr) regional crop yield (ton per ha)
                                1994   1995   1996   1997   1998   1999   2000   2001   2002   2003  2004
       FState.wmaize            1.56   3.05   2.95   2.59   2.67   3.39   2.80   3.00   3.12   3.11  3.80
       FState.ymaize            1.16   2.49   2.80   2.26   2.61   3.10   2.70   3.05   2.65   3.00  3.70
       FState.wheat             1.76   1.45   2.10   1.76   2.54   2.41   2.60   2.57   2.59   2.07  2.03
       FState.soya              1.09   1.47   1.71   1.42   1.27   1.66   1.37   1.36   1.15   1.35  1.45
       FState.Sorghum           1.63   2.51   2.13   1.79   1.32   2.55   1.75   2.50   2.20   2.57  2.60
       FState.Sunflower         0.94   1.29   1.01   1.13   1.46   1.46   1.30   1.45   1.14   1.30  1.35

Table CTfactor(r,f,t,p) The multiplier to get technology effect from the regional yield and GM
* from COMBUD enterprise budgets and discussion with extension Officers on typical production activities
                      Wmaize    YMaize    Wheat   Soya      Sorghum   sunflower
    FState.f1.dry     1.1       1.14      1.0     1.5       1.5       1.000
    FState.f1.irrig   2.4       2.54      2.3     3.0       3.0       2.300
    FState.f2.dry     0.89      1.00      0.8
    FState.f2.irrig   2.2       2.30      1.9

Table LTfactor(r,f,p) The multiplier to get farm type effect from the regional off-take rate
* from COMBUD enterprise budgets and discussion with extension Officers on typical production activities
                Beef_cattle   mutton_sheep   pork_pig   broilers_chicken  Layers_eggs  Dairy_cattle
    FState.f1   3.            4.05           12         1.2               1.2          1.2
    FState.f2   1.5           2              10.5       1                 1            .95

Table RLO(r,p,yr) regional livestock offtake rate (% number and litre)
* what is the average mortality rate over these years?
* what is the average mortality/fertility rate over these years?
* what is milk distribution loss rate (assumed as 0.1 (10 percent))
* what is egg brakage/distribution loss rate (assumed as 0.1 (10 percent))
                                1994    1995    1996    1997    1998    1999    2000    2001    2002    2003    2004
       FState.beef_cattle       0.17    0.17    0.16    0.16    0.16    0.20    0.17    0.19    0.19    0.19    0.20
       FState.mutton_sheep      0.20    0.23    0.22    0.22    0.24    0.25    0.25    0.26    0.27    0.27    0.28
       FState.pork_pig          1.64    1.68    1.69    1.69    1.63    1.60    1.68    1.62    1.66    1.67    1.60
       FState.broilers_chicken  0.923   0.845   0.902   0.902   0.898   0.921   0.936   0.943   0.945   0.945   0.939
       FState.layers_eggs       222     203     216     216     216     221     225     226     227     227     225
       FState.dairy_cattle      5363.17 5467.16 5308.74 5642.11 5710.14 5655.72 5657.00 5746.00 5668.35 5861.76 5608.02

* live weight at sales, carcass weighter (dressing %) from the regional off-take
* from COMBUD enterprise budgets and discussion with extension Officers on typical production activities
*dairy and eggs are counted in litres and unit respectively hence the weight of 1 for each
Table Liveweit(r,p) Live weight at sales(ton number and number)
                          Beef_cattle   mutton_sheep   pork_pig   broilers_chicken    Layers_eggs  Dairy_cattle
          FState          0.393         0.047          0.0668     0.00191             1            1

* carcase weight at arbattoir
* from COMBUD enterprise budgets and discussion with extension Officers on typical production activities
Table Carcass(r,p) Live weight at sales(ton number and number)
                          Beef_cattle   mutton_sheep   pork_pig   broilers_chicken    Layers_eggs  Dairy_cattle
          FState          0.227         0.023          0.0307     0.00132             1            1

* price difference at regions?
Table Price(r,p,yr) producer prices data for primary products (R per unit - ton numer and litre)
* feedlot prices
                                 1994    1995    1996    1997    1998    1999    2000    2001     2002    2003      2004
       FState.wmaize             868.04  1145.13 1293.44 1273.57 1110.67 1199.37 1053.48 1368.11  2205.52 1374.31   1430.05
       FState.ymaize             863.97  863.08  1057.3  983.24  931.56  1093.52 977.81  1357.29  1849.1  1374.37   1465.46
       FState.wheat              1121.44 1211.4  1361.07 1197.69 1219.93 1427.44 1569.5  1738.67  2189.52 1846.53   1938.97
       FState.soya               1235.58 1715.24 2021.99 1613.88 1761.74 1885.83 1828.43 2189.42  2587.68 2274.05   2214.83
       FState.Sorghum            2090    1205.95 1364.83 1412.4  1711.1  1222.76 1451.24 1785.86  2087.88 1783.63   1846.03
       FState.Sunflower          1680    1570    1703.74 2064.17 1957.8  1615.7  1992.78 2938.04  2677.72 2526.88   2243.1
       FState.beef_cattle        13130   13120   13440   13730   13660   12850   13830   13100    12920   13360     13460
       FState.mutton_sheep       15210   15030   15880   15900   15710   16770   17360   17580    18660   19380     19700
       FState.pork_pig           11380   11020   11420   11860   11760   11960   11400   11520    13570   12840     13040
       FState.broilers_chicken   11580   12390   12421   11547   12198   13145   13892   14915    15846   14915     15846
       FState.layers_eggs        0.40    0.37    0.41    0.42    0.40    0.40    0.43    0.47     0.54    0.57      0.58
       FState.dairy_cattle       0.98    1.02    1.14    1.40    1.28    1.26    1.43    1.58     1.89    2.17      2.05

Table byprod(r,p) average revenue from by product (R per enterprise unit)
           Wmaize        YMaize        Wheat      Soya              Sorghum       sunflower
  FState
+
           Beef_cattle   mutton_sheep  pork_pig   broilers_chicken  layers_eggs   dairy_cattle
  FState   239.04        65.01333333   928.2      0.84              16            1803

*--------------------------------------------------------------------------------------------
*$ONTEXT
*adjutint the historical unit prices to to 2004 $ to have constant year $
Table OPPI(r,p,yr) producer price index outputs
                                1994   1995   1996   1997   1998   1999   2000   2001   2002    2003    2004
       FState.wmaize            100.0  102.55 99.80  96.07  106.68 98.23  129.08 201.38 179.96  145.09  103.63
       FState.ymaize            100.0  102.55 99.80  96.07  106.68 98.23  129.08 201.38 179.96  145.09  103.63
       FState.wheat             100.0  104.35 120.42 108.30 106.98 120.55 145.32 179.84 203.29  193.94  144.53
       FState.soya              100.0  128.87 149.45 117.68 129.28 138.12 133.56 216.02 267.27  229.42  124.31
       FState.Sorghum           100.0  98.49  107.87 114.02 151.46 107.87 157.71 311.22 300.76  160.41  112.73
       FState.Sunflower         100.0  88.80  102.33 139.12 128.29 93.37  131.84 228.20 201.68  186.27  157.33
       FState.beef_cattle       100.0  101.14 107.63 111.62 105.81 108.43 113.90 119.82 157.74  168.45  186.56
       FState.mutton_sheep      100.0  100.39 105.59 117.04 112.22 112.87 130.04 132.90 156.57  176.46  189.08
       FState.pork_pig          100.0  93.44  95.86  123.40 123.40 119.54 142.65 147.79 191.16  180.17  179.60
       FState.broilers_chicken  100.0  102.79 106.74 119.51 119.86 111.15 116.14 132.17 154.47  162.72  162.60
       FState.layers_eggs       100.0  102.79 106.74 119.51 119.86 111.15 116.14 132.17 154.47  162.72  162.60
       FState.dairy_cattle      100.0  109.64 119.44 153.65 144.48 136.86 155.52 207.47 211.51  240.12  231.42

*$ontext
Table  IPPI(r,yr) Price indices of farming requisites
                1994   1995   1996   1997   1998   1999   2000   2001   2002    2003    2004
      FState    100.0  108.86 123.10 134.49 137.18 143.99 158.23 180.70 216.61  229.43  236.39

*-------------------------------------------------------------------------------
*$offtext
*===============================================================================
*         C.             BASE YEAR DATA 2004/2005
*================================================================================

*         1.        POLICY RELEVANT VARIABLES
*-------------------------------------------------------------------------------
Table  policy_var(r,*) policy-relevant general costs or supports
* a vector of rental rates on crop land or production resources that affect crop supply and acreage
* incorporate if there is a condition or level of production at which benefit or penalty applies
*Table policy_var(r,res) annual water quota in litre per ha
            l_tax  w_tariff  w_quota  l_price  p_sup  fees  dryrent  irrigrent grent interest  d_rebate  d_per
    FState  0      0         9023.50  1119     0      0     130      1000      80    0.1325    0.70      .80

*-------------------------------------------------------------------------------
*         2.        RESOURCE AVAILABILITY
*-------------------------------------------------------------------------------
*DATA SOURCE: - Provincial and national DLA
*             - Consultation with Private and public consultants service providers

Table RLC(r,res) Regional farmland constraints
                 labour     land        aland     dryland    irrigland   gland     iwater
*    WCape        281157600  11560609   2454788   2173252    281536      9105821   1906350640
*    NCape        175372800  29543832   454465    292591     161874      29089367  1954975429.79
    FState       149164800  11885402.49 4272833.1 4171965.04 100868.06   7612572.7 2602933358.00
*    ECape        80409600   14817723  1172901  1017971   154930      13644822 1272947408.29
*    KNatal       90108000   6529315   1199675  1029431   170244      5329649  1249204046.46
*    Mpum         124240800  4978827   1734896  1577476   157420      3243931  1216069500.00
*    Limp         72338400   10548290  1700442  1565296   135146      8847848  1095068725.64
*    Gaut         21729600   828623    438623   411939    26684       390000   187738113.17
*    NWest        108144000  10098473  3360459  3257141   103318      6738014  735286392.79

Table FLC(r,f,res) Farmtype farmland contraints (farm type typical farm resources)
                 land          aland     dryland   irrigland   gland   iwater       capital
*    WCape.f1    1601.95       352.43    234.37    118.06      1249.52 274433.96
*    WCape.f2    568.66        120.56    80.17     40.39       448.11  273466.69
*    NCape.f1    4812.71       72.19     46.49     25.70       4740.52 310381.00
*    NCape.f2    1486.58       22.30     14.36     7.94        1464.26 95870.93
    FState.f1    1370.30       496.05    484.64    11.41       874.25  305381.29    904999
    FState.f2    394.69        82.89     75.76     7.13        311.81  37984.54     45500
*    ECape.f1    3360.11       198.25    172.08    26.17       3161.86 215231.82
*    ECape.f2    434.65        34.34     29.81     4.53        400.32  37240.74
*    KNatal.f1   1570.31       383.16    328.75    54.41       1187.15 399231.82
*    KNatal.f2   1471.90       270.83    232.37    38.46       1201.07 282192.65
*    Mpum.f1     953.12        339.31    308.43    30.88       613.81  238527.79
*    Mpum.f2     663.29        230.82    209.82    21.00       432.46  162263.44
*    Limp.f1     3586.01       588.11    541.65    46.46       2997.91 376461.71
*    Limp.f2     655.63        105.56    97.22     8.34        550.07  67569.21
*    Gaut.f1     372.07        196.83    184.82    12.01       175.25  84472.18
*    Gaut.f2     79.93         42.28     39.70     2.58        37.65   18145.83
*    NWest.f1    1876.57       666.18    645.53    20.65       1210.39 146972.47
*    NWest.f2    541.84        180.43    174.84    5.59        361.40  39806.54
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
*         3.        RESOURCE REQUIREMENT
*-------------------------------------------------------------------------------
*DATA SOURCE: - Combud Enterprise budgets
*             - Consultation with PDA
*             - Consultation with EA
*             - Consultation with Private and public consultants service providers
Table CRES(r,t,p,res) resource use per cropping enterprise activity  unit (per ha per 500 birds per 100 cows)
                           land   aland  dryland   irrigland  spray_cont  insu   fuel
    FState.dry.ymaize      1      1      1                    1           1
    FState.irrig.ymaize    1      1                1          1           18.45  55.12
    FState.dry.wmaize      1      1      1                    1           1
    FState.irrig.wmaize    1      1                1          1           18.45  55.12
    FState.dry.wheat       1      1      1                    1           1
    FState.irrig.wheat     1      1                1          1           1      25.99
    FState.dry.soya        1      1      1                    1           1
    FState.irrig.soya      1      1                1          1           1      25.99
    FState.dry.sorghum     1      1      1                    1           1
    FState.irrig.sorghum   1      1                1          1           1.5    25.99
    FState.dry.sunflower   1      1      1                                1
    FState.irrig.sunflower 1      1                1                      1.5    25.99
+
                           seed   fert   herbi pesti  iwater  labour  harvest_cont
    FState.dry.ymaize      1      1      1     1              48.86   1
    FState.irrig.ymaize    1      5.1    2.21  1      6391.5  119.88  7.5
    FState.dry.wmaize      1      1      1     1              48.86   1
    FState.irrig.wmaize    1      5.1    2.21  1      6391.5  119.88  7.5
    FState.dry.wheat       1      1      1     1              30      0.5
    FState.irrig.wheat     1.44   2.00   1     1      6600    156.39  1.
    FState.dry.soya        1      1      1     1              15      .5
    FState.irrig.soya      1.6    1.1    1.434 1      5000    45.0    1.00
    FState.dry.sorghum     1      1      1     1              20      .5
    FState.irrig.sorghum   2.8    3.5    1     1      4500    60      1
    FState.dry.sunflower   5.5    1      1     1              57.21   1
    FState.irrig.sunflower 6.7    2.83   3.81  3.81   6111    123.08  1.1

*not all animals are kept on grazzing land

Table LRES(r,p,res) resource resource use per livestock enterprise activity (unit per fixed livestock unit)
                            land  gland  labour   chicks_ani   feed   VacVit  sani    elect  fuel   housing
   FState.beef_cattle       .75   .75             1            1      1
   FState.mutton_sheep      .5    .5              1            1      1
   FState.pork_pig                                1            1      1                             1
   FState.broilers_chicken                        1            1      1       1       1      1      1
   FState.layers_eggs                             1            1      1       1       1      1      1
   FState.Dairy_cattle      .25    .25            1            1      1
+
                            trays    shearing      bedmat  insu   trans
   FState.beef_cattle                                             1
   FState.mutton_sheep               1                            1
   FState.pork_pig                                                1
   FState.broilers_chicken                         1              1
   FState.layers_eggs       1                                     1
   FState.Dairy_cattle                                            1
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
*         4.        RESOURCE COST
*-------------------------------------------------------------------------------
* direct allocatable variable cost (transportation cost is not considered)
* adjust each cost component for infation using base yr inflator/deflator
*???????????????? convert the unit cost of water to R per litre  ????????????????????????
Table cost(r,p,res) cost per unit of variable inputs used
                           seed   fert     herbi   pesti  iwater  labour  harvest_cont   spray_cont  insu       trans
  FState.ymaize            220.42 439.71   132.554 47     .1293   3.125   60             75          25.365
  FState.wmaize            220.42 439.71   132.554 47     .1293   3.125   60             75          25.365
  Fstate.wheat             264    428      372.78  346.86 .1293   3.125   350            150         386.1
  FState.soya              297    373.66   223     159    .1293   3.125   360            173         200
  FState.Sorghum           48.3   578      64.5    19     .1293   3.125   175            19          100
  FState.Sunflower         23.37  445.34   147.84  53.46  .1293   3.125   76.5           0           54.24
  FState.beef_cattle                                                                                            126.27
  FState.mutton_sheep                                                                                           32.05
  FState.pork_pig                                                                                               221.4
  FState.broilers_chicken                                                                                       0.5
  FState.Layers_eggs                                                                                            0.19
  FState.Dairy_cattle                                                                                           262
+
                          chicks_ani   feed     VacVit    sani   elect  fuel    trays   shearing  bedmat
  FState.ymaize                                                         3.99
  FState.wmaize                                                         3.99
  Fstate.wheat                                                          3.99
  FState.soya                                                           3.99
  FState.Sorghum                                                        3.99
  FState.Sunflower                                                      3.99
  FState.beef_cattle      146.09       416.98   105.40
  FState.mutton_sheep     19.65        51.5     44.18                                   6.5
  FState.pork_pig         40           8342.2   23.00
  FState.broilers_chicken 2.62         9.32     0.11      0.15   0.25                             0.115
  FState.Layers_eggs      24.5         62.286   0.12      0.092  0.5            2.85
  FState.Dairy_cattle     146.09       5298.56  639.73

* opportunity cost of arable land, irrigable land and grazing land
+                            dryland      irrigland    gland    housing
  FState.ymaize              130          1000
  FState.wmaize              130          1000
  Fstate.wheat               130          1000
  FState.soya                130          1000
  FState.Sorghum             130          1000
  FState.Sunflower           130          1000
  FState.beef_cattle                                    80
  FState.mutton_sheep                                   80
  FState.pork_pig                                               1000
  FState.broilers_chicken                                       1.2
  FState.Layers_eggs                                            2
  FState.Dairy_cattle                                   80

*-----------------------------------------------------------------------------


*-------------------------------------------------------------------------------
*         5.                  ACTIVITY LEVELS
$Stitle base level activities
*-------------------------------------------------------------------------------

*DATA SOURCE: - Combud Enterprise budgets
*             - Consultation with PDA
*             - Consultation with EA
*             - Consulation with Coop and Farmers unions
*             - Consultation with Private and public consultants service providers

*Base activities levels - Year?
* NOTE there are possible scinarios based on winter and summer crops with regard to land constraints and water constraitns
* for example having 10 ha of arable land and 1000l/ha water entitlement. The following scinarios are possible:
* on annual basis:
* 1. 10 ha of winter maize only
* 2. 10h of summer wheat (constraints: 20ha of land availability (10h to maize
*    & 10h to wheat) but stictly 10,000l of irrigation water)
* 3. 10 ha of winter maize and 10h of summer wheat (constraints: 20ha of land
*       availability (10h to maize & 10h to wheat) but stictly 10,000l of irrigation water)
* the bottom line: there's no double cropping of grains. So the decision rule is base year scinario
*  i.e let the base activities dictates how to specify the constraints

* However these scenarios are not relevant as most of the dominant crops are obtainable once in a year.

Table Fsysratio(r,f,t,p) Farming system or crop land commitment (percentage)
* delienate to technology (i.e rain-fed : irrigated - 2002 survey and .....)
* from COMBUD enterprise budgets and discussion with extension Officers on typical production activities
* coop
                dry.Wmaize   irrig.Wmaize  dry.YMaize  irrig.YMaize  dry.Wheat  irrig.Wheat   dry.Soya  irrig.Soya   dry.Sorghum  irrig.Sorghum    dry.Sunflower irrig.Sunflower
*    WCape.f1    79.10         20.90         79.10       20.10         99.60      00.40         76.30      23.70        78.90        21.10
*    WCape.f2
*    NCape.f1    25.80         74.20         25.80       74.20         2.50       97.50         00.00      100.00       7.50         92.50
*    NCape.f2
    FState.f1   0.97         0.03          0.97        0.03          0.95       0.05          0.80      0.20         0.99         .01              0.98          .02
    FState.f2   0.97         0.03          0.97        0.03          0.95       0.05          0.80      0.20         0.99         .01              0.98          .02
*    FState.f1   0.977         0.023         0.977       0.023         0.977      0.023         0.977      0.023        0.977        .023
*    FState.f2   0.914         0.086         0.914       0.086         0.914      0.086         0.914      0.086        0.914       0.086
*    ECape.f2
*    KNatal.f1   76.70         23.30         76.70       23.30         0.80       99.20         84.80      15.20        100.00       0.00
*    KNatal.f2
*    Mpum.f1     89.80         10.20         89.80       10.20         8.00       92.00         96.20      3.80         95.40        4.70
*    Mpum.f2
*    Limp.f1     57.90         42.10         57.90       42.10         0.00       100.00        34.20      65.80        99.50        0.50
*    Limp.f2
*    Gaut.f1     91.90         8.10          91.90       8.10          10.00      90.00         99.30      0.70         100.00       0.00
*    Gaut.f2
*    NWest.f1    97.10         2.90          97.10       2.90          12.50      87.50         17.10      82.90        93.70        6.30
*    NWest.f2

Table LBR(r,f,p) farm level base activity levels stocks - number of animals 2004-5
                   Beef_Cattle   mutton_Sheep   pork_Pig   Broilers_chicken  Layers_eggs  Dairy_cattle
      FState.f1    52            131            2          5745              219          6
      FState.f2    10            23             1          13                5            1

Table RBA(r,f,p) regional base level (areea planted in ha) 2005-5
                    Wmaize  YMaize   Wheat    Soya    Sorghum    Sunflower
      FState.f1     77.36   45.13    22.33    1.45    4.98       21.69
      FState.f2     3.64    6.87     0.26

parameter CBR  farm level base year activity levels crops
          CBR1 farmtype and technology base leve in each region;
      CBR(r,f,t,p) = Fsysratio(r,f,t,p)*RBA(r,f,p);
      CBR1(r,f,t)  = sum(p, CBR(r,f,t,p));

* check that irrigated activities does not exceed the irrigable land available.
display lbr,cbr;


$Stitle farm data

* DLA as at 2003 including the SLAG, LRAD, Commonage...
Table NF(r,f) number of farms units in each farmtype in each region
* field crops and animal production
                f1            f2
*      WCape     7185          89
*      NCape     6114          80
      FState    8531          495
*      ECape     4376          262
*      KNatal    4038          128
*      Mpum      5104          172
*      Limp      2915          145
*      Gaut      2206          98
*      NWest     5349          112

*-------------------------------------------------------------------------------
*         7.    SPECIFYING FARMERS RISK ATTITUDE
*         8.    TOTAL FACTOR PRODUCTIVITY GROWTH IN AGRICULTURE
*         9.    RATE OF FARM FOLDING UP AND FARM LAND SETTLEMENT
*-------------------------------------------------------------------------------
* Specifying Rap
***Estimate the Rap such that the diff between observed allocation and the model
*  solution is minimised (Brink and McCarl, 1979; Hazell et al. 1983)
*  by simulating over a range of raps and chose rap with minimum MAD and decreasing F

* other means include:
*3. derive efficient frontier and pick the Rap where the utility function and the
*   efficient frontier of the decision are tangent)
*4. assume E-V rule was used by decision makers in generating historical choices,
*   and fit the risk aversion parameters as equal to the difference between MR
*   and MC of resources, divided by the appropriate marginal variance
*   i.e Rap = (MR-MC)/Marginal variance
*5. subjectively elicit a Rap (Anderson, et al. 1977) and in turn fit the objective
*   function (i.e given a Pratt risk aversion coefficient and assuming exponential
*   utility implies the E-V Rap equals 1/2 the Pratt Rap  (Freund, 1956 or Bussey 1978)
*6. transform a risk aversion coefficient from another study or develop one based
*   on probabilistic assumptions (McCarl and Bessler 1989)

*Initialise raps with 0.0;

*-------------------------------------------------------------------------------
*$offtext
* Census of agriculture (* 1988 10926; 1993 10252; 2002  8531)

*TFP Index growth rates by Avila & Evenson (2004)
* crops = 4.11% 1961-80; 2.74% btw 1981-01;
* stock = 3.05% 1961-80; 1.91 btw 1981-01;
* aggr  = 3.61% 1961-80; 2.32 btw 1981-01;

*TFP  BY Coelli and Rao (2003)
* aggr = 3.7 1980/2000
* aggr = 3.7 malmquist; 1.9 Tornqvist 1980-2000

*TFP  BY Zyl, Vink and Kirsten (2000)
*1960-1980          2.05
*1980-1990          0.96
*1980-1996          1.19
*1990-1996          1.56
*1960-1996          1.66

* Assuming half for developing farmers
Table farm_fac(r,f,*) annual water quota in litre per ha
                 ctfp      ltfp       fgrowth       Rap
    FState.f1    0.0114    0.0137     -129          0.0000003
    FState.f2    0.0057    0.00685     740          0.00002

$ontext
Table NF(r,f,p) number of farms within each farmtype in each region ('000)
* field crops and animal production
                   Wmaize   YMaize    Wheat     Soya     Sorghum   CottonS   BCattle   Sheep   Pigs   Broiler  Layer  Dairy
      WCape.f1                                                                                                        940
      WCape.f2
      NCape.f1                                                                                                        48
      NCape.f2
      FState.f1                                                                                                       1155
      FState.f2
      ECape.f1                                                                                                        465
      ECape.f2
      KNatal.f1                                                                                                       416
      KNatal.f2
      Mpum.f1                                                                                                         454
      Mpum.f2
      Limp.f1                                                                                                         48
      Limp.f2
      Gaut.f1                                                                                                         280
      Gaut.f2
      NWest.f1                                                                                                        749                   /
      NWest.f2
*-------------------------------------------------------------------------------
$offtext
*-------------------------------------------------------------------------------


*-------------------------------------------------------------------------------
*         6.    REGIONAL INFLOW/OUTFLOW AND TRADE AND CONSUMPTION
*-------------------------------------------------------------------------------
*DATA SOURCE: - Published Statistics
*             - DTI
*             - SA Grains
*             - Consultation with Private and public consultants service providers

*Base year demand, supply, import/(regional inflow) and export(regional outflow) of crops

$Stitle consumption data

*$Stitle Regional supply
Table rpro(r,p) regional crop & livestock production 2004-05
*     update of supply per region per farm type scalled to 1000 tons of crops and  1000 units of animal
           Wmaize     YMaize    Wheat    Soya   Sorghum   sunflower
  FState   2724448    1629976   517956   30508  162899    280000
+
           Beef_cattle   mutton_sheep   pork_pig   broilers_chicken  layers_eggs   dairy_cattle
  FState   60591         30151          10493      61976             429901600     301061300

$Stitle consumption data
Table rcc(r,p) reqional crop and meat demand (consumption)
*     demand per region scalled to 1000 tons of crops and  1000 units of animal
           Wmaize     YMaize     Wheat        Soya    Sorghum   sunflower
  FState   260356.60  584774.00  105063.91    12000   7979.62   101400
+
          Beef_cattle  mutton_sheep  Pork_pig  broilers_chicken  layers_eggs   dairy_Cattle
  FState  50477.02     13791.54      8826.58   53235.33          257964284.70  96242767.74

$Stitle Trade balance
Table rpx(r,p) regional crop and livetock products trade balance (ton and number)
*     outflow per region scalled to 1000 tons of crops and  1000 units of animal
           Wmaize      YMaize      Wheat      Soya       Sorghum    sunflower
  FState   2464091.4   1045202     412892.09  18508      154919.38  178600
+
           Beef_cattle  mutton_sheep   Pork_pig    broilers_chicken  layers_eggs   dairy_Cattle
  FState   10113.98     16359.46       1666.42     8740.67            171937315.30  204818532.30

*-------------------------------------------------------------------------------
* National level  base yr data
parameter nss(p) national crop and meat production
*     update of supply scalled to 1000 tons of crops and  1000 units of animal
          /  Wmaize            7467255
             YMaize            4978993
             Wheat             373000
             Soya              272500
             Sorghum           1699000
             Sunflower         664010
             Beef_cattle       672000
             Mutton_sheep      6192000
             Pork_pig          1974000
             broilers_chicken  872726
             Layers_eggs       5871146519
             Dairy_cattle      2111000000/

parameter ndd(p) national demand (consumption)
          /  Wmaize             4806000
             YMaize             3721000
             Wheat              138500
             Soya               162000
             Sorghum            3366600
             Sunflower          676000.00
             Beef_cattle        722000.00
             Mutton_sheep       9730285.71
             Pork_pig           2119622.95
             broilers_chicken   875000.00
             Layers_eggs        5594042258.00
             Dairy_cattle       2184000000.00/

parameter npx(p) base yr national crop and animal products trade balance
          /  Wmaize             4906255.00
             YMaize             2995993.00
             Wheat              1207000.00
             Soya               110500.00
             Sorghum            121500.00
             Sunflower         -11990
             Beef_cattle       -50000.00
             Mutton_sheep       6076500.00
             Pork_pig           1805000.00
             broilers_chicken   -67000.00
             Layers_eggs        277104261.00
             Dairy_cattle      -73000000
                                                                       /
*================================================================================
$Stitle    D.    PARAMETER SPECIFICATIONS
*================================================================================

parameter CDAVC,RCDAVC,RRCDAVC,LDAVC,RLDAVC,RRLDAVC
          RCDAVC1    real direct variable cost crops
          RLDAVC1    real direct variable cost stocks
          c_int_paid   interest paid on operating capital
          l_int_paid   interest paid on operating capital
          c_p_int_paid
          l_p_int_paid
          VarInpc,VarInpl
          p_int_paid
          c_exp            expenses per items
          l_exp            expenses per items
          c_t_exp
          l_t_exp
          c_t_exp_i
          l_t_exp_i
          r_c_exp
          r_l_exp
          ;

          c_exp(r,t,p,res) = cres(r,t,p,res)*cost(r,p,res);
          l_exp(r,p,res)   = lres(r,p,res)*cost(r,p,res);
          r_c_exp(r,t,p,res) = cres(r,t,p,res)*cost(r,p,res)*(IPPI(r,'2004')/(sum(it, IPPI(r,it))/card(it)));
          r_l_exp(r,p,res)   = lres(r,p,res)*cost(r,p,res)*(IPPI(r,'2004')/(sum(it, IPPI(r,it))/card(it)));  ;

          c_t_exp(r,t,p)     = sum(res, c_exp(r,t,p,res))
                             - policy_var(r,'d_rebate')*policy_var(r,'d_per')*cres(r,t,p,'fuel')*cost(r,p,'fuel');
          l_t_exp(r,p)     = sum(res, l_exp(r,p,res))
                             - policy_var(r,'d_rebate')*policy_var(r,'d_per')*lres(r,p,'fuel')*cost(r,p,'fuel');

          c_t_exp_i(r,t,p)   = (1+policy_var(r,'interest'))*c_t_exp(r,t,p) *(IPPI(r,'2004')/(sum(it, IPPI(r,it))/card(it)));
          l_t_exp_i(r,p)     = (1+policy_var(r,'interest'))*l_t_exp(r,p)   *(IPPI(r,'2004')/(sum(it, IPPI(r,it))/card(it)));


          c_int_paid(r,t,p) = policy_var(r,'interest')* c_t_exp(r,t,p);
*                              (sum(res, cres(r,t,p,res)*cost(r,p,res))
*                              -policy_var(r,'d_rebate')*policy_var(r,'d_per')*cres(r,t,p,'fuel')*cost(r,p,'fuel')) ;

          l_int_paid(r,p) = policy_var(r,'interest')*l_t_exp(r,p);
*                              (sum(res, lres(r,p,res)*cost(r,p,res))
*                              -policy_var(r,'d_rebate')*policy_var(r,'d_per')*lres(r,p,'fuel')*cost(r,p,'fuel')) ;

         RCDAVC1(r,t,p) =
                             (
* sum all expenses
                             (sum(res, cres(r,t,p,res)*cost(r,p,res))
*subtract diesel rebate
                             - policy_var(r,'d_rebate')*policy_var(r,'d_per')*cres(r,t,p,'fuel')*cost(r,p,'fuel')
                               )
* add interest/cost of operating capital
                             + policy_var(r,'interest')*(sum(res, cres(r,t,p,res)*cost(r,p,res))-policy_var(r,'d_rebate')*policy_var(r,'d_per')*cres(r,t,p,'fuel')*cost(r,p,'fuel'))
                             )
* adjust for inflation                   `
                             *(IPPI(r,'2004')/ (sum(it, IPPI(r,it))/card(it)));

         RLDAVC1(r,p)   =
                        (
* sum all expenses
                         (sum(res, lres(r,p,res)*cost(r,p,res))
*subtract diesel rebate
                          - policy_var(r,'d_rebate')*policy_var(r,'d_per')*lres(r,p,'fuel')*cost(r,p,'fuel')
                             )
* add interest/cost of operating capital
                          + policy_var(r,'interest')*(sum(res, lres(r,p,res)*cost(r,p,res))-policy_var(r,'d_rebate')*policy_var(r,'d_per')*lres(r,p,'fuel')*cost(r,p,'fuel'))
                          )
* adjust for inflation
                       *(IPPI(r,'2004')/(sum(it, IPPI(r,it))/card(it)));

*       variable inputs costs as percentage of total variable cost
        VarInpc(r,t,p,res)$(cres(r,t,p,res) ne 0)  = r_c_exp(r,t,p,res)/RCDAVC1(r,t,p)*100;
        c_p_int_paid(r,t,p)$(c_t_exp_i(r,t,p) ne 0)  = c_int_paid(r,t,p)/c_t_exp_i(r,t,p)*100;
        l_p_int_paid(r,p)  $(l_t_exp_i(r,p) ne 0)  = l_int_paid(r,p)/l_t_exp_i(r,p)*100;
        VarInpl(r,p,res)$(lres(r,p,res) ne 0)      = r_l_exp(r,p,res)/RLDAVC1(r,p)*100;


display RCDAVC1,RLDAVC1;
*,agrisup;
*, c_t_exp_i, c_p_int_paid;
*display RLDAVC1, l_t_exp_i, l_p_int_paid;
*display VarInpc,VarInpl;

*-------------------------------------------------------------------------------
*

*-------------------------------------------------------------------------------
*3. adjust nominal producer price with producer price index to 2004 constant price
* thereby reindex the index to 2004
parameter RPrice
          CY
          RY
          RMY,RAY,
          AY
          CMR real regional marginal revenue - crop
          LMR real regional marginal revenue - livestock
          RMR real regional marginal revenue - both   ;

         RPrice(r,p,ot) = Price(r,p,ot)*(OPPI(r,p,'2004')/OPPI(r,p,ot));

*compute the yield
* regional meat yeild  (regional offtatke rate x carcass weight)
         RMY(r,p,ot)              = RLO(r,p,ot) * Carcass(r,p);
*Regional animal yield (regionla offtake rate x liveweight)
         RAY(r,p,ot)              = RLO(r,p,ot) * liveweit(r,p);
         RY(r,p,ot)               = RCY(r,p,ot) + RAY(r,p,ot);

*compute the real farm income (marginal revenue) at constant price 2004
    CMR(r,p,ot)$cp(p) = RCY(r,p,ot)*RPrice(r,p,ot)+ byprod(r,p)+ policy_var(r,'p_sup');
    LMR(r,p,ot)$ap(p) = RAY(r,p,ot)*RPrice(r,p,ot)+ byprod(r,p)+ policy_var(r,'p_sup');
    RMR(r,p,ot)       = CMR(r,p,ot)+LMR(r,p,ot);

display price,rprice,RMY,RAY,RCY,RY,CMR,LMR,RMR;
*-------------------------------------------------------------------------------


*-------------------------------------------------------------------------------
$ontext
Making a Probability Distribution from a Set of Non-Stationary Data
The most common way of doing it is it utilize a regression to
remove the systematic trends and then use the residuals to form the probability distribution.
Let us consider a relatively simple ten point example of this.

Suppose there is a trend in historical data. What if that trend is upward, then what one must do in the phase
of the historical data is somehow remove the trend then extrapolate it to the time period of
interest and form the probability distribution based on its historical observations in that time  period

*  Quantify the trend in crop and animal yields by fitting a linear tend using regression analysis
*  bcos many quantities in nature fluctuate in time.  e.g weather (so also the crop yields and animal off-take rate.)
*  Until recently it was assumed that such fluctuations are a consequence of random and unpredictable events.
*  With the discovery of chaos, it has come to be understood that some of these cases may be a result of deterministic
*  chaos and hence predictable in the short term and amenable to simple modeling.
*  Many tests have been developed to determine whether a time series is random or chaotic,
*  and if the latter, to quantify the chaos. If chaos is found, it may be possible to improve the
*  short-term predictability and enhance understanding of the governing process.
*  J. C. (Clint) Sprott (2004) "Time-Series Analysis" Workshop presented at the 2004 SCTPLS Annual Conference
*    at Marquette University on July 15, 2004 35pp

 Economic time series often have a trend
 Just because 2 series are trending together, we can't assume that the relation is causal
 Often, both will be trending because of other unobserved factors
 Even if those factors are unobserved, we can control for them by directly controlling for the trend
 One possibility is a linear trend, which can be modeled as yt = a0 + a1t + et, t = 1, 2, ...
 Another possibility is an exponential trend, which can be modeled as log(yt) = a0 + a1t + et, t = 1, 2, ...
 Another possibility is a quadratic trend, which can be modeled as yt = a0 + a1t + a2t2 + et, t = 1, 2, ...
 Adding a linear trend term to a regression is the same thing as using 'detrended' series in a regression
 Detrending a series involves regressing each variable in the model on t
 The residuals form the detrended series
 Basically, the trend has been partialled out
 An advantage to actually detrending the data (vs. adding a trend) involves the calculation of goodness of fit
 Time-series regressions tend to have very high R2, as the trend is well explained
 The R2 from a regression on detrended data better reflects how well the xt's explain yt


$offtext
*-------------------------------------------------------------------------------
parameter RYt, sumt,sumRY,sumtsq,meanRY,meant,sumRYt,bRY,aRY,RYrisk,estRY,preRY,pRY,deRY,AMYrisk,ARYrisk,avcbry,avlbry,avdery;

           RYt(r,p,ot)    = RY(r,p,ot)*ord(ot);
           sumt           = sum(ot, ord(ot));
           sumRY(r,p)     = sum(ot, RY(r,p,ot));
           sumtsq         = sum(ot, ord(ot)**2);
           meanRY(r,p)    = sum(ot, RY(r,p,ot))/card(ot);
           meant          = sum(ot, ord(ot))/card(ot);
           sumRYt(r,p)    = sum(ot, RYt(r,p,ot));

           bRY(r,p)       = (sumRYt(r,p) - sumt*sumRY(r,p)/card(ot))/(sumtsq-sumt**2/card(ot));

           avcbry(r) = sum(cp, bry(r,cp))/card(cp);
           avlbry(r) = sum(ap, bry(r,ap))/card(ap);

           aRY(r,p)       = meanRY(r,p)-bRY(r,p)*meant;
           estRY(r,p,ot)  = aRY(r,p) + bRY(r,p)*ord(ot);
           RYrisk(r,p,ot) = RY(r,p,ot)- estRY(r,p,ot);
           ARYrisk(r,p)   =  sum(ot, abs(RYrisk(r,p,ot)))/card(ot);

* Forecast furture values
*          preRGM(r,p,yr)$ft(yr) = a(r,p) + b(r,p)*ord(yr);
           preRY(r,p,yr)$(yes$(ord(yr) gt card(ot))) = aRY(r,p) + bRY(r,p)*ord(yr);

* Detrended real GM
           deRY(r,p,ot)= PreRY(r,p,'2005') + RYrisk(r,p,ot);

           avdery(r,p) = sum(ot, dery(r,p,ot))/card(ot);

*display RYt,sumt,sumRY,sumtsq,meanRY,meant,sumRYt,bRY,aRY,estRY,RYrisk,bt,ft,preRY,deRY;
*-------------------------------------------------------------------------------
display deRY;
*,preRY,ARYrisk;
*display bRY,avcbry,avlbry, aRY,avdery;


*-------------------------------------------------------------------------------
*  Quantify the trend in meat Yield by fitting a linear tend using regression analysis
*-------------------------------------------------------------------------------
parameter  RMYt, sumt,sumMY,sumtsq,meanMY,meant,sumMYt,bMY,aMY,RAMYrisk,RMYrisk,estMY,preMY,pMY,deMY;

           RMYt(r,p,ot)  = RMY(r,p,ot)*ord(ot);
           sumt          = sum(ot, ord(ot));
           sumMY(r,p)    = sum(ot, RMY(r,p,ot));
           sumtsq        = sum(ot, ord(ot)**2);
           meanMY(r,p)   = sum(ot, RMY(r,p,ot))/card(ot);
           meant         = sum(ot, ord(ot))/card(ot);
           sumMYt(r,p)   = sum(ot, RMYt(r,p,ot));
           bMY(r,p)      = (sumMYt(r,p) - sumt*sumMY(r,p)/card(ot))/(sumtsq-sumt**2/card(ot));
           aMY(r,p)      = meanMY(r,p)-bMY(r,p)*meant;
           estMY(r,p,ot) = aMY(r,p) + bMY(r,p)*ord(ot);
           RMYrisk(r,p,ot) = RMY(r,p,ot)- estMY(r,p,ot);
           RAMYrisk(r,p)   = sum(ot, abs(RMYRisk(r,p,ot)))/card(ot);

* Forecast furture values
*          preRGM(r,p,yr)$ft(yr) = a(r,p) + b(r,p)*ord(yr);
           preMY(r,p,yr)$(yes$(ord(yr) gt card(ot))) = aMY(r,p) + bMY(r,p)*ord(yr);

* Detrended real GM
           deMY(r,p,ot)= PreMY(r,p,'2005') + RMYrisk(r,p,ot);

*display RYt,sumt,sumRY,sumtsq,meanRY,meant,sumRYt,bRY,aRY,estRY,RYrisk,bt,ft,preRY,deRY;
*-------------------------------------------------------------------------------
*display preMY;
display aMY,bMY;

*-------------------------------------------------------------------------------
* Quantify the trend in real price by fitting a linear tend using regression analysis
*-------------------------------------------------------------------------------
parameter RPricet,sumRPrice,meanRPrice,sumRPricet,bRPrice,aRPrice,RPricerisk,estRPrice,preRPrice,pRPrice,deRPrice,
           ARPricerisk;

           RPricet(r,p,ot)    = RPrice(r,p,ot)*ord(ot);
           sumRPrice(r,p)     = sum(ot, RPrice(r,p,ot));
           meanRPrice(r,p)    = sum(ot, RPrice(r,p,ot))/card(ot);
           sumRPricet(r,p)    = sum(ot, RPricet(r,p,ot));
           bRPrice(r,p)       = (sumRPricet(r,p) - sumt*sumRPrice(r,p)/card(ot)) /(sumtsq-sumt**2/card(ot));
           aRPrice(r,p)       = meanRPrice(r,p)-bRPrice(r,p)*meant;
           estRPrice(r,p,ot)  = aRPrice(r,p) + bRPrice(r,p)*ord(ot);
           RPricerisk(r,p,ot) = RPrice(r,p,ot)- estRPrice(r,p,ot);
           ARPricerisk(r,p)   = sum(ot, abs(RPricerisk(r,p,ot)))/card(ot);

* Forecast future values
*          preRPrice(r,p,yr)$ft(yr) = aRPrice(r,p) + bRPrice(r,p)*ord(yr);
           preRPrice(r,p,yr)$(yes$(ord(yr) gt card(ot))) = aRPrice(r,p) + bRPrice(r,p)*ord(yr);

* Detrended real GM
           deRPrice(r,p,ot)= PreRPrice(r,p,'2005') + RPricerisk(r,p,ot);

*display RPricet,sumRPrice,meanRPrice,sumRPricet,bRPrice,aRPrice,estRPrice,RPricerisk,bt,ft,preRPrice,deRPrice;
*display ARPricerisk;
*-------------------------------------------------------------------------------


*-------------------------------------------------------------------------------
* detrend the real MR and quantify the risk in MR
*-------------------------------------------------------------------------------
parameter cpreFMR,lpreFMR,RMRt,run_nf,deRMR,lpreRGM, ARMRrisk,sumt,sumRGM,sumtsq,meanRGM,meant,sumRGMt,risk,b,a,sumrisk,estRGM,preRMR,prgm,dergm,RMRrisk;

           RMRt(r,p,ot)    = RMR(r,p,ot)*ord(ot);
           sumRGM(r,p)     = sum(ot, RMR(r,p,ot));
           meanRGM(r,p)    = sum(ot, RMR(r,p,ot))/card(ot);
           sumRGMt(r,p)    = sum(ot, RMRt(r,p,ot));
           b(r,p)          = (sumrgmt(r,p) - sumt*sumRGM(r,p)/card(ot))/(sumtsq-sumt**2/card(ot));
           a(r,p)          = meanRGM(r,p)-b(r,p)*meant;
           estRGM(r,p,ot)  = a(r,p) + b(r,p)*ord(ot);
           RMRRisk(r,p,ot) = RMR(r,p,ot)- estRGM(r,p,ot);
           ARMRrisk(r,p)   = sum(ot, abs(RMRrisk(r,p,ot)))/card(ot);

* Forecast furture values i.e forming probability distribution
*          preRGM(r,p,yr)$ft(yr) = a(r,p) + b(r,p)*ord(yr);
          preRMR(r,p,yr)$(yes$(ord(yr) gt card(ot))) = a(r,p) + b(r,p)*ord(yr);

* Detrended real GM
          deRMR(r,p,ot)= (PreRMR(r,p,'2005') + RMRRisk(r,p,ot));

Display deRMR, RMRRisk,ARMRrisk;
*display ARPricerisk, ARYrisk, ARMRrisk;
*display preRMR;
*,cpreFMR,lpreFMR;
*display deRMR,preRMR;
*-------------------------------------------------------------------------------


*adjust for farm type level



*-------------------------------------------------------------------------------
*        DEFINING THE RISK COMPONENT OF THE MODEL
*-------------------------------------------------------------------------------
Parameters ECY,ECY1,ELY,EY,EMY,EPrice,BX,EGMR,ECGMR,ELGMR,ECNMR,ELNMR,GM,AvedeRY,tAvedeRY
           CovGMR,VarGMR,TVarGMR,StDGMR,tstdgmr,ECRGMR,ELRGMR
 ERY,ERMR, preFECY,preFEMY,preFELY,CovRMR, VarRMR,  TVarRMR,  EFMR,EFCY,EFLY,STDRMR,tSTDRMR ,ERMY,FECY,FELY,FEMY,FECMR,   FELMR,  FECNMR,  FELNMR
;

*modeling expected price
* 1. expectation models - e.g i. adaptive expectation models such that producers'
* expectation of price in year t may be formed from a weighted average of prices
* in previous years (time series of previous prices
* ii. rational expecations - producers use all worthowhile information to form
*     price expectation e.g past prices, future prices for the time of harvest

* 2. adjustment models  - once producers are subjectively certian of price,
*   they may adjust output slowly beause of causiton, inertia, or costs of making adjustments
*Definition: The variance-covariance matrix shows the variances and covariances
* between a number of different market variables.

*check that mean of the 1994-2004 is realistic otherwise compare with using moving averages
**deRY(r,p,ot), deRPrice(r,p,ot), deRGM(r,p,ot);

*expected price
   EPrice(r,p) = sum(ot, deRPrice(r,p,ot)) /card(ot);

*Expected regional yield
   ERY(r,p)    = sum(ot, deRY(r,p,ot))     /card(ot);

* expected regional meat yield
   ERMY(r,p)   = sum(ot, deMY(r,p,ot))     /card(ot);

*Expected farm leve yield
*Adjust regional data to farm-level factor
  FECY(r,f,t,p)$cp(p)   = ERY(r,p) *CTfactor(r,f,t,p);
  FELY(r,f,p)$ap(p)     = ERY(r,p) *LTfactor(r,f,p);
  FEMY(r,f,p)$ap(p)     = ERMY(r,p)*LTfactor(r,f,p);

* projected farm level marginal revenue
  cpreFMR(r,f,t,p,yr)$cp(p)  = preRMR(r,p,yr)$cp(p)*CTfactor(r,f,t,p);
  lpreFMR(r,f,p,yr)$ap(p)    = preRMR(r,p,yr)$ap(p)*LTfactor(r,f,p)  ;

*expected regional marginal revenue
   ERMR(r,p)   = sum(ot, deRMR(r,p,ot))    /card(ot);

   FECMR(r,f,t,p)$cp(p)  = FECY(r,f,t,p)*Eprice(r,p) + byprod(r,p)+ policy_var(r,'p_sup');
   FELMR(r,f,p)  $ap(p)  = FELY(r,f,p)  *Eprice(r,p) + byprod(r,p)+ policy_var(r,'p_sup');

   FECNMR(r,f,t,p)$(cbr(r,f,t,p) ne 0)  = FECMR(r,f,t,p)$cp(p) - RCDAVC1(r,t,p);
   FELNMR(r,f,p)  $ap(p)                = FELMR(r,f,p)$ap(p)   - RLDAVC1(r,p);

*covarnace of marginal revenue for each farm type in each region
  CovRMR(r,p,p1)=sum(ot,  (deRMR(r,p1,ot)-ERMR(r,p1))* (deRMR(r,p,ot) -ERMR(r,p)))/card(ot);

*varnace of marginal revenue for each farm type in each region
  VarRMR(r,p,p)=sum(ot,  (deRMR(r,p,ot)-ERMR(r,p))* (deRMR(r,p,ot)-ERMR(r,p)))/card(ot);

*total variance of marginal revenue for each farm type in each region
  TVarRMR(r) = sum(p, sum(ot,  (deRMR(r,p,ot)-ERMR(r,p))* (deRMR(r,p,ot)-ERMR(r,p)) )/card(ot));

*standard deviation of marginal revenue for each farm type in each region
  STDRMR(r,p,p)= sqrt(sum(ot,  (deRMR(r,p,ot)-ERMR(r,p))* (deRMR(r,p,ot)-ERMR(r,p)) )/card(ot));

*total standard deviation of marginal revenue for each farm type in each region
  tSTDRMR(r) = sum(p, sqrt(sum(ot,  (deRMR(r,p,ot)-ERMR(r,p))* (deRMR(r,p,ot)-ERMR(r,p)) )/card(ot)));

*Display EPrice,ECY,EY,ELY,EMY,ECGMR,ELGMR,ECNMR,ELNMR,CovGmr,VarGMR;

* DISPLAY EPrice,ERY,ERMR,CovRMR;
* VarRMR, TVarRMR,  STDRMR,tSTDRMR,DISPLAY FECY,FELY,FEMY;

DISPLAY RCDAVC1,RLDAVC1,FECMR,FECNMR, FELMR,FELNMR,ERMR,CovRMR;
display deRY,ery;
*$exit

*===============================================================================
* break CEC data down into farm-level by technology with enterprise budget data.
parameter
          fpro bass supply by farm type
          rbpro base supply by region
          defss_base_model
          cbpro base supply by technology
          flevel activity level by farm type
          rlevel activity level by region
          clevel activity level by technology
          rtbal trade balance
          btbal
          defbtbal
          deftbal_base_model
          diff
          diff1 difference between CEC data and model data on production
          diff2 difference between CEC data and model data  on trade balance
          ;

   fpro(r,f,p)    =  sum(t, cbr(r,f,t,p)$cp(p)*FECY(r,f,t,p)*nf(r,f)) + lbr(r,f,p)$ap(p)*FEMY(r,f,p)*nf(r,f) ;
   rbpro(r,p)     =  sum((f,t), cbr(r,f,t,p)$cp(p)*FECY(r,f,t,p)*nf(r,f)) + sum(f,lbr(r,f,p)$ap(p)*FEMY(r,f,p)*nf(r,f)) ;
   defss_base_model(r,p) = (rbpro(r,p) - rpro(r,p))/rpro(r,p)*100;
   cbpro(r,f,t,p) =  cbr(r,f,t,p)$cp(p)*FECY(r,f,t,p)*nf(r,f) ;


   flevel(r,f,p)   =  sum(t, cbr(r,f,t,p)$cp(p)) + lbr(r,f,p)$ap(p) ;
   rlevel(r,p)     =  sum((f,t), cbr(r,f,t,p)$cp(p)) + sum(f,lbr(r,f,p)$ap(p)) ;
   clevel(r,f,t,p) =  cbr(r,f,t,p)$cp(p) ;

   btbal(r,p)      =  rpro(r,p) - rcc(r,p);
   defbtbal(r,p)   = (btbal(r,p) - rpx(r,p))/rpx(r,p)*100;

   rtbal(r,p)      =  rbpro(r,p)- rcc(r,p);

   deftbal_base_model(r,p) = (rtbal(r,p) - rpx(r,p))/rpx(r,p)*100;

   diff(r,p)  = rpro(r,p) - rbpro(r,p);

   rpro(r,p)  = rpro(r,p) - diff(r,p);

   rpx(r,p)   = rpro(r,p) - rcc(r,p);

   diff1(r,p)  = rpro(r,p) - rbpro(r,p);
   diff2(r,p)  = rpx(r,p)  - rtbal(r,p);

display rpro,rbpro,rpx,rtbal;
display diff1,diff2;
*===============================================================================


*-------------------------------------------------------------------------------
*$exit

*===============================================================================
*         C.        CALIBRATION - PMP CONSTRAINED MODEL
*===============================================================================
* 1st Stage - Linear Program - Constrained model
* linear calibration program to calculate resource & PMP duals
* ------------------------------------------------------------------------------
* From the nonlinear calibration proposition either or both
* the cost or production function is nonlinear if calibration
* constraints is needed (Howitt, 2005)
* Here I assume the resource demand side of the profit function
* is non-linear & I take the simplest general form
* ie. quadratic Total Cost function from increasing cost resulting
* from increase in resource use: TC = alpha(x) + 0.5gama(x)^2
* ------------------------------------------------------------------------------
Positive variables
          cx    crop activities levels
          lx    livestock activity levels
          Art    ;

variables
          rap1 ,mad
          clpobj
          llpobj
          GGMRisk
          plpobj
          flpobj
          rlpobj
          nlpobj;

Equations
          rcon1    regional arable land constrain
          rcon2    regional irrigable land constraint
          rcon3    regional grassland constraint
          rcon4    regional land constraint
          rcon5    regional irrigation water constraint
          rcon6    regional labour constraint

          Fcon1    farmtype arable land upper limit
          Fcon2    farmtype irrigable land upper limit
          Fcon3    farmtype grassland upper limit
          Fcon4    farmtype land upper limit
          Fcon5    farm type irrigation water limit
          Fcon6    farm type operative capital limit

          calibuc  Regional upper calibration constraints for crop production
          caliblc  Regional lowwer calibration constraints for crop production
          calibul  Regional Upper calibration constraints  for livestock production
          calibll  Regional lowwer calibration constraints for livestock production
          CALIBpro
          lpobj_
          prd_
          rpbal    regional product balance
          npbal    national product balance
          rss_     regional production equation
          nss_
          rbal
          nbal
          clpobj_
          llpobj_
          Risk_
          plpobj_
          flpobj_
          rlpobj_
          nlpobj_
          rtradebal
          ntradebal ;
*$ontext
*Poorly scaled models can cause excessive time to be taken in solving or can cause the solver to fail
* --- Regional resources are scaled to 10000 units
    Rcon1.scale(r,'aland')         =10000;
    rcon2.scale(r,"irrigland")     =10000;
    Rcon3.scale(r,"gland")         =10000;
    Rcon4.scale(r,"land")          =10000;
    rcon5.scale(r,"iwater")        =10000000;
    Rcon6.scale(r,"labour")        =100000;

* --- Farm-level resources are scaled to 10 units
    fcon1.scale(r,f,'aland')       =10;
    fcon2.scale(r,f,"irrigland")   =10;
    fcon3.scale(r,f,"gland")       =1;
    fcon4.scale(r,f,"land")        =10;
    fcon5.scale(r,f,"iwater")      =10000;

*   fcon6.scale(r,f,"labour")      =10;

* --- Regional production, consumption and trade balance are scaled to 100,000 units


    cx.scale(r,f,'dry','wmaize')    = 10;
    cx.scale(r,f,'dry','ymaize')    = 10;
    cx.scale(r,f,'dry','wheat')     = 10;
    cx.scale(r,'f1','irrig','sorghum') = 0.1;
    cx.scale(r,'f2','irrig','wheat')   = 0.1;

    lx.scale(r,f,'beef-cattle')     = 10;
    lx.scale(r,f,'dairy-cattle')    = 1;
    lx.scale(r,f,'mutton-sheep')    = 100;
    lx.scale(r,f,'pork-pig')        = 1;
    lx.scale(r,f,'chicken-broilers')= 1000;
    lx.scale(r,f,'chicken-eggs')    = 100;

    prd_.scale(r,p)                =100000;
    rss_.scale(r,p)                =100000;

    clpobj_.scale(r,f,t,p)         =1000;
    llpobj_.scale(r,f,p)           =1000;
    flpobj_.scale(r,f)             =100;
    nlpobj_.scale                  =10000;
*    flpobj_.scale(r,f)             =1000;

*$offtext

*1. Resource restrictions
*   a. Regional land quality constraints
    Rcon1(r,"aland")..                 sum((f,t,p), cx(r,f,t,p)*cres(r,t,p,"aland")*nf(r,f))                 =l=RLC(r,"aland")     ;

    rcon2(r,"irrigland")$t("irrig")..  sum((f,p), cx(r,f,"irrig",p)*cres(r,"irrig",p,"irrigland")*nf(r,f))   =l=RLC(r,"irrigland") ;
    Rcon3(r,"gland")..                 sum((f,p), lx(r,f,p)*lres(r,p,"gland")*nf(r,f))                       =l=RLC(r,"gland")     ;
    Rcon4(r,"land")..                  sum((f,t,p), cx(r,f,t,p)*cres(r,t,p,"aland")*nf(r,f))
                                       +sum((f,p),lx(r,f,p)*lres(r,p,"gland")*nf(r,f))                       =l=RLC(r,"land")      ;
    rcon5(r,"iwater")$t("irrig")..     sum((f,cp), cx(r,f,"irrig",cp)*cres(r,"irrig",cp,"iwater")*nf(r,f))   =l=RLC(r,"iwater")    ;
    Rcon6(r,"labour")..                sum((f,t,p), cx(r,f,t,p)*cres(r,t,p,"labour")*nf(r,f))
                                       +sum((f,p),lx(r,f,p)*lres(r,p,"labour")*nf(r,f))                      =l=RLC(r,"labour")    ;

*   b. Farm-type land limits
    Fcon1(r,f,"aland")..                sum((t,p), cx(r,f,t,p)*cres(r,t,p,"aland"))                           =l=FLC(r,f,"aland")    ;
    Fcon2(r,f,"irrigland")$t("irrig").. sum(cp, cx(r,f,"irrig",cp)*cres(r,"irrig",cp,"irrigland"))            =l=FLC(r,f,"irrigland");
    Fcon3(r,f,"gland")..                sum(p, lx(r,f,p)*lres(r,p,"gland"))                                   =l=FLC(r,f,"gland")    ;
    Fcon4(r,f,"land")..                 sum((t,p), cx(r,f,t,p)*cres(r,t,p,"aland"))
                                       +sum(p,lx(r,f,p)*lres(r,p,"gland"))                                    =l=FLC(r,f,"land")     ;
    Fcon5(r,f,"iwater")$t("irrig")..    sum(p, cx(r,f,"irrig",p)*cres(r,"irrig",p,"iwater"))                  =l=FLC(r,f,"iwater")   ;

*    Fcon6(r,f,'capital')..             sum((t,p), cx(r,f,t,p)*CDAVC(r,t,p))+
*                                       sum(p, lx(r,f,p)*LDAVC(r,p))                                          =l=FLC(r,f,'capital')  ;
*-------------------------------------------------------------------------------
*          CALIBERATE CROPPING ACTIVITIES
*   calibration to base year land allocations
*-------------------------------------------------------------------------------
*2. Calibration constraints (calibrating to either base year land allocation or supply)
*   a. Upper calibration constraints for crop activities
    calibuc(r,f,t,cp)$(CBR(r,f,t,cp))..                           cx(r,f,t,cp)=l=CBR(r,f,t,cp)*1.0001;

*   b. Lower calibration constraints for crop activities
    caliblc(r,f,t,cp)$(CBR(r,f,t,cp) and FECNMR(r,f,t,cp) lt 0).. cx(r,f,t,cp)=g= CBR(r,f,t,cp)*0.9999;

*   c. Upper calibration constraints livestock activities
    calibul(r,f,ap)$LBR(r,f,ap)..                                 lx(r,f,ap)=l=LBR(r,f,ap)*1.0001;

*   d. Lower calibration constraints livestocks activities
    calibll(r,f,ap)$(LBR(r,f,ap)     and FELNMR(r,f,ap) lt 0)..   lx(r,f,ap)=g=LBR(r,f,ap)*0.9999;

*-------------------------------------------------------------------------------
* data validation
*Data validation guarantees that every data value is correct and accurate.
*   Aggregate production limits (i.e each region cannot produce more than what
*   the resources avilable, yield, number of farms could produce
$Stitle supply constraints:
*observed and total supply from eahc region is no greater than the total production capacities
*  Product balance i.e demand or sales of agricultural products
   prd_(r,p)..      rpro(r,p)  =l=   sum((f,t), cx(r,f,t,p)$cp(p)*FECY(r,f,t,p)*nf(r,f))
                                     +sum(f, lx(r,f,p)$ap(p)*FEMY(r,f,p)*nf(r,f))             ;

$Stitle  Demand/consumption - production/supply and import-export/trade balance
   rss_(r,p)..      rcc(r,p) - (sum((f,t), cx(r,f,t,p)*FECY(r,f,t,p)*nf(r,f))
                                + sum(f, lx(r,f,p)*FEMY(r,f,p)*nf(r,f)))               =l= rpx(r,p) ;
*----------------------------------------------------------------------------------------------------------
*4. Policy constraints?

*$ontext
* Objective function
clpobj_(r,f,t,p)$cp(p)..
***           add profits from cropping activities over tech
                   ( FECMR(r,f,t,p)$cp(p) - RCDAVC1(r,t,p) )* cx(r,f,t,p)$cp(p) =e= clpobj(r,f,t,p);

llpobj_(r,f,p)$ap(p)..
***           add profits from cropping activities over tech
                   (FELMR(r,f,p)$ap(p) - RLDAVC1(r,p) )     * lx(r,f,p)$ap(p)   =e= llpobj(r,f,p)  ;

plpobj_(r,f,p)..
***           add profits from cropping activities
               sum(t, clpobj(r,f,t,p)$cp(p))

***           add profit from cropping activities
                  + llpobj(r,f,p)$ap(p)
                                        =e= plpobj(r,f,p)  ;

flpobj_(r,f).. sum(p, plpobj(r,f,p))

*** subtract revenue risk component
               - farm_fac(r,f,'rap')*(sum(p, sum(p1, (sum(t, cx(r,f,t,p)$cp(p))  + lx(r,f,p)$ap(p))
                                             *CovRMR(r,p,p1)*
                                             (sum(t, cx(r,f,t,p1)$cp(p1)) + lx(r,f,p1)$ap(p1))
                              )   )     )
*** subtract agricultural land tax as fixed cost
               - FLC(r,f,'land')*policy_var(r,'l_tax')* policy_var(r,'l_price')

*** subtract water tariff as fixed cost
               - FLC(r,f,'iwater')*policy_var(r,'w_tariff')

*** add income from rentable farm land (adjust for depreciation or transaction cost)
*    Carolina Trivelli (1997)
* 1. Increase in transaction costs in the output or input market
*    Decreases the real net rent received by the tenant/landowner
* 2. Increase in landowners fix costs (depreciation, maintenance costs)
*    Reduces the net rent that could be obtained from land. Also induces renting instead of buying.
* 3. Increase in searching, bargaining and transfer costs in the land market
*    Reduces the net rents that could be obtained from land. Also induces renting instead of buying.
*  4.Increases in real interest rate
*    Changes the opportunity cost of investments, makes more attractive other sectors

   +(FLC(r,f,'dryland')   - sum(p$cp(p), cx(r,f,'dry',p)  *cres(r,'dry',p,'dryland')))     * policy_var(r,'dryrent')  * 0.6
   +(FLC(r,f,'irrigland') - sum(p$cp(p), cx(r,f,'irrig',p)*cres(r,'irrig',p,'irrigland'))) * policy_var(r,'irrigrent')* 0.6
   +(FLC(r,f,'gland')     - sum(p$ap(p), lx(r,f,p)        *lres(r,p,'gland')))             * policy_var(r,'grent')    * 0.6

                                                                                =e=flpobj(r,f)  ;

rlpobj_(r)..     sum(f, flpobj(r,f))                                            =e=rlpobj(r)    ;

nlpobj_..        sum(r, rlpobj(r))                                              =e=nlpobj       ;

model SARASdual /
                rcon1
                rcon2
                rcon3
                rcon4
                rcon5
                rcon6
                fcon1
                fcon2
                fcon3
                fcon4
                fcon5
*                fcon6
                calibuc
                caliblc
                calibul
                calibll
* only necessary to arrive at yield level that match the activity level with
* production data and enterprise budget data such that the data is consistent
* and aids in calibration
*                prd_
*                rss_
                clpobj_
                llpobj_
                plpobj_
                flpobj_
                rlpobj_
                nlpobj_
                                     / ;

          SARASdual.scaleopt = 1;
*          SARASdual.OPTFILE  = 1;

solve SARASdual using nlp maximizing nlpobj;

* resolve with CONOPT in case the default NLP solver did not report dual values
option nlp=CONOPT;
solve SARASdual using nlp maximizing nlpobj;
option nlp=%system.nlp%;

*---------------------------------------------------------
*$exit

*===============================================================================
*         FIND THE OPTIMUM RISK ATTITUDE
* this section is switched on to estimate risk aversion parameters after which
* it is switched off
*===============================================================================
* developing the set of feasible farm plans (E-V frontier) having the property
*  that variance is  minimum for associated expected income level.
*-------------------------------------------------------------------------------
* developing the set of feasible farm plans (E-V frontier) having the property
*  that variance is  minimum for associated expected income level.

$ontext
set raps risk aversion parameters /1*1/

alias (raps,rapp)

* try WHILE until level is equal observed levels;

PARAMETER OUTPUT(r,f,*,RAPS) RESULTS FROM MODEL RUNS WITH VARYING RAP
          OUTPUT1(r,f,t,p,*,RAPS)
          COUTPUT
          LOUTPUT
          COUTPUT2

          COUTPUT3
          LOUTPUT2
          LOUTPUT3
          MOUTPUT
          FOUTPUT
          FFOUTPUT
          oprap
          p_var;

*The small positive lower bound can be particularly useful in nonlinear
* programming where functions may not be defined at zero.
*It is sometimes also necessary to set the current level of a variable.
* This is particularly true in nonlinear programming where it is advisable to
* pick starting solutions because results may depend on initial variable values. For example, the statement
*cx.l(r,f,t,p)$(CBR(r,f,t,p) > 0 ) = cbr(r,f,t,p);
*lx.l(r,f,p)$(LBR(r,f,p) > 0 )     = lbr(r,f,p);

LOOP (RAPS,

      farm_fac(r,'f1','rap') = farm_fac(r,'f1','rap') +0.0000003 ;
      farm_fac(r,'f2','rap') = farm_fac(r,'f2','rap') +0.00002 ;

*f1.Rap      +0.0000003
*f2.Rap   +0.00002

*SARASdual.OPTFILE = 1;

Solve SARASdual using nlp maximizing nlpobj;

*      p_var(r,f) =  sum(p, sum(p1, sum(t, cx.l(r,f,t,p)*ECY(r,f,t,p)*CovGMR(r,p,p1)*cx.l(r,f,t,p)*ECY(r,f,t,p))))
*                     +(sum(p, sum(p1,lx.l(r,f,p)*ELY(r,f,p)*CovGMR(r,p,p1)*lx.l(r,f,p1)*ELY(r,f,p1))));

*      OUTPUT(r,f,"OBJ",RAPS) = fOBJ.l(r,f);
      OUTPUT(r,f,"RAP",RAPS)  = farm_fac(r,f,'rap') ;

      COUTPUT2(r,f,t,p,RAPS)       = cx.l(r,f,t,p);
      LOUTPUT2(r,f,p,RAPS)         = lx.l(r,f,p);

*      COUTPUT3(r,f,t,p,"rho",RAPS) = abs(calibuc.m(r,f,t,p));
*      LOUTPUT3(r,f,p,"rho",RAPS)   = abs(calibul.m(r,f,p));

*      COUTPUT3(r,f,t,p,'elas',RAPS)$(cbr(r,f,t,p) <> 0 or calibuc.l(r,f,t,p) <> 0 )
*                              = abs(((cx.l(r,f,t,p)-cbr(r,f,t,p))/(crho(r,f,t,p)-abs(calibuc.l(r,f,t,p))))
*                               *(crho(r,f,t,p)/cbr(r,f,t,p)));

*      LOUTPUT3(r,f,p,'elas',RAPS)$(lbr(r,f,p) <> 0 or calibul.l(r,f,p) <> 0 )
*                              = abs(((lx.l(r,f,p)-lbr(r,f,p))/(lrho(r,f,p)-abs(calibul.l(r,f,p))))
*                                    *(lrho(r,f,p)/lbr(r,f,p)));

      OUTPUT(r,f,"MAD",RAPS)  = sum(p, abs(sum(t, cbr(r,f,t,p)$cp(p))  + lbr(r,f,p)$ap(p)
                                          -sum(t, cx.l(r,f,t,p)$cp(p)) + lx.l(r,f,p)$ap(p)
                                   )      )/card(p);

*      COUTPUT(r,f,t,p,"cMAD",RAPS)  = abs(cbr(r,f,t,p)$cp(p) - cx.l(r,f,t,p)$cp(p));
*      LOUTPUT(r,f,p,"lMAD",RAPS)  = abs(lbr(r,f,p)$ap(p)   - lx.l(r,f,p)$ap(p));
*      Output(r,f,'MAD',raps)    = (sum((t,p), COUTPUT(r,f,t,p,"cMAD",RAPS)) + sum(p,LOUTPUT(r,f,p,"lMAD",RAPS)))/(card(cp)*card(t) + card(ap));

      Output(r,f,'MAD',raps)    = (sum((t,p), abs(cbr(r,f,t,p)$cp(p) - cx.l(r,f,t,p)$cp(p))) + sum(p,abs(lbr(r,f,p)$ap(p)   - lx.l(r,f,p)$ap(p))))/(card(cp)*card(t) + card(ap));

*      Output(r,f,'activity',raps)    = sum((t,p), cx.l(r,f,t,p)$cp(p)) + sum(p, lx.l(r,f,p)$ap(p));

      OUTPUT(r,f,"F",RAPS)= (sum((t,p), cbr(r,f,t,p)*abs(calibuc.m(r,f,t,p))) + sum(p, lbr(r,f,p)*abs(calibul.m(r,f,p))))/
                               (sum((t,p), cbr(r,f,t,p)*RCDAVC1(r,t,p)) + sum(p, lbr(r,f,p)*RLDAVC1(r,p)));

*      OUTPUT(r,f,"F",RAPS)= (sum((t,p), cbr(r,f,t,p)*abs(calibuc.m(r,f,t,p))) + sum(p, lbr(r,f,p)*abs(calibul.m(r,f,p))))/
*                            (sum((t,p), cbr(r,f,t,p)*RCDAVC(r,t,p)) + sum(p, lbr(r,f,p)*RLDAVC(r,p)));

*      FFOUTPUT(r,f,t,p,"FF",RAPS)$(CBR(r,f,t,p) > 0 and LBR(r,f,p) > 0) = (cbr(r,f,t,p)*abs(calibuc.m(r,f,t,p))+lbr(r,f,p)*abs(calibul.m(r,f,p)))/
*                                                                                (cbr(r,f,t,p)*RCDAVC(r,t,p) + lbr(r,f,p)*RLDAVC(r,p));

*     output(r,f,'Mrisk',raps) = sum(p, -2*Rap(r,f)*(sum(t, cx.l(r,f,t,p))+lx.l(r,f,p))*CovGMR(r,p,p));

*      OUTPUT(r,f,"unobser",RAPS)= sum((t,p), abs(calibuc.m(r,f,t,p))) + sum(p, abs(calibul.m(r,f,p)));
*      OUTPUT(r,f,"unobser",RAPS)= (sum((t,p), cbr(r,f,t,p)*abs(calibuc.m(r,f,t,p))) + sum(p, lbr(r,f,p)*abs(calibul.m(r,f,p))));

*     OUTPUT(r,f,"obser",RAPS)= (sum((t,p), cbr(r,f,t,p)*RCDAVC(r,t,p)) + sum(p, lbr(r,f,p)*RLDAVC(r,p)));

* I notice that F decreases with yield. then what is the relationship between yield and theta?

*      OUTPUT(r,f,"MEAN",RAPS)        = sum((t,p), FECY(r,f,t,p)*cx.l(r,f,t,p))+ sum(p, FELY(r,f,p)*lx.l(r,f,p));

*      OUTPUT(r,f,"VAR",RAPS)         =     (sum(p, sum(p1, sum(t, cx.l(r,f,t,p)$cp(p))  + lx.l(r,f,p)$ap(p)
*                                             *CovRMR(r,p,p1)*
*                                             sum(t, cx.l(r,f,t,p1)$cp(p1)) + lx.l(r,f,p1)$ap(p1)  )));

*      OUTPUT(r,f,"STD",RAPS)=SQRT(p_VAR(r,f));
*      OUTPUT(r,f,"aSHADPRICE",RAPS)  = fcon1.m(r,f,'aland');
*      OUTPUT(r,f,"iHADPRICE",RAPS)   = fcon2.m(r,f,'irrigland');
*      OUTPUT(r,f,"gSHADPRICE",RAPS)  = fcon3.m(r,f,'gland');
*      OUTPUT(r,f,"lSHADPRICE",RAPS)  = fcon4.m(r,f,'land');

*      OUTPUT(r,f,"aIDLE",RAPS)       = FLC(r,f,'aland')     - fcon1.l(r,f,'aland');
*      OUTPUT(r,f,"iIDLE",RAPS)       = FLC(r,f,'irrigland') - fcon2.l(r,f,'irrigland');
*      OUTPUT(r,f,"gIDLE",RAPS)       = FLC(r,f,'gland')     - fcon3.l(r,f,'gland');
*      OUTPUT(r,f,"lIDLE",RAPS)       = FLC(r,f,'land')      - fcon4.l(r,f,'land');

*Thus, for example, if some statements are to be executed only if the last solve terminated optimal, the following sequence would be appropriate:

*model plan /all/;
*solve plan using lp minimizing cost;
*if( (plan.modelstat eq 1),
*   statements

*);


  );

*);

*);
*RAP is the risk aversion parameter value
*cx and lx are the activities levels
*obj gives the objective function value
*mean gives expected income
*var gives the variance of income
*std give the standard deviation of income
*shadprice gives the shadow price on the farmtype land constraint

* then what is the farm types' preference?
* this point is described by the farmer's EV utility function; however this
* parameter is not known:
* solution: since income/price variation is not the only source of uncertainty
* that determines farmers choice (Hazell, 1986) (other things inlcude policy,
* resource constraints; ,etc. ) therefore, the Rap at which the mean absolute deviation (MAD)
* of the solutions values from the base perido values is the minimum without calibration constraints
* is considered as the efficient RAP and used in the further analysis;

*);
*RAP is the risk aversion parameter value
*cx and lx are the activities levels
*obj gives the objective function value
*mean gives expected income
*var gives the variance of income
*std give the standard deviation of income
*shadprice gives the shadow price on the farmtype land constraint

* then what is the farm types' preference?
* this point is described by the farmer's EV utility function; however this
* parameter is not known:
* Solutions
*  One may estimate a risk avrsion parameter such that the difference between
*  observed behaviour and the model solution is minimized
*  (as in Brink and McCarl 1979) or Hazell et al. (1983)

* 1. Since revenue variation is not the only source of uncertainty
* that determines farmers choice (Hazell, 1986) (other things inlcude policy,
* resource constraints; ,etc. ) therefore, the Rap at which the mean absolute deviation (MAD)
* of the solutions values and the base period values is the minimum without calibration constraints
* is considered as the efficient RAP and used in the further analysis;
* rap for whcih athe aggregate acreage difference was the smallest.
* where several rap gievs the sam agreage dfiifce, the lowest value was chosen
*  if there was no dffi in acreage mix of various crops

DISPLAY OUTPUT;
*DISPLAY OUTPUT, calibuc.l,calibul.l,rap;

DISPLAY
          cbr
          cx.l
          lbr
          lx.l
          OUTPUT
*          COUTPUT
*          LOUTPUT
*          COUTPUT2
*          COUTPUT3
*          LOUTPUT2
*          LOUTPUT3
                    ;

*          MOUTPUT
*          FOUTPUT
*          FFOUTPUT;

*-------------------------------------------------------------------------------
*         insert optimum rap and continue
*-------------------------------------------------------------------------------
$offtext

*$Exit


parameter level,level1;
level(r,f,p) =  (sum(t, cx.l(r,f,t,p)$cp(p)) +lx.l(r,f,p)$ap(p));
level1(r,f,p1) =  sum(t, cx.l(r,f,t,p1)$cp(p1)) +lx.l(r,f,p1)$ap(p1);
*display level,level1,cx.l,lbr;

*$exit

parameter pro;
pro(r,p) = (sum((f,t)$cp(p), cbr(r,f,t,p)$cp(p)*FECY(r,f,t,p)*nf(r,f))+
                    sum(f$ap(p), lbr(r,f,p)$ap(p)*FEMY(r,f,p)*nf(r,f)));
*display EY,CBR,rpro,PRO,EMY,LBR;
*-------------------------------------------------------------------------------
*$exit


parameter idle,idlecost;

idle(r,f)= FLC(r,f,'land') -(sum((t,p)$cp(p), cx.l(r,f,t,p)) + sum(p$ap(p), lx.l(r,f,p)*lres(r,p,"gland")));

*idlecost(r,f)= (FLC(r,f,'land') -(sum((t,p)$cp(p), cx.l(r,f,t,p))
*                                + sum(p$ap(p), lx.l(r,f,p)*lres(r,p,"gland"))))* policy_var(r,'r_tax');

*display idle,idlecost;

*$exit

*-------------------------------------------------------------------------------
parameters c_ss
           t_ss
           f_ss
           r_ss
           n_ss
           lss
           cprof
           lprof,
           varcov;

*c_ss(r,f,t,p) = cx.l(r,f,t,p)*CY(r,f,t,p);
*t_ss(r,f,p)   = sum(t, cx.l(r,f,t,p)*CY(r,f,t,p));
*f_ss(r,f)     = sum((p,t), cx.l(r,f,t,p)*CY(r,f,t,p));
*r_ss(r)       = sum((f,t,p), cx.l(r,f,t,p)*CY(r,f,t,p));
*n_ss          = sum((r,f,t,p), cx.l(r,f,t,p)*CY(r,f,t,p));

*cprof(r,f,t,p) = ((Price_sup(r,p)+MeanPrice(r,p))*CY(r,f,t,p)-CDAVC(r,f,t,p)) * cx.l(r,f,t,p);
*lss(r,f,p) = lx.l(r,f,p)*LY(r,f,p);
*lprof(r,f,p) = ((Price_sup(r,p)+MeanPrice(r,p))*LY(r,f,p)-LDAVC(r,f,p)) *lx.l(r,f,p);

*display c_ss,t_ss,f_ss,r_ss,n_ss,lss, cprof,lprof;

*$Exit

parameter llx;
llx(r,f,ap)=round(lx.l(r,f,ap));
option llx:0;
lx.l(r,f,ap)= llx(r,f,ap);
*display cx.l, cx.m, llx, lx.m,nlpobj.l;
parameter css,lss;

css(r,f,p) = sum(t, cx.l(r,f,t,p))+lx.l(r,f,p);

*display css,covprice;
*$exit
*-------------------------------------------------------------------------------
parameter p_covar the variance of farm profit at regional level
          p_var ;
          p_covar(r,f) = sum(p, sum(p1, (sum(t, cx.l(r,f,t,p)$cp(p)) +lx.l(r,f,p)$ap(p))
                                         *CovRMR(r,p,p1)*
                                        (sum(t, cx.l(r,f,t,p1)$cp(p1))+lx.l(r,f,p1)$ap(p1))));

          p_var(r,f) =  sum(p, sum(p1, (sum(t, cx.l(r,f,t,p)$cp(p)) +lx.l(r,f,p)$ap(p))
                                         *CovRMR(r,p,p)*
                                       (sum(t, cx.l(r,f,t,p)$cp(p))  +lx.l(r,f,p)$ap(p))));
*display p_covar,p_var;;
*-------------------------------------------------------------------------------
*$exit

*===============================================================================
*         2nd Stage OF PMP CALIBRATION
*===============================================================================
* Linear program to calculate conefficients of PMP Quadractic
* cost function using the dual values of hectare planted
* with the data base on average cost function
* to uniquely derive the calibration cost function parameters

* 1          (i)   alpha= RDAVC - lambda
*            (ii)  gama = 2*lambda(2i)/X.l
*            (iii) elas = (davc+ lam)/(gam*x.l)  (Heckelei, 2003; Howitt, 2005)

* 2          (i)   alpha= DAVC
*            (ii)  gama = lambda(2i)/X.l
*            (iii) elas = e=lam/(gam*x.l) =    1  Howitt (1998)

* 3          (i)   alpha= 0
*            (ii)  gama = (DAVC + lambda(2i))/X.l
*            (iii) elas = e=lam/(gam*x.l)   (Paris and Howitt 1998)

* 3 Derive the elasticity of the marginal cost curve from theory/economics of
*   farm household decision making and the relative differences and risk of the
*   gross margin of each activity and farming system especially the risk preferences,
*   resource productivity and market access

*-------------------------------------------------------------------------------
PARAMETER
     cLam    PMP dual values (shadow prices on the activity constraints)
     cGam    Const function slope crops
     cAlpha  cost function intercept crops
     lLam    PMP dual values (shadow prices on the activity constraints)
     lGam    Const function slope  stocks
     lAlpha  cost function intercept stocks;

*-------------------------------------------------------------------------------
*initialise constants
     cLam(r,f,t,p)$cp(p) = 0;
     lLam(r,f,p)$ap(p)   = 0;

*If calibrated to land alloaction or number of animal levels
    clam(r,f,t,p)$(cbr(r,f,t,p) <> 0) = calibuc.m(r,f,t,p);
    llam(r,f,p)  $(lbr(r,f,p)   <> 0) = calibul.m(r,f,p);
*-------------------------------------------------------------------------------
$ontext
*Early specification - By Howitt, 1995; Howitt and Mean 1983; Bauer and Kasnakodlu 1990;
* Schmitz 1994; Arfini and Paris 1995
* However, Evidence from Cypris (2000) shows that the approach causes strong overreactions
* to changes in economic incentivesi.e high implied elasticities
    cGam(r,f,t,p)$(cbr(r,f,t,p) <> 0)   = clam(r,f,t,p)/cbr(r,f,t,p);
    lGam(r,f,p)  $(lbr(r,f,p)   <> 0)   = llam(r,f,p)  /lbr(r,f,p);

    cAlpha(r,f,t,p)$(CBR(r,f,t,p) <> 0) = RCDAVC1(r,t,p);
    lAlpha(r,f,p)$(lBR(r,f,p) <> 0)     = RLDAVC1(r,p);
*Using this, the elasticity will 1.0
$offtext

$ontext
*By (Paris 1988)
* Although this is generally more realistic property of (aggregate) producer response.
* However,the quantitative specification remains arbitrary
    cGam(r,f,t,p)$(cbr(r,f,t,p) <> 0)   = (RCDAVC1(r,t,p)+clam(r,f,t,p))/cbr(r,f,t,p) ;
    lGam(r,f,p)$(lbr(r,f,p)     <> 0)   = (RLDAVC1(r,p)+llam(r,f,p))/lbr(r,f,p)       ;

    cAlpha(r,f,t,p) = 0  ;
    lAlpha(r,f,p)   = 0  ;
*Using this, the elasticity will be 1.0
$offtext

$ontext
* Average cost approach
* By Heckelei and Britz (2000)
    cGam(r,f,t,p)$(CBR(r,f,t,p) <> 0)   =  2*clam(r,f,t,p) / cbr(r,f,t,p)$cp(p);
    lGam(r,f,p)$(lBR(r,f,p)     <> 0)   =  2*llam(r,f,p)   / lbr(r,f,p)$ap(p)  ;

    cAlpha(r,f,t,p)$(CBR(r,f,t,p) <> 0) =  RCDAVC1(r,t,p)  - cLam(r,f,t,p);
    lAlpha(r,f,p)$(lBR(r,f,p)     <> 0) =  RLDAVC1(r,p)    - lLam(r,f,p)  ;
* using this elasticity will be 0.5
$offtext

* Horner et. al. (1992) gives the idea that prefered activities is more elastic
* if the shadow price of an activity constraint is small compared to observed variable
* cost. On the other hand, supply is less elastic if the shadow price of an activity
* is large compared to observed variable cost.

*Check the elasticity of each activity

*-----------------------------------------------------------------------------------------------
*  Calibration using supply elasticity estimates
*$ontext
Table elas(r,f,p) prior econometric estimates of supply elasticities
* from ...
                  Wmaize    YMaize  Wheat   Soya    Sorghum  sunflower
    FState.f1     0.66      0.57    1.14    0.35    0.55     1.15
* assuming f2 is less reactive than f1 base on lower lever of asset especially land and operating capital
* the ratio is similar to asset ratio
    FState.f2     0.19      0.16    0.33    0.10    0.16     0.33
+
                 Beef_Cattle   mutton_Sheep   pork_Pig   Broilers_chicken  Layers_eggs  Dairy_cattle
    FState.f1    0.074         0.101          0.170      0.276             0.123        0.112
*    FState.f1    0.32          0.41           0.4        0.75              0.328        0.32
* assuming f2 is less reactive than f1
    FState.f2    0.037         0.051          0.085      0.138             0.062        0.056
;
*    FState.f2    0.09          0.12           0.11       0.21              0.094        0.09

*Check the elasticity of each activity
    cGam(r,f,t,p)  $(cbr(r,f,t,p) <> 0) =  (clam(r,f,t,p)+RCDAVC1(r,t,p))/(elas(r,f,p)*cbr(r,f,t,p)$cp(p));
    lGam(r,f,p)    $(lbr(r,f,p)   <> 0) =  (llam(r,f,p)  +RLDAVC1(r,p))  /(elas(r,f,p)*lbr(r,f,p)$ap(p));

    cAlpha(r,f,t,p)$(cbr(r,f,t,p) <> 0) = ((clam(r,f,t,p)+RCDAVC1(r,t,p))*(elas(r,f,p)-1))/elas(r,f,p);
    lAlpha(r,f,p)  $(lbr(r,f,p)   <> 0) = ((llam(r,f,p)  +RLDAVC1(r,p))  *(elas(r,f,p)-1))/elas(r,f,p);

*RLDAVC1(r,p)   + lLam(r,f,p)   - lgam(r,f,p)  *lbr(r,f,p)$ap(p)  ;
*$offtext
*-----------------------------------------------------------------------------------------------

display clam,llam,RCDAVC1,calpha,lalpha,cgam,lgam,RLDAVC1;

*$exit

*===============================================================================
*         3rd stage - Unconstrained non-linear caliberated model
*===============================================================================
*  Using the values of alphe and gama to specify the function
*  & use the function to generate the base solution

Variables   ncx    Nonlinear crop activities
            nlx    Nonlinear livestock activities
            nlpobj Nonliner objective function value
            ntbal
            nclpobj
            nllpobj
            nplpobj
            nflpobj
            nrlpobj
            nnlpobj;

Positive variable ncx,nlx
*            nclpobj
*           nllpobj
*            nplpobj
*            nflpobj
*            nrlpobj
                    ;

equations
          nrcon1    regional arable constraints (arable land shadow prices at region level)
          nrcon2    regional irrigable land constraints (irrigable land shadow prices at region level)
          nrcon3    regional grazing land constraints (grazing land shadow prices at region level)
          nrcon4    regional land constraints (land shadow prices at region level)
          nrcon5
          nrcon6
          nFcon1    farm type arable land upper constraints (arable land shadow prices at farm type level)
          nFcon2    farm type irrigable land upper constrains (irrigable land shadow prices at farm type level)
          nFcon3    farm type grazing land upper constraints (grazing land shadow prices at farm type level)
          nFcon4    farm type land upper constraints (land shadow prices at farm type level)
          nlpgm     total farm proft
          nfcon5
          nFcon6
          nlpobj_
          nclpobj_
          nllpobj_
          nplpobj_
          nflpobj_
          nrlpobj_
          nnlpobj_
          tlanduse;


* --- Regional resources are scaled to 10000 units
    nRcon1.scale(r,'aland')         =10000;
    nrcon2.scale(r,"irrigland")     =10000;
    nRcon3.scale(r,"gland")         =10000;
    nRcon4.scale(r,"land")          =10000;
    nrcon5.scale(r,"iwater")        =10000000;
    nRcon6.scale(r,"labour")        =100000;

* --- Farm-level resources are scaled to 10 units
    nfcon1.scale(r,f,'aland')       =10;
    nfcon2.scale(r,f,"irrigland")   =10;
    nfcon3.scale(r,f,"gland")       =1;
    nfcon4.scale(r,f,"land")        =10;
    nfcon5.scale(r,f,"iwater")      =10000;

*   fcon6.scale(r,f,"labour")      =10;

* --- Regional production, consumption and trade balance are scaled to 100,000 units
    ncx.scale(r,f,'dry','wmaize')    = 10;
    ncx.scale(r,f,'dry','ymaize')    = 10;
    ncx.scale(r,f,'dry','wheat')     = 10;

    ncx.scale(r,'f1','irrig','sorghum') = 0.1;
    ncx.scale(r,'f2','irrig','wheat')   = 0.1;

    nlx.scale(r,f,'beef-cattle')     = 10;
    nlx.scale(r,f,'dairy-cattle')    = 1;
    nlx.scale(r,f,'mutton-sheep')    = 100;
    nlx.scale(r,f,'pork-pig')        = 1;
    nlx.scale(r,f,'chicken-broilers')= 1000;
    nlx.scale(r,f,'chicken-eggs')    = 100;

    nclpobj_.scale(r,f,t,p)         =1000;
    nllpobj_.scale(r,f,p)           =1000;
    nflpobj_.scale(r,'f2')          =100;
    nflpobj_.scale(r,'f1')          =100000;
    nnlpobj_.scale                  =10000;

*   a. Regional land quality constraints
    nRcon1(r,"aland")..                 sum((f,t,p), ncx(r,f,t,p)*cres(r,t,p,"aland")*nf(r,f))                =l=RLC(r,"aland")     ;
    nrcon2(r,"irrigland")$t("irrig")..  sum((f,p), ncx(r,f,"irrig",p)*cres(r,"irrig",p,"irrigland")*nf(r,f))  =l=RLC(r,"irrigland") ;
    nRcon3(r,"gland")..                 sum((f,p), nlx(r,f,p)*lres(r,p,"gland")*nf(r,f))                      =l=RLC(r,"gland")     ;
    nRcon4(r,"land")..                  sum((f,t,p), ncx(r,f,t,p)*cres(r,t,p,"aland")*nf(r,f))
                                        +sum((f,p), nlx(r,f,p)*lres(r,p,"gland")*nf(r,f))                     =l=RLC(r,"land")      ;
    nrcon5(r,"iwater")$t("irrig")..     sum((f,p), ncx(r,f,"irrig",p)*cres(r,"irrig",p,"iwater")*nf(r,f))     =l=RLC(r,"iwater")    ;
    nRcon6(r,"labour")..                sum((f,t,p), ncx(r,f,t,p)*cres(r,t,p,"labour")*nf(r,f))
                                        +sum((f,p),nlx(r,f,p)*lres(r,p,"labour")*nf(r,f))                      =l=RLC(r,"labour")   ;
*   b. Farm-type land limits
    nFcon1(r,f,"aland")..                 sum((t,p), ncx(r,f,t,p)*cres(r,t,p,"aland"))                        =l=FLC(r,f,"aland")    ;
    nFcon2(r,f,"irrigland")$t("irrig")..  sum(p, ncx(r,f,"irrig",p)*cres(r,"irrig",p,"irrigland"))            =l=FLC(r,f,"irrigland");
    nFcon3(r,f,"gland")..                 sum(p, nlx(r,f,p)*lres(r,p,"gland"))                                =l=FLC(r,f,"gland")    ;
    nFcon4(r,f,"land")..                  sum((t,p), ncx(r,f,t,p)*cres(r,t,p,"aland"))
                                          +sum(p, nlx(r,f,p)*lres(r,p,"gland"))                              =l=FLC(r,f,"land")     ;
    nFcon5(r,f,"iwater")$t("irrig")..     sum(p, ncx(r,f,"irrig",p)*cres(r,"irrig",p,"iwater"))               =l=FLC(r,f,"iwater")   ;
*    nFcon6(r,f,'capital')..               sum((t,p), ncx(r,f,t,p)*CDAVC(r,t,p))+
*                                          sum(p, nlx(r,f,p)*LDAVC(r,p))                                       =l=FLC(r,f,'capital')  ;
*-------------------------------------------------------------------------------

*4. Policy constraints?


* Objective function
nclpobj_(r,f,t,p)$cp(p)..
***           add profits from cropping activities over tech
                    (
*                    FECMR(r,f,t,p)
                    (FECY(r,f,t,p)*Eprice(r,p) + byprod(r,p)+ policy_var(r,'p_sup'))
                    -(
                   calpha(r,f,t,p)
*                    (sum(res, cres(r,t,p,res)*cost(r,p,res))
*                     + policy_var(r,'interest')*(sum(res, cres(r,t,p,res)*cost(r,p,res)))
*                     - policy_var(r,'d_rebate')* policy_var(r,'d_per')*cres(r,t,p,'fuel')*cost(r,p,'fuel'))
*                     *(IPPI(r,'2004')/(sum(it, IPPI(r,it))/card(it)))+
*                     cLam(r,f,t,p) - cgam(r,f,t,p)*cbr(r,f,t,p)$cp(p)

                   +0.5*
                   cgam(r,f,t,p)
                   *ncx(r,f,t,p)))*ncx(r,f,t,p)  =e= nclpobj(r,f,t,p)$cp(p) ;

nllpobj_(r,f,p)$ap(p)..
***           add profits from cropping activities over tech
                    (
*                    FELMR(r,f,p)
                    (FELY(r,f,p)  *Eprice(r,p) + byprod(r,p)+ policy_var(r,'p_sup'))
                    -(
                    lalpha(r,f,p)
*                    (sum(res, lres(r,p,res)*cost(r,p,res))
*                     + policy_var(r,'interest')*(sum(res, lres(r,p,res)*cost(r,p,res)))
*                     - policy_var(r,'d_rebate')* policy_var(r,'d_per')*lres(r,p,'fuel')*cost(r,p,'fuel'))
*                     *(IPPI(r,'2004')/(sum(it, IPPI(r,it))/card(it)))+
*                     lLam(r,f,p) - lgam(r,f,p)*lbr(r,f,p)$ap(p)

                    +0.5*
                    lgam(r,f,p)
                    *nlx(r,f,p)))*nlx(r,f,p)     =e= nllpobj(r,f,p) ;

* gross margin at farm level
nplpobj_(r,f,p)..

***           add profits from cropping activities
               sum(t, nclpobj(r,f,t,p)$cp(p))

***           add profit from cropping activities
                     + nllpobj(r,f,p)$ap(p)                                     =e= nplpobj(r,f,p);

nflpobj_(r,f).. sum(p, nplpobj(r,f,p))

*** subtract revenue risk component
                  - farm_fac(r,f,'rap')*(sum(p, sum(p1, (sum(t, ncx(r,f,t,p)$cp(p)) +nlx(r,f,p)$ap(p))
                                               *CovRMR(r,p,p1)*
                                           (sum(t, ncx(r,f,t,p1)$cp(p1)) +nlx(r,f,p1)$ap(p1)))))

*** subtract agricultural land tax as a fixed cost
                  - FLC(r,f,'land')* policy_var(r,'l_tax')*policy_var(r,'l_price')

*** subtract water tariff (to show whether farmers will choose to irrigate or not)
                  - FLC(r,f,'iwater')*policy_var(r,'w_tariff')

*** add income from rentable property and adjust for depreciation or transaction cost (40%)
*    Carolina Trivelli (1997)
* 1. Increase in transaction costs in the output or input market
*    Decreases the real net rent received by the tenant/landowner
* 2. Increase in landowners fix costs (depreciation, maintenance costs)
*    Reduces the net rent that could be obtained from land. Also induces renting instead of buying.
* 3. Increase in searching, bargaining and transfer costs in the land market
*    Reduces the net rents that could be obtained from land. Also induces renting instead of buying.
*  4.Increases in real interest rate
*    Changes the opportunity cost of investments, makes more attractive other sectors

    +(FLC(r,f,'dryland')   - sum(p$cp(p), ncx(r,f,'dry',p)*cres(r,'dry',p,'dryland')))       * policy_var(r,'dryrent')  * 0.6
    +(FLC(r,f,'irrigland') - sum(p$cp(p), ncx(r,f,'irrig',p)*cres(r,'irrig',p,'irrigland'))) * policy_var(r,'irrigrent')* 0.6
    +(FLC(r,f,'gland')     - sum(p$ap(p), nlx(r,f,p)  *lres(r,p,'gland')))                   * policy_var(r,'grent')    * 0.6
                                                                                =e=nflpobj(r,f)  ;

nrlpobj_(r)..     sum(f, nflpobj(r,f))                                          =e=nrlpobj(r)    ;

nnlpobj_..        sum(r, nrlpobj(r))                                            =e=nnlpobj       ;

*---------------------------------------------------------------------------------
*The small positive lower bound can be particularly useful in nonlinear
* programming where functions may not be defined at zero.

* Any variable initialization to meaning values ????????
*this lower bound assumes farmers cannot quit.
*It's better to leave it at zero since farmers have options of leasing farm land
* if found not profitable to produce
         ncx.l(r,f,t,p) = 0;
         nlx.l(r,f,p)   = 0;

* setting initial conditions?
*It is sometimes also necessary to set the current level of a variable.
* This is particularly true in nonlinear programming where it is advisable to
* pick starting solutions because results may depend on initial variable values.
*cx.l(r,f,t,p)$(CBR(r,f,t,p) > 0 ) = cbr(r,f,t,p);
*lx.l(r,f,p)$(LBR(r,f,p) > 0 )     = lbr(r,f,p);

*         ncx.l(r,f,t,p)$(CBR(r,f,t,p) > 0 ) = cbr(r,f,t,p);
*         nlx.l(r,f,p)                       = lbr(r,f,p)  ;

* Any bound to some variables to avoid numerical difficulties ??????
*parameter tlanduse;
*         ncx.up(r,f,t,p) = 100*cbr(r,f,t,p);
*         nlx.up(r,f,p)   = 100*lbr(r,f,p);

Model SARASprimal /
                    nrcon1
                    nrcon2
                    nrcon3
                    nrcon4
                    nrcon5
                    nrcon6
                    nfcon1
                    nfcon2
                    nfcon3
                    nfcon4
                    nfcon5
*                    nfcon6
*                    nrss_
*                    nprd_
                    nclpobj_
                    nllpobj_
                    nplpobj_
                    nflpobj_
                    nrlpobj_
                    nnlpobj_
                                                           /;

          SARASprimal.scaleopt=1;

*

*--------------------------------------------------------------------------------
      SARASprimal.scaleopt = 1;
*      SARASprimal.OPTFILE  = 1;

Solve SARASprimal using nlp maximizing nnlpobj;

display cbr,ncx.l,lbr,nlx.l;
*-------------------------------------------------------------------------------


*===============================================================================
*?*  Results - Check calibration by comparing base allocation with optimal allocation
*===============================================================================
Parameters LPerdif Percent Diffference in livestock activity
           CPerdif Percent Diffference in cropping activitity
           Perdif;

           CPerdif(r,f,t,p)$cbr(r,f,t,p) = (ncx.l(r,f,t,p) - cbr(r,f,t,p)) /cbr(r,f,t,p)*100;
           CPerdif(r,f,t,p)$(abs(CPerdif(r,f,t,p) le .0001)) = 0;
           LPerdif(r,f,p)  $lbr(r,f,p)   = (nlx.l(r,f,p)   - lbr(r,f,p))   /lbr(r,f,p)  *100;
           LPerdif(r,f,p)  $(abs(LPerdif(r,f,p) le .0001)) = 0;

Display    lperdif,cperdif;
*-------------------------------------------------------------------------------
*$exit

parameter nbas5_rss,cbas5_rss
          m_cdd  model solution - crop activity levels
          m_rcdd
          m_ldd  model solution - stock activity levels
          m_rldd
          o_cdd  observed - activity level - crop production
          o_ldd  observed - activity level - stock production
          def_cdd  percentage difference observed and optimal solution  - crops
          def_ldd  percentage difference observed and optimal solution  - stocks
          o_fss    observed - supply    - farm level
          m_fss    model solution supply  - farm level
          o_rss    observed - supply  - regional
          m_rss    model solution - supply - regional
          m_pgm    optimal gross marging - crop level
          m_fgm    optimal gross marging - farm-type level
          m_rgm    optimal gross marging - regional level
          m_tbal   optiaml trade balance
          m_fres
          m_rres
          o_fres
          o_rres
          def_fres
          def_rres
          m_css
          m_pss
          m_lss
          o_css
          o_lss
          m_land_tax
          m_water_tariff
          m_land_rent
          m_land_rented
          d_rss
          d_tbal
          d_fss
          m_pdd
          m_rpdd
          o_pdd
          def_pdd
          def_css
          m_cgm
          m_lgm
          m_scss
          def_pss
           o_pss
          def_lss

          ;

* model solution - activity level
  m_cdd(r,f,t,p) = ncx.l(r,f,t,p)$cp(p)*nf(r,f);
  m_rcdd(r,t,p)  = sum(f,  m_cdd(r,f,t,p));

  m_pdd(r,f,p)   = sum(t, m_cdd(r,f,t,p));
  m_rpdd(r,p)    = sum(f, m_pdd(r,f,p));

  m_ldd(r,f,p)   = nlx.l(r,f,p)$ap(p)*nf(r,f);
  m_rldd(r,p)    = sum(f,  m_ldd(r,f,p));

* observed - activity level
  o_cdd(r,f,t,p) = cbr(r,f,t,p)$cp(p)*nf(r,f);
  o_ldd(r,f,p)   = lbr(r,f,p)$ap(p)  *nf(r,f);
  o_pdd(r,f,p)   = sum(t, o_cdd(r,f,t,p));

* % difference -  activity levels
  def_cdd(r,f,t,p)$(o_cdd(r,f,t,p) ne 0) = (m_cdd(r,f,t,p)$cp(p) - o_cdd(r,f,t,p)$cp(p)) /o_cdd(r,f,t,p)$cp(p)*100;
  def_pdd(r,f,p)  $(o_pdd(r,f,p) ne 0)   = (m_pdd(r,f,p)         - o_pdd(r,f,p))         /o_pdd(r,f,p)        *100;
  def_ldd(r,f,p)  $(o_ldd(r,f,p)  ne 0)  = (m_ldd(r,f,p)$ap(p)   - o_ldd(r,f,p)$ap(p))   /o_ldd(r,f,p)$ap(p)  *100;

* model solution - supply at activity level
  m_css(r,f,t,p) = m_cdd(r,f,t,p)$cp(p)*FECY(r,f,t,p);
  m_pss(r,f,p)   = sum(t, m_css(r,f,t,p));
  m_lss(r,f,p)   = m_ldd(r,f,p)$ap(p)  *FEMY(r,f,p);

* observed - supply at activity level
  o_css(r,f,t,p) = o_cdd(r,f,t,p)$cp(p)*FECY(r,f,t,p);
  o_pss(r,f,p)   = sum(t, o_css(r,f,t,p));
  o_lss(r,f,p)   = o_ldd(r,f,p)  $ap(p)*FEMY(r,f,p)  ;

* % difference -  supply
  def_css(r,f,t,p)$(o_css(r,f,t,p) ne 0) = (m_css(r,f,t,p)$cp(p) - o_css(r,f,t,p)$cp(p)) /o_css(r,f,t,p)$cp(p)*100;
  def_pss(r,f,p)  $(o_pss(r,f,p)   ne 0) = (m_pss(r,f,p)         - o_pss(r,f,p))         /o_pss(r,f,p)        *100;
  def_lss(r,f,p)  $(o_lss(r,f,p)   ne 0) = (m_lss(r,f,p)$ap(p)   - o_lss(r,f,p)$ap(p))   /o_lss(r,f,p)$ap(p)  *100;

*----------------------------------------------------------------------------------------------------
* model solution - expenditure on resource use
  m_fres(r,f,res) = sum((t,p)$cp(p),  ncx.l(r,f,t,p)*cres(r,t,p,res)*cost(r,p,res))*nf(r,f)+
                    sum(p$ap(p),      nlx.l(r,f,p)  *lres(r,p,res)  *cost(r,p,res))*nf(r,f);

  m_rres(r,res)   = sum(f,            m_fres(r,f,res));


* observed - expenditure on resource use
  o_fres(r,f,res) = sum((t,p)$cp(p),  cbr(r,f,t,p)*cres(r,t,p,res)*cost(r,p,res))*nf(r,f)+
                    sum(p$ap(p),      lbr(r,f,p)  *lres(r,p,res)  *cost(r,p,res))*nf(r,f);
  o_rres(r,res)   = sum(f,       o_fres(r,f,res));

* % difference -  expenditure on resource use
  def_fres(r,f,res)$(m_fres(r,f,res) <> 0) = (o_fres(r,f,res) - m_fres(r,f,res)) /m_fres(r,f,res)*100;
  def_rres(r,res)  $(m_rres(r,res)   <> 0) = (o_rres(r,res)   - m_rres(r,res))   /m_rres(r,res)  *100;

*$ontext
* observed - supply
  o_fss(r,f,p)   = sum(t, cbr(r,f,t,p)$cp(p)*FECY(r,f,t,p)*nf(r,f))  + lbr(r,f,p)$ap(p)*FEMY(r,f,p)*nf(r,f);

* model solution - supply
  m_fss(r,f,p)   = sum(t, ncx.l(r,f,t,p)$cp(p)*FECY(r,f,t,p)*nf(r,f))+ nlx.l(r,f,p)$ap(p)*FEMY(r,f,p)*nf(r,f);

* does is calibrate?
  d_fss(r,f,p)$(o_fss(r,f,p) ne 0)   = (m_fss(r,f,p)-o_fss(r,f,p))/o_fss(r,f,p)*100;

* observed - supply
  o_rss(r,p)                   = sum(f,   o_fss(r,f,p));

* model solution - supply
  m_rss(r,p)                   = sum(f,    m_fss(r,f,p));
  d_rss(r,p)$(o_rss(r,p)ne 0)  = (m_rss(r,p)- o_rss(r,p))/o_rss(r,p)*100;

* optimal/model trade balance
  m_tbal(r,p) = m_rss(r,p) - rcc(r,p) ;

  d_tbal(r,p) = (m_tbal(r,p)-rpx(r,p))/rpx(r,p)*100 ;
*  --- delete differences below 0.0001
  d_tbal(r,p)$(abs(d_tbal(r,p)) le 0.0001 ) = 0;

* model solution - farm income
  m_cgm(r,f,t,p)$(cbr(r,f,t,p) ne 0) =  FECMR(r,f,t,p)$cp(p) - RCDAVC1(r,t,p);
  m_lgm(r,f,p)                        = FELMR(r,f,p)$ap(p)   - RLDAVC1(r,p);

*  model solution - activity level
*  m_cdd(r,f,t,p) = ncx.l(r,f,t,p)$cp(p);
*  m_ldd(r,f,p)   = nlx.l(r,f,p)$ap(p);

 m_land_tax(r,f)       = FLC(r,f,'land')* policy_var(r,'l_tax')*policy_var(r,'l_price');
 m_water_tariff(r,f)   = FLC(r,f,'iwater')*policy_var(r,'w_tariff');
* m_land_rent(r,f,res)  = (FLC(r,f,'land') - (sum((t,p)$cp(p), ncx.l(r,f,t,p))
*                            +  sum(p$ap(p), nlx.l(r,f,p)*lres(r,p,"gland")))) *(policy_var(r,'rent'));

 m_land_rented(r,f)   = (FLC(r,f,'land') - (sum((t,p)$cp(p), ncx.l(r,f,t,p))
                      +  sum(p$ap(p), nlx.l(r,f,p)*lres(r,p,"gland")))) ;



display
*          o_cdd
*          m_cdd
*          def_cdd
*          m_pdd
*          m_rpdd
*          o_pdd
*          d_pdd

*          o_ldd
*          m_ldd
*          def_ldd


          m_fres

          m_rres
          o_fres
          o_rres

          def_fres
          def_rres

*          o_fss
*          m_fss
*          d_fss

*          o_rss
*          m_rss
*          rpro
*          d_rss

*          m_tbal
*          d_tbal
*          rpx
*          m_cgm
*          m_lgm
*          m_fgm
*          m_rgm
*          m_land_tax
*          m_water_tariff
*          m_land_rent
*          m_land_rented
*          m_css
*          m_pss

*$offtext
         ;
*-------------------------------------------------------------------------------
*$exit

*-------------------------------------------------------------------------------
*         COMPUTE MARGINAL COST OF BEARING RISK
*-------------------------------------------------------------------------------
* Incorporating Kuhn-Tucker conditions into the E-V solutions to arrive at the
* marginal cost of bearing risk (-2*RapX'S). this will help to adjust the optimal
* shadow prices by adjusting the risk (Mcarl & Spreen, 2004):
* resource cost is related with marginal GM and a marignal cost of bearing risk

Parameter p_mcrisk marginal cost of bearing risk for each activity for farm type
          p_covar1 risk premium for farm type
          p_fmcrisk marginal cost of bearing risk for each activity per each farm unit R per ha (animal)
          p_fcovar1 risk premium for each farm unit R per ha (or animal)                               ;

   p_mcrisk(r,f,p) = -2*farm_fac(r,f,'rap')*(sum(t, ncx.l(r,f,t,p)$cp(p))+nlx.l(r,f,p)$ap(p))*CovRMR(r,p,p);
   p_covar1(r,f,p) =  2*farm_fac(r,f,'rap')*(sum(t, ncx.l(r,f,t,p)$cp(p))+nlx.l(r,f,p)$ap(p))*CovRMR(r,p,p);

   p_fmcrisk(r,f,p) = -2*farm_fac(r,f,'rap')*(sum(t, ncx.l(r,f,t,p)$cp(p))+nlx.l(r,f,p)$ap(p))*CovRMR(r,p,p)/nf(r,f);
   p_fcovar1(r,f,p) =  2*farm_fac(r,f,'rap')*(sum(t, ncx.l(r,f,t,p)$cp(p))+nlx.l(r,f,p)$ap(p))*CovRMR(r,p,p)/nf(r,f);

Display p_mcrisk,p_covar1,p_fmcrisk,p_fcovar1;

*-------------------------------------------------------------------------------
*$exit

*===============================================================================
*$ontext
* shadow price or opportunity cost of resources
parameter
          r_aland shadow price or opportunity cost of aland at region level
          r_iland shadow price or opportunity cost of irrigable land at region level
          r_gland shadow price or opportunity costof grass land  at region level
          r_land shadow price or opportunity costof land  at region level
          r_iwater
          r_labour

          f_aland shadow price or opportunity cost of aland at farm level
          f_iland shadow price or opportunity cost of irrigable land at farm level
          f_gland shadow price or opportunity costof grass land at farm level
          f_land shadow price or opportunity costof land at farm level
          f_iwater
          f_capital;

          r_aland(r,"aland")     = nrcon1.m(r,'aland');
          r_iland(r,"irrigland") = nrcon2.m(r,'irrigland');
          r_gland(r,"gland")     = nrcon3.m(r,'gland');
          r_land(r,"land")       = nrcon4.m(r,'land');
          r_iwater(r,"iwater")   = nrcon5.m(r,'iwater');
          r_labour(r,"labour")   = nrcon6.m(r,'labour');

          f_aland(r,f,'aland')       = nfcon1.m(r,f,'aland');
          f_iland(r,f,'irrigland')   = nfcon2.m(r,f,'irrigland');
          f_gland(r,f,'gland')       = nfcon3.m(r,f,'gland');
          f_land(r,f,'land')         = nfcon4.m(r,f,'land');
          f_iwater(r,f,"iwater")     = nfcon5.m(r,f,'iwater');
*          f_capital(r,f,'capital')   = nfcon6.m(r,f,'capital');


*display   r_aland,r_iland,r_gland,r_land,r_iwater,r_labour,f_aland,f_iland,f_gland,f_land,f_iwater;
*$offtext
*===============================================================================
*$exit

*===============================================================================
*$ontext
* marginal opportunity cost of an ha of activities or a unit of livestock
* marginal opportunity cost = Net or Gross margin - total opportunity cost
parameter
          r_dry   marginal opportunity cost of an ha of a crop activity at regional level
          r_irrig marginal opportunity cost of a livestock activity unit at regional level
          r_stock marginal opportunity cost of a livestock activity unit at regional level
          f_dry   marginal opportunity cost of an ha of a crop activity at farm level
          f_irrig marginal opportunity cost of a livestock activity unit at farm level
          f_stock marginal opportunity cost of a livestock activity  unit at farm level
          ;
* at farm type levels
          f_dry(r,f,'dry',p)$cp(p)      =FECMR(r,f,'dry',p)   - sum(res, cres(r,'dry',p,res)   * f_aland(r,f,'aland'));
          f_irrig(r,f,'irrig',p)$cp(p)  =FECMR(r,f,'irrig',p) - sum(res, cres(r,'irrig',p,res) * f_iland(r,f,'irrigland'));
          f_stock(r,f,p)$ap(p)          =FELMR(r,f,p)         - sum(res, lres(r,p,res)         * f_gland(r,f,'gland'));

* at region levels
          r_dry(r,'dry',p)      = sum(f, FECMR(r,f,'dry',p)   - sum(res, cres(r,'dry',p,res)   *r_aland(r,'aland')))/card(f);
          r_irrig(r,'irrig',p)  = sum(f, FECMR(r,f,'irrig',p) - sum(res, cres(r,'irrig',p,res) *r_iland(r,'irrigland')))/card(f);
          r_stock(r,p)          = sum(f, FELMR(r,f,p)         - sum(res, lres(r,p,res)         *r_gland(r,'gland')))/card(f);

*Compare with dual values of calibration constraints
display f_dry,f_irrig,cLam,f_stock,r_dry,r_irrig,r_stock,llam;
*$offtext
*===============================================================================
*$exit

*===============================================================================
*a quick check on the calibration. mc = vmp
*$ontext
parameter mcc marginal cost crop
          mcc1
          mcl marginal cost livestock
          mcl1
          vmpc value of marginal product
          vmpl value of marginal product;

   mcc(r,f,t,p)$(cbr(r,f,t,p) <>0)  = calpha(r,f,t,p) + cgam(r,f,t,p) *ncx.l(r,f,t,p)$cp(p);
   mcc1(r,f,t,p)$(cbr(r,f,t,p) <>0) = RCDAVC1(r,t,p)  + clam(r,f,t,p);
   mcl(r,f,p)$(lbr(r,f,p) <>0)      = lalpha(r,f,p)   + lgam(r,f,p)   *nlx.l(r,f,p)$ap(p);
   mcl1(r,f,p)$(lbr(r,f,p) <>0)     = RLDAVC1(r,p)    + llam(r,f,p);
   vmpc(r,f,t,p)$(cbr(r,f,t,p) <>0) = FECMR(r,f,t,p)  - Mcc(r,f,t,p);
   vmpl(r,f,p)$(lbr(r,f,p) <>0)     = FELMR(r,f,p)    - mcl(r,f,p);

display mcc,mcc1,vmpc,mcl,mcl1,vmpl;
*$offtext
*===============================================================================
*$exit


*===============================================================================
*                             MODEL VALIDATION
*===============================================================================
*$ontext
*  Generate marginal cost curve elasticity to calibrate the curvature of the cost function
*  base on the calibration parameters generated in stage 2. Check the consistency wrt either
*  2. price elasticities of ss found in literature (Heckelei, 2003);


parameter

          c_elas equilibrium elasticities implied by the calibrated cost functions i.e unrestricted PMP calibration - crops
          l_elas equilibrium elasticities implied by the calibrated cost functions i.e unrestricted PMP calibration - stocks;

* 1. It may not be rational to igonre the effect of farm type on elasticities
*    effieciency changes per activity within and over individual farms
*    (machineries and equaipments; less efficient farms fold up; increased share in
*    total production of more efficient farms,etc. etc.)
*    Therefore we consider the effect of farm type on elasticities   (Helming, 2005)

     c_elas(r,f,t,p)$(cbr(r,f,t,p) > 0 and cgam(r,f,t,p) > 0)  = Eprice(r,p) /(cgam(r,f,t,p)*cbr(r,f,t,p));
     l_elas(r,f,p)$(lbr(r,f,p) > 0     and lgam(r,f,p) > 0)    = EPrice(r,p) /(lgam(r,f,p)  *lbr(r,f,p));

display c_elas,l_elas;

*$Exit

*$ontext
*----------------------------------------------------------------
* Calculating the supply elasticity implied by the PMP parameters.
* Calculation acreage supply response to 1 percent change in gross margin
*-------------------------------------------------------------------------------
* Assume constant yields, supply elasticity = (dx/mc)(*gross margin/x.l)
* which equals elas = (davc+ lam)/(gam*x.l)  (Heckelei, 2003; Howitt, 2005)
*   And since the research objectives is to examine the substitution between enterprise
*    (dryland and irrigaged) rather than individual crops the potential impact of changes
*    in farm industry structure (i.e increasing the representation of emerging farmtyp)
*    onthe level of resource use and regional output supply then (Brennan, 2005)
*    Thi is preferable moreso that the elasticities for the enterprise and or the
*    farm types in question are not known or available

* --- increase of gross margin by 1 percent
* (it is observed that varying GM increase gives varying elasticities)
* (it is therefore recommended to give average increase rather than
* abitrary increase before concluding whether the model calibrates to
* prior elasticities or not since there is alwasy times series data on
* gross margin variation
* find the cov or prices increase i.e do prices move in the same direction?;
* or do they co-integrate if they do by same proportion?
* constnt yield and DAVC is assumed as

PARAMETERs
          celas acreage response to 1 percent change in gross margin
          lelas stock response to 1 percent change in gross margin
          rcss
          r_celas
          r_lelas
          rs_celas
          start1;
Loop(p2,

* increasee or decrease price
    EPrice(r,p) = EPrice(r,p)  / 1.01;

*SARASprimal.OPTFILE = 1;

Solve SARASprimal using nlp maximizing nnlpobj;

*---percentage change in land allocation and tech
    celas(r,f,t,p)$(cbr(r,f,t,p) ne 0 ) = (ncx.l(r,f,t,p) - cbr(r,f,t,p))/cbr(r,f,t,p)*100;

    lelas(r,f,p)  $(lbr(r,f,p)   ne 0 ) = (nlx.l(r,f,p)   - lbr(r,f,p))/ lbr(r,f,p) *100;

 r_celas(r,p)$( sum((f,t),cbr(r,f,t,p)) <> 0 ) =
     (sum((f,t), (celas(r,f,t,p)/100*cbr(r,f,t,p)*nf(r,f)*FECY(r,f,t,p)+cbr(r,f,t,p)*nf(r,f)*FECY(r,f,t,p))
                 -cbr(r,f,t,p)*nf(r,f)*FECY(r,f,t,p)))  / sum((f,t), cbr(r,f,t,p)*nf(r,f)    *FECY(r,f,t,p))*100;

 r_lelas(r,p)$( sum(f, lbr(r,f,p)) <> 0 ) =
     (sum(f, (lelas(r,f,p)/100*lbr(r,f,p)*nf(r,f)*FELY(r,f,p)+lbr(r,f,p)*nf(r,f)*FELY(r,f,p))
                -lbr(r,f,p)*nf(r,f)*FELY(r,f,p))) / sum(f, lbr(r,f,p)   *nf(r,f)*FELY(r,f,p))*100;

     EPrice(r,p) = EPrice(r,p) * 1.01;

);

*  Write the results to the excel conformable file. use the Excel regression to
*  calculate the point elasticity (own-price and cross) of supply

display  celas,lelas,r_celas,r_lelas;
*$offtext
*-------------------------------------------------------------------------------
*$exit


*===============================================================================
*         POLICY/MARKET ENVIRONMENT SIMULATION
*===============================================================================
*  SIMULATION
* FOR EACH SIMULATION COMPUTE THE
*1. SUPPLY RESPONSE
*2. CHANGES IN CROPPING PATTERN/RESOURCE USE/LAND ALLOCATION/RISK MANAGEMENT-PORTIFOLIO SELECTION
*3. FARM INDUSTRY STRUCUTRE
*4. TRADE BALANCE/SELF-SUFFICIENCY

*===============================================================================
*   FORECAST THE SUPPLY FUNCTION acreage/activity response (supply funcion) to changes in price
*===============================================================================
* Generate both own-price and cross price elasticity at base price and activity levels
* note that response differ for basis and non-basis activities
* 1. use the gams parameterization loop to parametrically increase teh price of each crop in 5 10% steps.
* 2. use the results with the excel regression to fit a regression and
*    get elasticity @ base price and activity levels;
* 3. use the regression to calculate the point elasticity of supply at the quantity of X activity level
* the formula = e = (1/slope)*P/X

* i.  Parameterisation of the price of each crop/livestock starting a 50% reduction
* and increasing by twelve 5% steps. Using the Excel regression to calculate the
* point leasticity of supply of ech crop at the base price and quantity
* ii.  check is the regression elasticy similar to the calibration elasticity?
* iii. modify the parameterisation loop and show the effect of a crop price eg.
* wmaize on the amount of other crops produced. Calculate the cross elasticity
* of supply atht ebase wmaize price

$ontext

set LP1 /1*10/;

PARAMETERs
          shift1    loop shifter
          Pricelp1  run price
          lp1_css   run activity levels crops
          lp1_rcss  run supply levels   crops
          lp1_lss   run activity levestock
          lp1_rlss  run supply levels
          lp1_rss
          lp1_fss
          bas_nf           ;

          scalar step1  /0.010/  ;
          scalar start2 / 1/  ;

*  Eprice(r,p) = Eprice(r,p) * 0.5;

Loop(lp1,

* and increasing by ten 1% steps
    Eprice(r,p) = Eprice(r,p) /start2;

Solve SARASprimal using nlp maximizing nnlpobj;

    Pricelp1(lp1,r,p)      = Eprice(r,p);

    lp1_rss(lp1,r,p)       = sum((f,t), ncx.l(r,f,t,p)) + sum(f, nlx.l(r,f,p));

    lp1_fss(lp1,r,f,p)     = sum(t, ncx.l(r,f,t,p))     +      nlx.l(r,f,p);

    shift1(lp1) = start2          ;
    start2      = start2  + step1 ;

);

display shift1, Pricelp1;

option lp1_fss :3:2:1; display lp1_fss;
display lp1_rss;
*-------------------------------------------------------------------------------
$offtext

*$Exit



*-------------------------------------------------------------------------------
* APPLICation
*-------------------------------------------------------------------------------


*$ontext
*===============================================================================
* 3. Regional Supply Response to Land redistribution: (increase in lrad farmers)
*    Trend in and proposed (planned) number of emerging farmers settlement
*    Increasing Number of emmerging farms : 30% land transfer
*-------------------------------------------------------------------------------
Parameter
          Bas_nf
          bas_flc
          trans_flc
          run_nf2
          trans_nf
          trans_fss
          deftrans_fss   change in farm type supply
          trans_rss
          deftrans_rss   change in regional supply
          trans_tbal
          deftrans_tbal  change in trade balance
          trans_fres
          deftrans_fres
          trans_rres
          deftrans_rres
          trans_cdd
          deftrans_cdd
          trans_rcdd
          deftrans_rcdd
          trans_pdd
          deftrans_pdd
          trans_rpdd
          deftrans_rpdd
          trans_ldd
          deftrans_ldd
          trans_rldd
          deftrans_rldd
          ;

*   Base number of farms in each farm type
    bas_nf(r,f) = nf(r,f);

*   Base resource levels at farm type levels
    bas_flc(r,f,res) = flc(r,f,res);

*number of farms must be integer
*   Scinario -
*   1. transfer 30% of land resources from f1 to establish more of f2 farm type
* only about only 2.5% has been transfered so far, there remains 27.5 to be transfered.
*   2. this implies increasing number of f2
*   3. coupled with decreasing number of f1 and changing farm size for remaining f1

*assuming the rate of farm folding up is geometric, then number of farm units in 2014 is given by
*ar^n-1 when a = 8531 in 2002, r = fincrease(r,'f'); n = 13


* 1. projected land transfer and corresponding changes in the number of farm units
*    run_nf(r,f,yr)$(yes$(ord(yr) gt card(ot))) = nf(r,f) + farm_fac(r,f,'fgrowth');
*    nf(r,f)       = run_nf(r,f,ft)     ;
    run_nf(r,f,yr)$(yes$(ord(yr) gt card(ot))) = nf(r,f) + card(ot)*farm_fac(r,f,'fgrowth');
    trans_nf(r,'f1')  = run_nf(r,'f1','2015');
    nf(r,'f1')        = trans_nf(r,'f1')     ;

    FLC(r,'f1',res)$fix(res) = (0.725*bas_nf(r,'f1')*Bas_FLC(r,'f1',res))/nf(r,'f1');
    trans_flc(r,'f1',res)= FLC(r,'f1',res);

    run_nf2(r,'f2')  = round(0.275*bas_nf(r,'f1')*Bas_FLC(r,'f1','land')/bas_flc(r,'f2','land'))+Bas_nf(r,'f2');
    nf(r,'f2')       = run_nf2(r,'f2');

* 4. projected farm level yield with technical progress
  FECY(r,f,t,p)   = FECY(r,f,t,p)*(1 + farm_fac(r,f,'ctfp'));
  FELY(r,f,p)     = FELY(r,f,p)  *(1 + farm_fac(r,f,'ltfp'));
  FEMY(r,f,p)     = FEMY(r,f,p)  *(1 + farm_fac(r,f,'ltfp'));

  Solve SARASprimal using nlp maximizing nnlpobj;

*===============================================================================
*                              RESOURCE DEMAND (EXPENDITURE APPROACH)
*-------------------------------------------------------------------------------
*   effect on expenditure on resource use
    trans_fres(r,f,res) = sum((t,p)$cp(p),  ncx.l(r,f,t,p)*cres(r,t,p,res)*cost(r,p,res))*nf(r,f)+
                          sum(p$ap(p),      nlx.l(r,f,p)  *lres(r,p,res)  *cost(r,p,res))*nf(r,f);

    deftrans_fres(r,f,res)$(m_fres(r,f,res) ne 0) = (trans_fres(r,f,res) - m_fres(r,f,res))/m_fres(r,f,res)*100;
    deftrans_fres(r,f,res)$(abs(deftrans_fres(r,f,res)) le 0.0001) = 0;

    trans_rres(r,res)   =  sum(f, trans_fres(r,f,res));
    deftrans_rres(r,res)$(m_rres(r,res) ne 0)= (trans_rres(r,res) - m_rres(r,res))/m_rres(r,res)*100;
    deftrans_rres(r,res)$(abs(deftrans_rres(r,res)) le 0.0001) = 0;
*-------------------------------------------------------------------------------


*===============================================================================
*                              ACTIVITY LEVEL
*-------------------------------------------------------------------------------
*   effect on activity level at technology level - dryland and irrigated
    trans_cdd(r,f,t,p) = ncx.l(r,f,t,p)$cp(p)*nf(r,f);
    deftrans_cdd(r,f,t,p)$(m_cdd(r,f,t,p) ne 0) = (trans_cdd(r,f,t,p) - m_cdd(r,f,t,p))/m_cdd(r,f,t,p)*100;
    deftrans_cdd(r,f,t,p)$(abs(deftrans_cdd(r,f,t,p)) le 0.0001) = 0;

*   effect on activity level - crops
    trans_pdd(r,f,p) = sum(t, trans_cdd(r,f,t,p));
    deftrans_pdd(r,f,p)$(m_pdd(r,f,p) ne 0 ) = (trans_pdd(r,f,p) - m_pdd(r,f,p))/m_pdd(r,f,p)*100;
    deftrans_pdd(r,f,p)$(abs(deftrans_pdd(r,f,p)) le 0.0001) = 0;

*   effect on activity level - stock
    trans_ldd(r,f,p) = nlx.l(r,f,p)$ap(p)*nf(r,f);
    deftrans_ldd(r,f,p)$(m_ldd(r,f,p) ne 0) = (trans_ldd(r,f,p) - m_ldd(r,f,p))/m_ldd(r,f,p)*100;
    deftrans_ldd(r,f,p)$(abs(deftrans_ldd(r,f,p)) le 0.0001) = 0;

* At region level
*   effect on activity level at technology level
    trans_rcdd(r,t,p) = sum(f, trans_cdd(r,f,t,p)$cp(p));
    deftrans_rcdd(r,t,p)$(m_rcdd(r,t,p) ne 0) = (trans_rcdd(r,t,p) - m_rcdd(r,t,p))/m_rcdd(r,t,p)*100;
    deftrans_rcdd(r,t,p)$(abs(deftrans_rcdd(r,t,p)) le 0.0001) = 0;

*   effect on activity level - crop
    trans_rpdd(r,p) = sum(f, trans_pdd(r,f,p)$cp(p));
    deftrans_rpdd(r,p)$(m_rpdd(r,p) ne 0) = (trans_rpdd(r,p) - m_rpdd(r,p))/m_rpdd(r,p)*100;
    deftrans_rpdd(r,p)$(abs(deftrans_rpdd(r,p)) le 0.0001) = 0;

*   effect on activity level stock
    trans_rldd(r,p) = sum(f, trans_ldd(r,f,p)$ap(p));
    deftrans_rldd(r,p)$(m_rldd(r,p) ne 0) = (trans_rldd(r,p) - m_rldd(r,p))/m_rldd(r,p)*100;
    deftrans_rldd(r,p)$(abs(deftrans_rldd(r,p)) le 0.0001) = 0;
*===============================================================================

*===============================================================================
*                              SUPPLY AND TRADE
*-------------------------------------------------------------------------------
* impact on supply at farm-level
      trans_fss(r,f,p)  = (sum(t, ncx.l(r,f,t,p)$cp(p)*FECY(r,f,t,p)*nf(r,f))+ nlx.l(r,f,p)$ap(p)*FEMY(r,f,p)*nf(r,f));
      deftrans_fss(r,f,p)$(m_fss(r,f,p) ne 0 ) = (trans_fss(r,f,p) - m_fss(r,f,p))/m_fss(r,f,p)*100;
      deftrans_fss(r,f,p)$(abs(deftrans_fss(r,f,p)) le 0.0001) = 0;

* impact on supply at region level
      trans_rss(r,p)    = sum(f, trans_fss(r,f,p));
      deftrans_rss(r,p)$(m_rss(r,p) ne 0 )= (trans_rss(r,p) - m_rss(r,p))/m_rss(r,p)*100;
      deftrans_rss(r,p)$(abs(deftrans_rss(r,p)) le 0.0001) = 0;
*-------------------------------------------------------------------------------
* impact on trade balances
      trans_tbal(r,p)                                        = trans_rss(r,p) - rcc(r,p)  ;
      deftrans_tbal(r,p)$(m_tbal(r,p) ne 0)                  = (trans_tbal(r,p)- m_tbal(r,p))/m_tbal(r,p)*100 ;
      deftrans_tbal(r,p)$(abs(deftrans_tbal(r,p)) le 0.0001) = 0;
*===============================================================================
option decimals = 2;

display bas_nf;
        nf(r,f)      = bas_nf(r,f);
        FLC(r,f,res) = bas_FLC(r,f,res);

*This should give an indication of capital investiment int he industry to empower the emerging farmers;

Display
          Bas_nf
          bas_flc
          trans_flc
          run_nf2
          trans_nf
*------------------------------------------------------------------------------
$ontext
* resource demand by expenditure
          m_fres
          trans_fres
          deftrans_fres

          m_rres
          trans_rres
          deftrans_rres
$offtext
*------------------------------------------------------------------------------

*------------------------------------------------------------------------------
*$ontext
*  Farm level and regional supply
*          m_fss
*          trans_fss
          deftrans_fss

*          m_rss
*          trans_rss
          deftrans_rss

* trade balance
*          m_tbal
*          trans_tbal
*          deftrans_tbal
*$offtext
*------------------------------------------------------------------------------
*$ontext
*  Farm level activity level
*          m_cdd
*          trans_cdd
          deftrans_cdd

*          m_rcdd
*          trans_rcdd
          deftrans_rcdd

*          m_pdd
*          trans_pdd
          deftrans_pdd

*          m_rpdd
*          trans_rpdd
          deftrans_rpdd

*          m_ldd
*          trans_ldd
          deftrans_ldd

*          m_rldd
*          trans_rldd
          deftrans_rldd
*$offtext
                 ;

*$offtext
*==============================================================================
$exit

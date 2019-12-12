option CNS=convert;
option CNS=convert;
option CNS=convert;
$Title Macro-Economic Framework for India (GANCNS,SEQ=210)
$Stitle Set Definitions

$Ontext

   This general equilibrium model has been used to study the
   adjustment policies of the Indian government in response to
   internal and external shocks.

   The original version, (GANGES,SEQ=97), was formulated as an
   optimization model. However, the model consist of a set of
   nonlinear equations and it has only one solution. This version
   is formulated directly as a system of nonlinear equations using
   the CNS = Constrained Nonlinear System model type.


Mitra, P, and Tendulkar, S, Coping with Internal and External
Exogenous Socks: India. Tech. rep., The World Bank, 1986.

$Offtext

Set i   6 sectors of economy /
        agricult   agriculture sector
        cons-good  consumer goods sector
        cap-good   capital goods sector
        int-good   intermediate goods sector
        pub-infr   public infrastructure sector
        service    services sector             /

     sa(i)     agriculture sector           / agricult /
     sc(i)     capital goods sector         / cap-good /
     si(i)     public infrastructure sector / pub-infr /
     ss(i)     services sector              / service  /
     im(i)     importing sectors
     ie(i)     exporting sectors
     manufact(i) manufacturing sectors / cons-good , cap-good , int-good /

     ty        income categories /
        yself      self-employment income
        ywage      wage income
        ycap       land or capital income
        yinfr      income from government subsidies via infrastructure
        ynonp      non-production income    /

     li(ty)    production income categories ;

li(ty) = yes ;
li("ynonp") = no ;

Set r  regions /
       urban      urban regions
       rural      rural regions /

    ri(r,i) mapping between regions and sectors /
       rural.agricult
       urban.(cons-good,cap-good,int-good,pub-infr,service) /

    datvar    input variables /
       return-cap income from capital investments
       return-inf income from infrastructure
       self-empl  income from self employment
       wage-labor income from wage and labor
       dom-inter  domestically produced intermediate goods
       imp-inter  imported intermediate goods
       pub-cons   public consumption (domestic and imported)
       fix-inv    fixed capital investments (domestic and imported)
       change-sto change in stock
       cons-imp   household consumption - imported
       xvoli      constant term used in calculating export volume    /

    taxvar    tax variables /
       dom-inter  indirect taxes on domestic intermediate inputs
       imp-inter  indirect taxes on imported intermediate inputs
       dom-cons   total taxes on final domestic consumption
       imp-cons   total taxes on final imported consumption
       profits    total taxes on profits
       self-emp   total taxes on self-employment income
       tax-wage   total taxes on wage income  /

    stockvar  stock variables /
       capital    total capital stock        (millions of rupees)
       infrast    total infrastructure stock (millions of rupees)
       wage-labor total labor force          (millions of persons)
       self-empl  total self-employment      (millions of persons) /

    sigma     elasticity of substitution parameters /
       sigmax      between final demands for domestic and imported capital goods
       sigmaz      between value added and intermediate inputs
       sigman      between domestic and imported intermediate inputs
       sigmav      between capital. self-employment and wage labor
       sigmas      between land and agriculture labor
       eta         export elasticity   /

Alias (i,j) ;
Alias (ty,tz) ;
Alias (manufact,manuf) ;

Set acv gdp expenditure categories /
         ndp        net domestic product
         gdp        gross domestic product
         privc      private consumption
         gdpmp      gdp at market prices
         govc       government consumption
         gfi        gross fixed investment
         chan-sto   change in stock
         invest     total of gfi and change in stock
         exports    exports
         imports    imports  /

     indicat   target indicators at constant prices /
         gdpmp     gdp at market prices
         privc     private consumption
         gfi       fixed investment
         invest    investment and change in stock
         exports   total exports
         imports   total imports
         gdpgrt    growth rate of gdp at market prices
         cnsgrt    growth rate of private consumption
         gfigrt    growth rate of fixed investment
         invgrt    growth rate of total investment
         expgrt    growth rate of exports
         impgrt    growth rate of imports
         cnsshr    consumption to gdp at market prices ratio
         gfishr    gfi to gdpmp ratio
         expshr    exports to gdpmp ratio
         impshr    imports to gdpmp ratio  /

     years     time horizon for tracking /
         7374       1973-74  --  base  year
         7475       1974-75
         7576       1975-76
         7677       1976-77
         7778       1977-78
         7879       1978-79
         7980       1979-80
         8081       1980-81
         8182       1981-82
         8283       1982-83
         8384       1983-84   --  last year of tracking /

    t(years)    current year ;

t(years) = no ;
t("7374") = yes ;


$Stitle input data tables


Table dat(datvar,i)  factor remuneration            (current millions of rupees)

              agricult  cons-good cap-good  int-good  pub-infr  service

return-cap     64493.3     6406.5   5434.4    8567.9    4401.9  27677.2
self-empl     148431.0     4937.3  13714.3    6488.8            38411.1
wage-labor     48364.6    12560.5  16267.7   17072.2    9941.2  73786.0
dom-inter      77681.1    68904.0  54658.1   47254.0    6872.7  48988.9
imp-inter       2356.0     3201.3   2307.3    9801.7       1.3    572.0
pub-cons         816.9      544.0   4730.1    4423.9    2986.2  36832.5
fix-inv          623.9      139.5  76198.8    2970.4     252.1   5076.3
change-sto      7092.5     5944.2   1756.4    6073.7     272.2
cons-imp        3159.9      504.3   5235.6              4170.9
xvoli           2977.8    10046.2    990.9    5984.0                        ;

im(i) = yes$dat("cons-imp",i) ;
ie(i) = yes$dat("xvoli",i) ;

Table rate(*,i) various tax and margin rates    (unitless)

                    agricult  cons-good  cap-good  int-good  pub-infr  service

  dep-prof            0.0729     0.2369    0.4319    0.1921    0.7191   0.3166
  dep-lab             0.0106     0.0832    0.0094    0.0958             0.0761
  taxrat-dom          0.0212     0.0865    0.0972    0.1212    0.1268   0.1056
  taxrat-imp          0.3134     0.1629    0.4247    0.2790    0.8461   0.6715
  taxrfd-dom        - 0.0013     0.32      0.40      0.40
  taxrfd-imp          0.0731     0.6728    0.3781    0.7236
  tradm-fd            0.14480    0.01368                       0.03103
  tradm-exp           0.16257    0.50      0.33460   0.13017
  tradm-imp                                0.50      0.07130


Table tax(taxvar,i) tax data            (current millions of rupees)

             agricult cons-good  cap-good int-good pub-infr  service

dom-inter     1649.8     5964.3    5314.1    5727.0    871.5  5171.3
imp-inter      738.5      521.6     989.2    2734.6      1.1   384.1
dom-cons     -5570.9    16739.9    2303.2    4032.0     47.1   318.8
imp-cons       231.0      339.7    1979.6    1079.0
profits                   704.7     597.8     942.5    484.2  3044.5
self-emp                  222.2     617.1     292.0           1728.5
tax-wage                  565.2     732.0     768.2    447.4  3320.4


Table stock(stockvar,i) stock data       (current millions of rupees)

             agricult cons-good cap-good int-good pub-infr   service

capital     515946.4  29570.0   43475.2  68543.2  168695.0  417500.0
infrast       1881.2   1403.9    2145.8   9995.2    4621.0    2694.2
wage-labor      43.325    1.697     2.198    2.307     1.343     9.971
self-empl      132.735    3.545     9.847    4.659              27.578


Table elast(sigma,i)  elasticity parameters            (unitless)

              agricult cons-good cap-good int-good pub-infr service

sigmax            0.5       0.5       0.5      0.5       0.5     0.5
sigmaz            0.9       1.1       1.1      1.1       1.1     1.1
sigman            1.5       1.5       1.5      1.5       1.5     1.5
sigmav            0.9       0.7       0.7      0.7       0.7     0.7
sigmas            0.5       0.7       0.7      0.7       0.7     0.7
eta               1.5       1.5       1.0      1.5               1.0


Table a(i,j) domestic input output coefficients matrix     (unitless)

                agricult  cons-good cap-good  int-good  pub-infr  service

agricult        0.760190  0.549245  0.129944  0.112517  0.000146  0.206418
cons-good       0.075543  0.196520  0.005262  0.036037  0.010709  0.026161
cap-good        0.029948  0.012795  0.117179  0.039635  0.555240  0.112295
int-good        0.062838  0.086158  0.522219  0.524852  0.100921  0.305633
service         0.071481  0.155282  0.225396  0.286959  0.332984  0.349493


Table am(i,j) imports input output coefficients matrix     (unitless)

                agricult  cons-good cap-good  int-good  pub-infr  service

agricult        0.0011    0.843906            0.027276
cons-good       0.002833  0.127355  0.000087  0.045681
cap-good                  0.000387  0.081846  0.006631  0.048316  0.00056
int-good        0.996067  0.028352  0.918067  0.920412  0.951684  0.99944

Table ayi(i,r) shares for allocation of sectoral income to regions (unitless)

               rural
agricult        1.0
cons-good        .4635
service          .4635 ;

ayi(i,"urban") = 1 - ayi(i,"rural") ;

Parameter ayt(r) shares for allocation of transfers to regions (unitless) /
      rural .8 / ;

ayt("urban") = 1 - ayt("rural") ;

Table ac(i,r)  expenditure shares         (unitless)

                    urban     rural

agricult          0.32629     0.482105
cons-good         0.257648    0.26756
cap-good          0.028424    0.02644
int-good          0.039263    0.015185
pub-infr          0.011206    0.00897
service           0.337169    0.19974


Table gamma(i,r)   per capita committed consumption  (units)

                urban     rural

agricult     2.228551    2.037878
cons-good    0.300443    0.332562
cap-good     -.02261     0.002407
int-good     0.096637    0.128932
pub-infr     0.07928     0.092737
service      -.59266     0.064369

Table conpar(*,r) various consumer parameters

           urban      rural

alpha      0.376842   0.309118
beta       0.76777    0.77814
pop        122.       458.

Table baseprice(i,*) base year prices

               pv00         v00    pk00    pg00   pc00   pq00

agricult     1.0050   2616.0656  0.1258  1.0076 1.1483 1.0042
cons-good    1.0155    249.8925  0.2320  1.1071 1.3423 1.0064
cap-good     0.9617    303.6711  0.1001  0.7277 1.3668 0.9763
int-good     0.9820    310.7917  0.1180  0.9207 1.3761 0.9829
pub-infr     1.0500    157.2187  0.0306  1.2566 1.0977 1.0647
service      1.0045   1443.4865  0.0691  1.0624 1.0023 1.0023


Scalar nct         net current transfer                   /  19.20 /
       nfi         net factor income                      / -32.50 /
       gtra        interest on national debt              /  46.7  /
       gtrb        domestic current transfers             /  90.9  / ;


$Stitle time series of exogenous data


Table series(*,years)   exogenous data series

              7374      7475      7576      7677      7778      7879      7980      8081      8182     8283    8384

cg          503.336   511.10    645.46    697.87    702.24    750.71    754.74    809.06    856.64   971.38 1008.49
xsa           1.000    .9366    1.1158     .9504    1.1097    1.0306     .8981    1.1041    1.0356   0.9796  1.1364

er            7.791    7.796     8.653     8.939     8.563     8.206     8.076     7.893     8.929    9.628  10.312
usdefl       1.0000   1.0878    1.1862    1.2539    1.3274    1.4259    1.5469    1.6845    1.8422   1.9595  2.0354
indefl       1.0000   1.1665    1.1181    1.1948    1.2395    1.2648    1.4572    1.6157    1.7789   1.9119  2.1381
savf           47.9     96.1      57.9    -103.1     -90.3     -57.5     -29.9     199.6     241.2    237.0   265.0

gtra          47.70    34.00     49.10     60.10     69.70     93.40    100.80    149.00    184.20   270.40  270.40
gtrb          90.90   115.00    135.00    154.70    176.20    200.50    239.20    283.50    331.10   400.50  400.50
nfi          -32.50   -29.10    -25.50    -23.30    -23.30    -15.60     15.30     29.80      -.70   -68.10  -68.10
nct           19.20    27.40     52.80     73.90    102.20    104.20    162.40    225.70    222.10   252.70  252.70

dmsa          31.60    40.69     59.36     39.79      5.68      3.76      3.74      3.90     15.51    13.69   21.66
dmco           5.04     1.76      2.28      5.68     21.95     13.64      8.62     20.23     16.48    11.93   16.31
dmsi          41.71    42.14     40.96     42.23     43.62     44.06     48.47     48.85     46.00    40.42   29.07

idshr        0.7954   0.7604    0.8201    0.8746    0.9281    0.8280    0.8111    0.8253    0.8346   0.8575  0.8583

const       133.125   134.88    136.67    138.47    140.31    142.17    144.05    145.96    147.91  149.885  152.64
totlab        65.09    67.88     70.75     73.75     76.84     80.06     83.39     86.84     90.43    95.14   97.10

pkvsa        0.1807   0.1537    0.1511    0.2071    0.2071    0.2080    0.1845    0.1861    0.1696   0.1585  0.1605
pkvni        0.2909   0.3703    0.2967    0.2322    0.2752    0.2912    0.3356    0.2924    0.3038   0.2777  0.2725
pkvsi        0.1167   0.1350    0.1827    0.1761    0.1830    0.1504    0.1770    0.1825    0.1952   0.2549  0.2457
pkvss        0.4117   0.3411    0.3695    0.3846    0.3346    0.3505    0.3029    0.3390    0.3314   0.3092  0.3213

pim1         1.0000   1.2582    1.5165    1.4615    1.4451    1.5495    1.8956    1.7261    1.5030   1.3932  1.3841
pim2         1.0000   1.9203    1.5072    1.6667    1.4783    1.4710    1.8261    1.1915    1.3386   1.1637  1.2940
pim3         1.0000   1.3826    1.8261    2.0174    1.7913    2.2957    2.7826    1.9146    1.6529   1.6123  1.5498
pim4         1.0000   1.6423    1.9238    1.6655    1.6548    1.6830    1.9890    1.9275    2.0165   2.0239  2.0025
pim5         1.0000   2.2036    2.4820    2.7695    2.8593    2.8533    4.5350    6.8905    8.1604   7.7164  6.9373
pim6         1.0000   1.0000    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000    1.0000   1.0000  1.0000

pie1         1.0000   1.3202    1.3051    1.3065    1.9159    1.3546    0.8066    1.3053    1.5555   1.2789  1.2691
pie2         1.0000   1.2412    1.3048    1.5450    1.8197    1.8975    1.9845    2.0995    2.2128   2.1709  2.0801
pie3         1.0000   0.8929    1.2857    1.2929    1.3857    1.3286    1.5500    1.3552    1.6076   1.5771  1.5111
pie4         1.0000   1.3776    1.4375    1.4746    1.4763    1.4986    1.6509    1.7620    2.0759   2.0366  1.9914

totpu        122.00   124.89    129.90    134.85    140.05    145.70    151.39    157.26    163.23   169.38  175.89
totpr        458.00   468.11    477.10    485.15    493.95    503.30    512.61    521.74    530.77   539.62  549.11

gdpmp        5944.2                                                                                  8611.2  9261.9
privc        4340.3   4157.8    4311.7    4206.7    4847.8    4981.0    4479.0    4961.4    5280.9   5460.3  5940.0
gfi           902.9    917.9    1182.3    1314.2    1394.7    1481.2    1456.4    1610.0    1715.0   1785.1  1895.1
invest       1135.2   1207.2    1441.6    1502.6    1502.8    1788.9    1795.5    1950.9    2054.8   2081.8  2207.9
exports       283.0    306.0     356.6     426.8     410.5     444.0     518.5     517.0     516.2    532.9   559.1
imports       317.6    275.9     279.2     278.7     363.1     394.1     377.9     554.4     598.6    599.9   624.6
cns-curr     4340.3
gfi-curr      902.9   1093.0    1324.8    1526.7    1714.6    1882.5    2090.2    2521.7    2971.6   2971.6  2971.6
inv-curr     1135.2   1450.9    1641.8    1766.9    1854.8    2293.3    2622.8    3144.3    3668.0   3668.0  3668.0
gdpmp-curr   5944.2   6968.1    7202.3    7586.7    8716.1    9610.3   10120.4   11989.6   14161.5  14161.5 14161.5
exp-curr      283.0    383.5     481.2     613.9     663.6     711.5     838.1     902.9    1025.3   1025.3  1025.3
imp-curr      317.6    477.9     566.4     561.4     652.2     742.6     985.9    1357.9    1487.9   1487.9  1487.9
cns-defl     1.0000   1.2019    1.1389    1.1759    1.2342    1.2820    1.4608    1.6117    1.7851   1.7851  1.7851
gdpc         5377.2   5423.5    5936.0    5981.1    6508.0    6882.3    6518.0    7030.2    7406.3   7534.4  7958.1

ax1               1    .9677    1.0504     .9931    1.0141    1.0149     .9884    1.0823    1.0238    .9726  1.0623
ax2               1   1.2461    1.2442    1.2179    1.3060    1.5719    1.7899    1.7452    1.6679   1.8441  1.8293
ax3               1   1.1884    1.3716    1.6430    1.6913    1.6744    1.9078    1.4786    1.5309   2.0376  1.8724
ax4               1    .7520     .5640     .7232     .8045     .8531     .6947     .5982     .6997    .7295   .7110
ax5               1    .7509     .5631     .6157     .6351     .5144     .3781     .4568     .5778    .5619   .7504
ax6               1    .9837     .7377     .8285     .9107     .8105     .7230     .7224     .7740    .7775   .7132

exscale           1    .9000    1.0890    1.1165    1.0487    1.0540    1.0337     .8801    1.1469   1.2994  1.2439
betar             1        1    1.0372    1.0554    1.1103    1.0940     .9958     .9817     .9359    .9576  1.0020
betau             1        1     .9000     .8100     .8930     .8930     .8037     .8941    1.1175   1.1052  1.1100
thetai                .12098    .53921    .16502    .14852    .16845    .19778    .16345    .12949   .17234  .18768
      ;

series("cns-curr",years) = series("privc",years) * series("cns-defl",years) ;

series("pim1",years) = series("pim1",years) / series("usdefl",years) ;
series("pim2",years) = series("pim2",years) / series("usdefl",years) ;
series("pim3",years) = series("pim3",years) / series("usdefl",years) ;
series("pim4",years) = series("pim4",years) / series("usdefl",years) ;
series("pim5",years) = series("pim5",years) / series("usdefl",years) ;
series("pim6",years) = series("pim6",years) / series("usdefl",years) ;

series("pie1",years) = series("pie1",years) / series("usdefl",years) ;
series("pie2",years) = series("pie2",years) / series("usdefl",years) ;
series("pie3",years) = series("pie3",years) / series("usdefl",years) ;
series("pie4",years) = series("pie4",years) / series("usdefl",years) ;


$Stitle parameter declarations


Parameter pie(i)      international prices                                (rp per unit)
          pim(i)      import prices by commodity                          (rp per unit)
          dw(r)       initial wage rates                                  (rp per unit)
          dcpi(r)     initial cpi                                         (rp per unit)

          k(i)        capital and land                                          (units)
          dg(i)       initial infrastructure input by sector                    (units)
          totlab      total employment in urban sectors                         (units)
          dsa(i)      stock available from last year                            (units)

          aq(sc)      scaling for q-production function                      (unitless)
          az(i)       scaling for z-production function                      (unitless)
          an(i)       scaling for n-production function                      (unitless)
          as(i)       scaling for s-production function                      (unitless)
          av(i)       scaling for v-production function                      (unitless)
          aex(i)      scale of export demands                                   (units)

          depp(i)     depreciation rate for land or capital income           (unitless)
          depl(i)     depreciation rate for self-employment income           (unitless)

          trmd(i)     trade margin rate on domestic demand                   (unitless)
          trmx(i)     trade margin rate on exports                           (unitless)
          trmm(i)     trade margin rate on imports                           (unitless)

          thetak(i)   enterprise savings rates                               (unitless)
          ratinf      share of infrastructure in output of pub-infr          (unitless)

          idshr       share of gross fixed investment in total investment    (unitless)
          dstshr      share of change in stock in total investment           (unitless)
          aid(i)      sector i share of gross fixed investment               (unitless)
          adst(i)     sector i share of change in stocks                     (unitless)
          cg(i)       government demand                                         (units)

          deltaq(sc)  share parameter for  q                                 (unitless)
          deltax(i)   share parameter for  x                                 (unitless)
          deltaz(i)   share parameter for  z                                 (unitless)
          deltan(i)   share parameter for  n                                 (unitless)
          deltas(i)   share parameter for  s                                 (unitless)
          deltav(i)   share parameter for  v                                 (unitless)

          sigmaq(sc)  elasticity of substitution between  x and  m           (unitless)
          sigmax(i)   elasticity of substitution between  z and  g           (unitless)
          sigmaz(i)   elasticity of substitution between  v and  n           (unitless)
          sigman(i)   elasticity of substitution between nd and nm           (unitless)
          sigmav(i)   elasticity of substitution between  s and lw           (unitless)
          sigmas(i)   elasticity of substitution between  h and ls           (unitless)

          rhoq(sc)    ces function exponent for q                            (unitless)
          rhox(i)     ces function exponent for x                            (unitless)
          rhoz(i)     ces function exponent for z                            (unitless)
          rhon(i)     ces function exponent for n                            (unitless)
          rhov(i)     ces function exponent for v                            (unitless)
          rhos(i)     ces function exponent for s                            (unitless)

          alpha(r)    intercept of housejold expenditure function            (unitless)
          pop(r)      population by region                                      (units)

          eta(i)      export elasticity                                      (unitless)
          mu          social weight on equity                                (unitless)
          psi         weight for private utility in obj                      (unitless)
          ksi         weight for investment in obj                           (unitless)

          er          exchange rate                                          (rp per $)
          usdefl      gdp deflator for us dollar                             (unitless)
          indefl      gdp deflator for indian rupee                          (unitless) ;

Parameter rcons(*,acv) gdp expenditure by sector (constant prices)
          rcurr(*,acv) gdp expenditure by sector (current prices)

          er0          foreign exchange rate in previous period              (rp per $)
          pim0(i)      import prices in previous period                   (rp per unit)
          pnm0(i)      price of intermediate imports in previous period   (rp per unit)
          pc0(i)       consumer prices in previous period                 (rp per unit)
          v0(i)        value added in previous period                           (units)
          pv0(i)       prices of value added in previous period           (rp per unit)
          pls0(r)      wage of self-employment in previous period         (rp per unit)
          pk0 (i)      return on land or capital in previous period       (rp per unit)
          pq0 (i)      price of output in previous year                   (rp per unit)
          ax0(i)       previous period ax                                    (unitless)
          beta0(r)     previous period beta                                  (unitless)
          exscale0     previous period exscale                               (unitless)

          gdptg        gdpmp - target
          cnstg        private consumption - target
          gfitg        fixed investments - target
          invtg        total investments - target
          exptg        exports - target
          imptg        imports - target

          gdppr        gdp at market prices in previous period
          cnspr        private consumption in previous period
          gfipr        fixed investments in previous period
          invpr        total investments in previous period
          exppr        exports in previous period
          imppr        imports in previous period

          pim00(i)     import prices - base year                          (rp per unit)
          pnm00(i)     price of intermediate imports in base period       (rp per unit)
          k00(i)       land and capital in base period                          (units)
          er00         exchange rate in base period (1973-74)             (rp per $)
          mc00(r)      mean per capita consumption in base period            (current )
          v00(i)       value added in base period                               (units)
          pv00(i)      price of v in base period                          (rp per unit)
          pc00(i)      consumer prices in base period                     (rp per unit)
          pg00(i)      price of infrastructure in base period             (rp per unit)
          pls00(r)     wage of self-employment in base period             (rp per unit)
          w00(r)       wage rates of organized labor in base period       (rp per unit)
          pk00(i)      return to land or capital in base period           (rp per unit)
          pq00(i)      output prices in base period                       (rp per unit)

          gdp00        gdpmp in base period
          cns00        private consumption in base period
          gfi00        fixed investments in base period
          inv00        investments in base period
          exp00        exports in base period
          imp00        imports in base period
          c00(r)       base year consumption by region
          cg0(i)       base year public consumption

          ytotal(*,*,*)  income totals for urban-rural-total

          conex(*,r)     per capita consumption
          pcinc(*,r)     per capita income
          savrat(*,r)    savings ratio
          totco(*,*)     total consumption by sector (quantity and value at constant prices)
          shrco(i,r)     shares of consumption by sector and class (constant prices)
          elsup(*)       elasticities of supply
          elcon(*,*,*)   elasticities of consumption

          ut1(r)         utility at current period
          ut0(r)         utility at base period

          cli(*)         cost of living index   (with respect to base period)

          taxdir         tax revenue -- direct
          taxind         tax revenue -- indirect
          taximp         tax revenue -- net import duty
          infras         income from infrastructure
          govr           net tax revenue + infrastructure income
          govsav         government savings
          tgovr          savg + infrastructure income
          govtrn         government transfer
          govcon         government consumption
          govex          government expenditure
          gap            defined as (govr - govex - tgovr)
          dsapq(*)       dsa*pq
          totdepr        total depreciation (capital and self-employment income)
          deprec0(i)     depreciation evaluated at previous years prices
          gva(*)         gross value added
          gdp(*)         gross domestic product

          grthr(acv)     growth ratios of constant price components of gdp
          deflnac        deflators comparable to nac deflators (based on previous year)
          dflnacb(i)     price deflators relative to base period
          relnacb0(i)    relative price deflators in base period
          relnacb(i)     relative price deflators in current period
          chgnacb(i)     change in relative price deflators

          exppi          export price index
          imppi          import price index
          tradeterm      terms of trade

          xparm(*,*)     parameters for static experiments
          match(*,*)     actual and target values
          parm(*,*)      current values of parameters
          pkv(i)         b matrix coefficients
          chgv(i)        change in v ;


$Stitle variable declarations


Variable x(i)       gross output                                                (units)
         g(i)       flow of infrastructure                                      (units)
         q(i)       aggregate supply                                            (units)
         pq(i)      price of final output                                 (rp per unit)
         m(i)       final import demands                                        (units)
         pm(i)      post-tax and trade margin import prices               (rp per unit)
         z(i)       z output                                                    (units)
         v(i)       value added                                                 (units)
         n(i)       intermediate net of infrastructure                          (units)
         px(i)      price of output                                       (rp per unit)
         pz(i)      price of z                                            (rp per unit)
         s(i)       value added subaggregate                                    (units)
         lw(i)      employment of wage labor                                    (units)
         pv(i)      price of value added                                  (rp per unit)
         ls(i)      self employment labor                                       (units)
         ps(i)      price of s output                                     (rp per unit)
         pnd(i)     price of domestic intermediate                        (rp per unit)
         w(r)       wage rates of organized labor                         (rp per unit)
         cpi(r)     consumer price index                                  (rp per unit)
         pls(r)     wage rate of self employment labor                    (rp per unit)
         pnm(i)     price of intermediate imports                         (rp per unit)
         pn(i)      price of intermediate goods                           (rp per unit)
         pk(i)      return to capital                                     (rp per unit)
         pc(i)      price of consumer goods                               (rp per unit)
         fd(i)      domestic final demand                                       (units)
         nd(i)      domestic intermediate goods                                 (units)
         nm(i)      import intermediate goods                                   (units)
         marg       trade margin service demand                                 (units)
         pg(i)      rent for infrastructure                               (rp per unit)
         y(ty,i)    factor income for sectors of economy                     (current )
         fy(ty,i)   fixed price factor income                            (base year rp)
         wtr(ty)    world transfers                                          (current )
         gtr(ty)    government transfers                                     (current )
         fwtr(ty)   fixed price world transfers                          (base year rp)
         fgtr(ty)   fixed price government transfers                     (base year rp)
         yh(ty,r)   income by region and income type                         (current )
         fyh(ty,r)  fixed price income by region and income type         (base year rp)
         ym(r)      mean per capita real income by region                      (units )
         mc(r)      mean per capita real consumption                           (units )
         ch(i,r)    private consumption                                         (units)
         savh(r)    household savings                                        (current )
         savf       foreign savings                                        (current $ )
         savg       government savings                                       (current )
         ex(i)      total exports                                               (units)
         invtot     total gross investments                                     (units)
         id(i)      investment demand by sector                                 (units)
         dst(i)     changes in stock by sector                                  (units)
         ax(i)      efficiency variable                                      (unitless)
         exscale    scaling of export demand                                 (unitless)
         tnd(i)     tax rate on domestic intermediate                        (unitless)
         tnm(i)     tax rate on imported intermediate                        (unitless)
         tfd(i)     tax rate on final demand                                 (unitless)
         tfm(i)     import tax rate                                          (unitless)
         tk(i)      tax rate on capital (profits)                            (unitless)
         tw(i)      tax rate on wages (income tax)                           (unitless)
         thetai     infrastructural savings rate                             (unitless)
         taum(i)    implicit tax on imports due to price differences         (unitless)
         lambda(r)  rate of wage adjustment parameter                        (unitless)
         beta(r)    slope of household expenditure function                  (unitless)
         util(r)    regional per capita utility                                 (utils)
         utility    objective value                                             (utils) ;

Positive Variables pk ;

Variable dumtg            sum of square deviations (absolute)
         dumgrt           sum of square deviations in tracking
         dumshr           sum of square deviations (on shares)
         ogdpmp           model generated gdp at market prices
         ogdp             model generated gdp at factor prices
         ocns             model generated private consumption
         ogfi             model generated gross fixed investment
         ochs             model generated stock changes
         oinv             model generated total investment
         oexp             model generated exports
         oimp             model generated imports
         deprec00(i)      depreciation evaluated at base prices          (base year rp)
         deprec  (i)      depreciation evaluated at current prices            (current) ;


$Stitle compute parameters and coefficients


mu  = 1 ;
psi = 1 ;
ksi = 7 ;

pie(i)   = 1 ;
pim(i)   = 1 ;
pim00(i) = pim(i)     ;
pg.l(i)  = 1 ;
pg00(i) = baseprice(i,"pg00") ;
px.l(i)  = 1 ;
ps.l(i)  = 1 ;
pv.l(i)  = 1 ;
pn.l(i)  = 1 ;
pz.l(i)  = 1 ;
pq.l(i)  = 1 ;

dat(datvar,i)     = dat(datvar,i)/100 ;
tax(taxvar,i)     = tax(taxvar,i)/100 ;
stock(stockvar,i) = stock(stockvar,i)/100 ;

sigmax(i) = elast("sigmax",i)*1.20  ;
sigmaq(sc) = 0.90  ;
sigmaz(i) = elast("sigmaz",i)*1.20  ;
sigman(i) = elast("sigman",i)*1.20  ;
sigmav(i) = elast("sigmav",i)*1.20  ;
sigmas(i) = elast("sigmas",i)*1.20  ;

*
* calculate rho from sigma using definition
*

rhox(i) = 1/sigmax(i) - 1 ;
rhoq(sc) = 1/sigmaq(sc) - 1 ;
rhoz(i) = 1/sigmaz(i) - 1 ;
rhon(i) = 1/sigman(i) - 1 ;
rhov(i) = 1/sigmav(i) - 1 ;
rhos(i) = 1/sigmas(i) - 1 ;

eta(i) = elast("eta",i) * 1.20  ;

k(i)    = stock("capital",i) ;
pk.l(i) = dat("return-cap",i)/k(i) ;
pk00(i) = baseprice(i,"pk00") ;
pls.l("rural") = 11.182506 ;
pls.l("urban") = 13.928    ;
pls00("rural") = 11.2507  ;
pls00("urban") = 13.7343  ;
ls.l(i) = stock("self-empl",i)*100 ;

Display k,pk.l,pls.l,ls.l ;

*
* calibrate deltas using firsts, s using values, and as using prods
*

deltas(i)$ls.l(i) = (k(i)/ls.l(i))**(1/sigmas(i))*pk.l(i)/sum(r$ri(r,i), pls.l(r)) ;
deltas(i)$ls.l(i) = deltas(i)/(1+deltas(i)) ;
deltas(i)$(not ls.l(i)) = 1 ;
s.l(i) = dat("return-cap",i) + dat("self-empl",i) ;
as(i) = s.l(i)*(deltas(i)*k(i)**(-rhos(i)) + ((1-deltas(i))*ls.l(i)**(-rhos(i)))$(not si(i)))**
         (1/rhos(i)) ;

Display deltas,s.l,ps.l,as ;

dw("rural") = 11.163208 ;
dw("urban") = 74.00     ;
w.l(r) = dw(r) ;
w00(r) = dw(r) ;
lw.l(i) = stock("wage-labor",i)*100 ;

Display w.l,lw.l ;

*
* calibrate deltav using firstv, v using valuev, and av using prodv
*

deltav(i) = (s.l(i)/lw.l(i))**(1/sigmav(i))*ps.l(i)/sum(r$ri(r,i), w.l(r)) ;
deltav(i) = deltav(i)/(1+deltav(i)) ;
v.l(i)   = s.l(i) + dat("wage-labor",i) ;
av(i)    = v.l(i)*(deltav(i)*s.l(i)**(-rhov(i)) + (1-deltav(i))*lw.l(i)**(-rhov(i)))**
            (1/rhov(i)) ;
v00(i) = baseprice(i,"v00") ;
pv00(i) = baseprice(i,"pv00") ;

Display deltav,v.l,pv.l,av ;

*
* calibrate pnm using pnmdet
*

trmm(i)  = rate("tradm-imp",i) ;
tnm.l(i) = rate("taxrat-imp",i) ;
pnm.l(i) = sum(j, am(j,i)*pim(j)*(1 + trmm(j) + tnm.l(j)) ) ;
pnm0(i)  = pnm.l(i) ;
pnm00(i) = pnm.l(i) ;
nm.l(i)  = (dat("imp-inter",i)*(1+trmm(i)) + tax("imp-inter",i))/pnm.l(i) ;

Display trmm,tnm.l,pnm.l,nm.l ;

*
* calibrate pnd using pnddet
*

tnd.l(i) = rate("taxrat-dom",i) ;
pnd.l(i) = sum(j, a(j,i)*pq.l(j)*(1 + tnd.l(j))  ) ;
nd.l(i)  = (dat("dom-inter",i)+tax("dom-inter",i))/pnd.l(i) ;

Display tnd.l,pnd.l,nd.l ;

*
* calibrate deltan using firstn, n using valuen, and an using prodn
*

deltan(i) = (nd.l(i)/nm.l(i))**(1/sigman(i))*pnd.l(i)/pnm.l(i) ;
deltan(i) = deltan(i)/(1+deltan(i)) ;
n.l(i) = nd.l(i)*pnd.l(i) + nm.l(i)*pnm.l(i) ;
an(i) = n.l(i)*(deltan(i)*nd.l(i)**(-rhon(i)) + (1-deltan(i))*nm.l(i)**(-rhon(i)))
          **(1/rhon(i)) ;

Display deltan,n.l,pn.l,an ;

*
* calibrate deltaz using firstz, z using valuez, and az using prodz
*

deltaz(i) = (v.l(i)/n.l(i))**(1/sigmaz(i))*pv.l(i)/pn.l(i) ;
deltaz(i) = deltaz(i)/(1+deltaz(i)) ;
z.l(i)   = n.l(i) + v.l(i) ;
az(i)    = z.l(i)*(deltaz(i)*v.l(i)**(-rhoz(i)) + (1-deltaz(i))*n.l(i)**(-rhoz(i)))**
            (1/rhoz(i)) ;

Display deltaz,z.l,pz.l,az ;

*
* calibrate deltax using firstx, x using valuex, and ax using prodx
*

g.l(i)    = stock("infrast",i) ;
dg(i)     = g.l(i) ;
deltax(i) = (z.l(i)/g.l(i))**(1/sigmax(i))*pz.l(i)/pg.l(i) ;
deltax(i) = deltax(i)/(1+deltax(i)) ;
x.l(i)    = z.l(i) + g.l(i) ;
ax.l(i)   = x.l(i)*(deltax(i)*z.l(i)**(-rhox(i)) +
            (1-deltax(i))*g.l(i)**(-rhox(i)))**(1/rhox(i)) ;

Display g.l,deltax,x.l,ax.l ;

*
* calibrate taum using pmdef and taumdet
*

pm.l(im)  = px.l(im) ;
tfm.l(i)  = rate("taxrfd-imp",i) ;

taum.l(im) = px.l(im)/pim(im) - (1 + trmm(im) + tfm.l(im)) ;
taum.l(i)$(not im(i)) = 0 ;
taum.l(sc) = 0 ;

pm.l(im)  = pim(im)*(1 + trmm(im) + tfm.l(im) + taum.l(im)) ;
m.l(im)   = dat("cons-imp",im) ;

Display pm.l,taum.l,m.l ;

*
* calibrate q using valueq, deltaq using firstq, and aq using prodq
*

q.l(i) = x.l(i) + m.l(i) ;
q.l(sc) = x.l(sc) + (1 + trmm(sc) + tfm.l(sc))*m.l(sc) ;
deltaq(sc) = (x.l(sc)/m.l(sc))**(1/sigmaq(sc))*px.l(sc)/pm.l(sc) ;
deltaq(sc) = deltaq(sc)/(1+deltaq(sc)) ;
aq(sc) = q.l(sc)*(deltaq(sc)*x.l(sc)**(-rhoq(sc)) + (1-deltaq(sc))*m.l(sc)**(-rhoq(sc)))**
          (1/rhoq(sc)) ;
pq0(i)  = pq.l(i) ;
pq00(i) = baseprice(i,"pq00") ;

Display q.l,deltaq,pq.l ;

dsa(i) = 0 ;
totlab = sum(i$(not sa(i)), ls.l(i) + lw.l(i)) ;

*
* calibrate pc using pcdet
*

trmd(i) = rate("tradm-fd",i) ;
tfd.l(i) = rate("taxrfd-dom",i) ;
pc.l(i) = pq.l(i)*(1 + tfd.l(i) + trmd(i) ) ;
pc00(i) = baseprice(i,"pc00") ;

*
* parameters for linear expenditure share estimation
*

alpha(r)  = conpar("alpha",r) ;
beta.l(r) = conpar("beta",r) ;
pop(r)    = conpar("pop",r) ;

*
* other parameters
*

tw.l(sa) = 0 ;
tw.l(i)$(not sa(i)) = 0.045      ;
tk.l(sa) =  0 ;
tk.l(i)$(not sa(i)) = 0.11 ;
thetak(si)  =  1.0 ;
thetai.l = 0 ;

usdefl = 1.0   ;
indefl = 1.0   ;
er00 = sum(t, series("er",t)) ;
er   = er00 ;

*
* calibrate y, gtr and wtr using income determination equations
*

y.l("yself",i) = sum(r$ri(r,i), pls.l(r) )*ls.l(i)*(1 - tw.l(i)) ;
y.l("ywage",i) = sum(r$ri(r,i), w.l(r))*lw.l(i)*(1 - tw.l(i)) ;
y.l("ycap",i)  = pk.l(i)*k(i)*(1 - thetak(i))*(1 - tk.l(i)) ;
y.l("yinfr",i) = pg.l(i)*g.l(i)*(1 - thetai.l) ;
gtr.l("ynonp") = (gtra + gtrb)/indefl ;
wtr.l("ynonp") = (nct + nfi)*(er00/er)/usdefl ;

*
* calibrate private consumption using yhdef, mean, meanc, and les
*

yh.l(ty,r) = sum(i, ayi(i,r)*y.l(ty,i)) + ayt(r)*(gtr.l(ty) + wtr.l(ty)) ;
ym.l("urban") = 14.52382 ;
ym.l("rural") = 7.36096 ;
mc.l(r)    = exp(alpha(r) + beta.l(r)*log(ym.l(r))) ;
ch.l(i,r)  = (pop(r)*(pc.l(i)*gamma(i,r) +
              ac(i,r)*(mc.l(r) - sum(j, pc.l(j)*gamma(j,r) ) ) ))/pc.l(i) ;

ch.lo(i,r) = pop(r)*gamma(i,r) + 0.1;
cpi.l(r) = (sum(i, pc.l(i)*ch.l(i,r)))/sum(i, ch.l(i,r)) ;
dcpi(r) = cpi.l(r) ;

*
* calibrate investment using iddet and dstdet
*

id.l(i)  = dat("fix-inv",i) ;
id.l(ss) = 0 ;
dst.l(i) = dat("change-sto",i)/pq.l(i) ;
invtot.l = sum(i, id.l(i) + dst.l(i)) ;
idshr    = sum(i, id.l(i))/invtot.l ;
dstshr   = sum(i, dst.l(i))/invtot.l ;
aid(i)   = id.l(i)/sum(j, id.l(j)) ;
adst(i)  = dst.l(i)/sum(j, dst.l(j)) ;

*
* calibrate export demand using export
*

trmx(i) = rate("tradm-exp",i) ;
ex.l(i)  = dat("xvoli",i)/pq.l(i) ;
aex(i) = ex.l(i)/(er00*pie(i)/(pq.l(i)*(1 + trmx(i))))**eta(i) ;

cg(i)    = dat("pub-cons",i)/pc.l(i) ;

*
* calibrate fd using fddef, marg using margdet
*

fd.l(i) = sum(r, ch.l(i,r)) + id.l(i) + cg(i) ;

marg.l = (sum(i, trmd(i)*pq.l(i)*fd.l(i) + trmx(i)*pq.l(i)*ex.l(i)
       + (pim(i)*trmm(i)*m.l(i))$im(i)
       + sum(j, am(j,i)*pim(j)*trmm(j) )*nm.l(i) ))/sum(ss, pq.l(ss)) ;

*
* calibrate savings using budget constraints
*

savh.l(r) = sum(ty, yh.l(ty,r)) - sum(i, pc.l(i)*ch.l(i,r));

savg.l = sum(i, sum(j, am(j,i)*tnm.l(j)*pim(j))*nm.l(i) +
                sum(j, a(j,i)*pq.l(j)*tnd.l(j)) +
                ((tfm.l(i)+taum.l(i))*pim(i)*m.l(i))$im(i) +
                tw.l(i)*sum(r$ri(r,i), w.l(r))*lw.l(i) +
                sum(r$ri(r,i), pls.l(r))*ls.l(i)*tw.l(i) +
                tk.l(i)*pk.l(i)*k(i)*(1-thetak(i)) +
                tfd.l(i)*pq.l(i)*sum(r, ch.l(i,r)) ) -
         sum(i, pq.l(i)*cg(i)) - sum(ty, gtr.l(ty)) ;

lambda.l(r) = 1.0 ;
ratinf = 0.758039594 ;

depp(i) = rate("dep-prof",i) ;
depl(i) = rate("dep-lab",i) ;


$Stitle parameters for objective function


Parameter wtot        weights sum
          wgdp        weight for gdp tracking
          wcns        weight for private consumption tracking
          winv        weight for investment tracking
          wexp        weight fot export tracking
          wimp        weight for import tracking
          gdpgrt      growth rate of gdp at market prices
          cnsgrt      growth rate of private consumption
          gfigrt      growth rate of fixed investment
          invgrt      growth rate of total investment
          expgrt      growth rate of exports
          impgrt      growth rate of imports
          cnsshr      ratio of consumption to gdp at market prices
          gfishr      ratio of gfi to gdp at market prices
          expshr      ratio of exports to gdp at market prices
          impshr      ratio of imports to gdp at market prices ;

gdptg  = sum(t, series("gdpmp",t)) ;
cnstg  = sum(t, series("privc",t)) ;
gfitg  = sum(t, series("gfi",t)) ;
invtg  = sum(t, series("invest",t)) ;
exptg  = sum(t, series("exports",t)) ;
imptg  = sum(t, series("imports",t)) ;
gdpgrt = sum(t, series("gdpc",t)/series("gdpc",t)) ;
cnsgrt = sum(t, series("privc",t)/series("privc",t)) ;
gfigrt = sum(t, series("gfi",t)/series("gfi",t)) ;
invgrt = sum(t, series("invest",t)/series("invest",t)) ;
expgrt = sum(t, series("exports",t)/series("exports",t)) ;
impgrt = sum(t, series("imports",t)/series("imports",t)) ;
cnsshr = sum(t, series("privc",t))/gdptg ;
gfishr = sum(t, series("gfi",t))/gdptg ;
expshr = sum(t, series("exports",t))/gdptg ;
impshr = sum(t, series("imports",t))/gdptg ;

wgdp = 1.0 ;
wcns = 1.0 ;
winv = 1.0 ;
wexp = 1.0 ;
wimp = 1.0 ;
wtot = wgdp + wcns + winv + wexp + wimp ;
wgdp = wgdp/wtot ;
wcns = wcns/wtot ;
winv = winv/wtot ;
wexp = wexp/wtot ;
wimp = wimp/wtot ;

gdp00 = gdptg ;
cns00 = cnstg ;
gfi00 = gfitg ;
inv00 = invtg ;
exp00 = exptg ;
imp00 = imptg ;

gdppr = gdptg ;
cnspr = cnstg ;
gfipr = invtg ;
invpr = invtg ;
exppr = exptg ;
imppr = imptg ;


$Stitle equation declarations


Equation obj           objective function                                              (utils)
         objgrt        objective function for growth rate tracking
         qgdpmp        determination of gdp at market prices
         qgdp          determination of gdp at factor prices
         qcns          determination of private consumption
         qgfi          determination of gross fixed investment
         qchs          determination of stock changes
         qinv          determination of total investment
         qexp          determination of exports
         qimp          determination of imports
         qdep00(i)     determination of depreciation at base year prices
         qdep(i)       determination of depreciation
         valueq(i)     value of final output of capital goods                    (current )
         prodq(sc)     ces production function for final output of capital goods    (units)
         firstq(sc)    first order condition for cost min of q                      (units)
         pmdef(i)      definition of post-tax import prices                   (rp per unit)
         supply(i)     total non-capital goods supply                               (units)
         taumdet(i)    determination of taum                                  (rp per unit)
         infalloc(i)   allocation of infrastructure                                 (units)
         valuex(i)     value of gross output                                     (current )
         prodx(i)      ces production function for gross output                     (units)
         firstx(i)     first order condition for profit max of gross output         (units)
         valuez(i)     value of ces z subaggregate                               (current )
         prodz(i)      ces production function for ces z subaggregate               (units)
         firstz(i)     first order condition for cost min of ces subaggregate       (units)
         valuen(i)     value of intermediate production                          (current )
         prodn(i)      ces production function for intermediates                    (units)
         firstn(i)     first order condition for cost min of intermediates          (units)
         pnddet(i)     determination of domestic intermediates price          (rp per unit)
         pnmdet(i)     determination of imported intermediates price          (rp per unit)
         values(i)     value of value added subaggregate                         (current )
         prods(i)      ces production function for value added subaggregate         (units)
         firsts(i)     first order condition for cost min of value added subagg     (units)
         valuev(i)     value added exemption                                     (current )
         prodv(i)      ces production function for value added                      (units)
         firstv(i)     first order condition for value added maximization           (units)
         wdet(r)       determination of wage of organized labor               (rp per unit)
         lmclear       non-agricultural labor market clearing                       (units)
         pcdet(i)      determination of consumer prices                       (rp per unit)
         cpidet(r)     determination of cpi                                   (rp per unit)
         yself(i)      determination of self employed income                     (current )
         fyself(i)     determination of self employed real income            (base year rp)
         ywage(i)      determination of labor income                             (current )
         fywage(i)     determination of labor real income                    (base year rp)
         ycap(i)       determination of capital and land income                  (current )
         fycap(i)      determination of capital and land real income         (base year rp)
         yinfr(i)      determination of infrastructure income                    (current )
         fyinfr(i)     determination of infrastructure real income           (base year rp)
         wtrdet        determination of transfers from abroad                    (current )
         gtrdet        determination of government transfers                     (current )
         fwtrdet       determination of real transfers from abroad           (base year rp)
         fgtrdet       determination of government real transfers            (base year rp)
         yhdef(ty,r)   definition of regional income                             (current )
         fyhdef(ty,r)  definition of regional real income                    (base year rp)
         mean(r)       mean per capita income determination                  (base year rp)
         meanc(r)      determination of mean per capita consumption          (base year rp)
         les(i,r)      linear expenditure system                                 (current )
         iddet(i)      allocation of gross fixed investment                         (units)
         dstdet(i)     allocation of stock changes                                  (units)
         hbudget(r)    household budget constraint                               (current )
         gbudget       government budget constraint                              (current )
         fddef(i)      definition of domestic final demands                         (units)
         export(i)     downward sloping export demand curves                        (units)
         equil(i)      market clearing conditions                                   (units)
         margdet       determination of total trade margins                      (current )
         fbudget       rest of the world budget constraint                       (current )
         invsav        investment savings equality                               (current )
         utildef(r)    definition of regional utility                               (utils) ;


$Stitle equations of the model


* objective function

qdep00(i)..   deprec00(i) =e= pk00(i)*k(i)*depp(i) + sum(r$ri(r,i), pls00(r)*ls(i)*depl(i)) ;

qdep(i)..     deprec(i) =e= pk(i)*k(i)*depp(i) + sum(r$ri(r,i), pls(r)*ls(i)*depl(i)) ;

qgdp..        ogdp =e= sum(i, pv00(i)*v(i)+deprec00(i) ) ;

qcns..        ocns =e= sum((i,r), pc00(i)*ch(i,r) ) ;

qgfi..        ogfi =e= sum(i, pc00(i)*id(i) + deprec(i)*idshr*sum(j, pc00(j)*aid(j) )/sum(j, pc(j)*aid(j) ) ) ;

qchs..        ochs =e= sum(i, pq00(i)*dst(i) + deprec(i)*dstshr*sum(j, pc00(j)*aid(j) )/sum(j, pc(j)*aid(j) ) ) ;

qinv..        oinv =e= ogfi + ochs ;

qexp..        oexp =e= sum(ie, ex(ie)*pq00(ie)*(1 + trmx(ie)) ) ;

qimp..        oimp =e= sum(i, (m(i)*pim00(i)*(1 + trmm(i)))$im(i) + nm(i)*pnm00(i) ) ;

qgdpmp..      ogdpmp =e= ocns + sum(i, pc00(i)*cg(i) ) + oinv + oexp - oimp ;

* production equations

valueq(i)..   q(i)*pq(i) =e= x(i)*px(i) + (m(i)*pm(i))$im(i)  ;

prodq(sc)..   q(sc) =e= aq(sc)*(deltaq(sc)*x(sc)**(-rhoq(sc)) + (1-deltaq(sc))*m(sc)**(-rhoq(sc)))**
                        (-1/rhoq(sc)) ;

firstq(sc)..  x(sc) =e= m(sc)*(pm(sc)*deltaq(sc)/(px(sc)*(1-deltaq(sc))))**sigmaq(sc) ;

pmdef(im)..   pm(im) =e= pim(im)*(1 + trmm(im) + tfm(im) + taum(im)) ;

supply(i)$(not sc(i))..
              q(i) =e= x(i) + m(i)$im(i) ;

taumdet(im)$(not sc(im))..
              pm(im) =e= px(im) ;

valuex(i)..   x(i)*px(i) =e= g(i)*pg(i) + z(i)*pz(i) ;

prodx(i)..    x(i) =e= ax(i)*(deltax(i)*z(i)**(-rhox(i)) +
                       (1-deltax(i))*g(i)**(-rhox(i)))**(-1/rhox(i)) ;

firstx(i)..   z(i) =e= g(i)*(pg(i)*deltax(i)/(pz(i)*(1-deltax(i))))**sigmax(i) ;

valuez(i)..   z(i)*pz(i) =e= v(i)*pv(i) + n(i)*pn(i) ;

prodz(i)..    z(i) =e= az(i)*(deltaz(i)*v(i)**(-rhoz(i)) + (1-deltaz(i))*n(i)**(-rhoz(i)))**
                       (-1/rhoz(i)) ;

firstz(i)..   v(i) =e= n(i)*(pn(i)*deltaz(i)/(pv(i)*(1-deltaz(i))))**sigmaz(i) ;

valuen(i)..   n(i)*pn(i) =e= nd(i)*pnd(i) + nm(i)*pnm(i) ;

prodn(i)..    n(i) =e= an(i)*(deltan(i)*nd(i)**(-rhon(i)) + (1-deltan(i))*nm(i)**(-rhon(i)))
                       **(-1/rhon(i)) ;

firstn(i)..   nd(i) =e= nm(i)*(deltan(i)*pnm(i)/((1-deltan(i))*pnd(i)))**sigman(i) ;

pnddet(i)..   pnd(i) =e= sum(j, a(j,i)*pq(j)*(1 + tnd(j))  ) ;

pnmdet(i)..   pnm(i) =e= sum(j, am(j,i)*pim(j)*(1 + trmm(j) + tnm(j)) ) ;

values(i)..   s(i)*ps(i) =e= k(i)*pk(i) + ls(i)*sum(r$ri(r,i), pls(r)) ;

prods(i)..    s(i) =e= as(i)*(deltas(i)*k(i)**(-rhos(i)) + ((1-deltas(i))*ls(i)**(-rhos(i)))$(not si(i)))**
                       (-1/rhos(i)) ;

firsts(i)$(not si(i))..
             k(i) =e= ls(i)*(sum(r$ri(r,i), pls(r))*deltas(i)/(pk(i)*(1-deltas(i))))**sigmas(i) ;

valuev(i)..   v(i)*pv(i) =e= lw(i)*sum(r$ri(r,i), w(r)) + ps(i)*s(i) ;

prodv(i)..    v(i) =e= av(i)*(deltav(i)*s(i)**(-rhov(i)) + (1 - deltav(i))*lw(i)**(-rhov(i)))**
                       (-1/rhov(i)) ;

firstv(i)..   s(i) =e= lw(i)*(sum(r$ri(r,i), w(r))*deltav(i)/(ps(i)*(1-deltav(i))))**sigmav(i) ;

lmclear..     totlab =e= sum(i$(not sa(i)), lw(i) + ls(i) ) ;

pcdet(i)..    pc(i) =e= pq(i)*(1 + tfd(i) + trmd(i) ) ;

cpidet(r)..   cpi(r)*sum(i, ch(i,r)) =e= sum(i, pc(i)*ch(i,r)) ;

* income generation

yself(i)..    y("yself",i) =e= sum(r$ri(r,i), pls(r) )*ls(i)*(1 - tw(i)) ;

ywage(i)..    y("ywage",i) =e= sum(r$ri(r,i), w(r))*lw(i)*(1 - tw(i)) ;

ycap(i)..     y("ycap",i) =e= pk(i)*k(i)*(1 - thetak(i))*(1 - tk(i)) ;

yinfr(i)..    y("yinfr",i) =e= pg(i)*g(i)*(1 - thetai) ;

gtrdet..      gtr("ynonp") =e= (gtra + gtrb)/indefl*sum(i, pv(i)*v(i))/sum(i, pv00(i)*v00(i)) ;

wtrdet..      wtr("ynonp") =e= (nct + nfi)*(er00/er)/usdefl*sum(i, pv(i)*v(i))/sum(i, pv00(i)*v00(i)) ;

fgtrdet..     fgtr("ynonp") =e= (gtra + gtrb)/indefl ;

fwtrdet..     fwtr("ynonp") =e= (nct + nfi)*(er00/er)/usdefl ;

fyself(i)..   fy("yself",i) =e= sum(r$ri(r,i), pls00(r) )*ls(i)*(1 - tw(i))             ;

fywage(i)..   fy("ywage",i) =e= sum(r$ri(r,i), w00(r))*lw(i)*(1 - tw(i)) ;

fycap(i)..    fy("ycap",i) =e= pk00(i)*k(i)*(1 - thetak(i))*(1 - tk(i)) ;

fyinfr(i)..   fy("yinfr",i) =e= pg00(i)*g(i)*(1 - thetai) ;

yhdef(ty,r).. yh(ty,r) =e= sum(i, ayi(i,r)*y(ty,i)) + ayt(r)*(gtr(ty) + wtr(ty)) ;

fyhdef(ty,r).. fyh(ty,r) =e= sum(i, ayi(i,r)*fy(ty,i)) + ayt(r)*(fgtr(ty) + fwtr(ty)) ;

mean(r)..     ym(r)*pop(r) =e= sum(ty, fyh(ty,r) ) ;

meanc(r)..    log(mc(r)) =e= alpha(r) + beta(r)*log(ym(r)) ;

les(i,r)..    pc(i)*ch(i,r) =e= pop(r)*(pc(i)*gamma(i,r) +
                                ac(i,r)*(mc(r) - sum(j, pc00(j)*gamma(j,r) ) )*
                                prod(j, (pc(j)/pc00(j))**ac(j,r) ) ) ;

iddet(i)..    id(i) =e= aid(i)*idshr*invtot ;

dstdet(i)..   dst(i) =e= adst(i)*dstshr*invtot ;

* domestic budget constraints

hbudget(r)..  savh(r) + sum(i, pc(i)*ch(i,r)) =e= sum(ty, yh(ty,r)) ;

gbudget..     sum(i, pq(i)*cg(i)) + sum(ty, gtr(ty)) + savg =e=
              sum(i, sum(j, am(j,i)*tnm(j)*pim(j))*nm(i) +
                     sum(j, a(j,i)*pq(j)*tnd(j))*nd(i) +
                     ((tfm(i)+taum(i))*pim(i)*m(i))$im(i) +
                     tw(i)*sum(r$ri(r,i), w(r))*lw(i) +
                     sum(r$ri(r,i), pls(r))*ls(i)*tw(i) +
                     tk(i)*pk(i)*k(i)*(1-thetak(i)) +
                     tfd(i)*pq(i)*sum(r, ch(i,r)) +
                     tfd(i)*pq(i)*id(i) ) ;

* market clearing

fddef(i)..   fd(i) =e= sum(r, ch(i,r)) + id(i) + cg(i) ;

export(ie).. ex(ie) =e= exscale*aex(ie)*(er00*pie(ie)/(pq(ie)*(1 + trmx(ie))))**eta(ie) ;

margdet..    marg*sum(ss, pq(ss)) =e= sum(i, trmd(i)*pq(i)*fd(i)) + sum(ie, trmx(ie)*pq(ie)*ex(ie))
                                    + sum(i, (pim(i)*trmm(i)*m(i))$im(i)
                                    + sum(j, am(j,i)*pim(j)*trmm(j) )*nm(i) ) ;

equil(i)..   q(i) + dsa(i) =e= fd(i) + sum(j, a(i,j)*nd(j)) + ex(i)$ie(i)
           + dst(i) + marg$ss(i) + sum(j, g(j))$si(i) ;

fbudget..   (savf/usdefl)*(er00/er)*sum(i, pc(i)*aid(i) )/sum(i, pc00(i)*aid(i) ) +
             sum(ie, pq(ie)*(1 + trmx(ie))*ex(ie) ) + sum(ty, wtr(ty)) =e=
             sum(im, pim(im)*m(im)) + sum(i, sum(j, am(j,i)*pim(j) )*nm(i) ) ;

*  savings and investments

invsav..   sum(r, savh(r)) + (savf/usdefl)*(er00/er)*sum(i, pc(i)*aid(i))/sum(i, pc00(i)*aid(i))
          + savg + thetai*sum(i, pg(i)*g(i)) + sum(i, thetak(i)*pk(i)*k(i) ) =e=
            sum(i, dst(i)*pq(i) + id(i)*pc(i)) + sum(si, pq(si))*sum(i, g(i)) ;

utildef(r)..
            util(r)*pop(r) =e= prod(i, (ch(i,r)-gamma(i,r)*pop(r))**ac(i,r)) ;

obj..       utility =e= psi*((sum(r, pop(r)*util(r)))$(mu = 1) +
                             (1/mu*sum(r, pop(r)*util(r)**mu))$(mu <> 0 and mu <> 1) +
                             (sum(r, pop(r)*log(util(r))))$(not mu)) +
                        ksi*invtot ;


$Stitle variable initialization


* bounds for variables

y.fx("ynonp",i) = 0 ;
wtr.fx(li)      = 0 ;
gtr.fx(li)      = 0 ;
fy.fx("ynonp",i)= 0 ;
fwtr.fx(li)     = 0 ;
fgtr.fx(li)     = 0 ;
thetai.fx       = thetai.l ;
ls.lo(i)  = .001 ;
ls.fx(i)$(not ls.l(i)) = 0 ;

* initial values for variables

util.l(r) = 10 ;
utility.l = 10 ;

Option decimals = 5 ;
Display pc.l, pop, gamma, ac, mc.l ;

x.lo(i)  = .001 ;
g.lo(i)  = .001 ;
z.lo(i)  = .001 ;
v.lo(i)  = .001 ;
n.lo(i)  = .001 ;
fd.lo(i) = .001 ;
lw.lo(i) = .001 ;
nd.lo(i) = .001 ;
nm.lo(i) = .001 ;
m.lo(sc) = .001 ;
s.lo(i)  = .001 ;

px.lo(i)  = .001 ;
pg.lo(i)  = .001 ;
pz.lo(i)  = .001 ;
pv.lo(i)  = .001 ;
pn.lo(i)  = .001 ;
pc.lo(i)  = .001 ;
pq.lo(i)  = .001 ;
w.lo(r)   = .001 ;
pnd.lo(i) = .001 ;
pnm.lo(i) = .001 ;
pm.lo(i)  = .001 ;
ps.lo(i)  = .001 ;
pk.lo(i)  = .001 ;

pls.lo(r) = .001 ;
mc.lo(r)  = .001 ;
ym.lo(r)  = .001 ;


$Stitle model definitions


Model ganges basic version of the india cge /

   infalloc, wdet,    valueq,  prodq,   firstq,  supply,  pmdef,   taumdet
   valuex,   prodx,   firstx,  valuez,  prodz,   firstz,  valuen,  prodn
   firstn,   pnddet,  pnmdet,  values,  prods,   firsts,  valuev,  prodv
   firstv,   lmclear, pcdet,   cpidet,  yself,   ywage,   ycap,    yinfr
   gtrdet,   wtrdet,  fyself,  fywage,  fycap,   fyinfr,  fgtrdet, fwtrdet
   yhdef,    fyhdef,  mean,    meanc,   les,     iddet,   dstdet,  hbudget
   fddef,    export,  equil,   margdet, fbudget, invsav,  utildef, obj   / ;

Model ganges0  base year version with tracking indicators /

   utildef, obj, valueq, prodq, firstq, pmdef, supply, taumdet, valuex, prodx, firstx, valuez
   prodz, firstz, valuen, prodn, firstn, pnddet, pnmdet, values, prods, firsts
   valuev, prodv, firstv, lmclear, pcdet, cpidet, yself, ywage, ycap, yinfr
   gtrdet, wtrdet, fyself, fywage, fycap, fyinfr, fgtrdet, fwtrdet, yhdef
   fyhdef, mean, meanc, les, iddet, dstdet, hbudget, fddef, export, equil
   margdet, fbudget, invsav, qdep00, qdep, qgdp, qcns, qgfi, qchs, qinv, qexp
   qimp, qgdpmp / ;

Option limcol = 0 ;

$Stitle base model closure

g.fx(i)   = g.l(i) ;
w.fx(r)  = dw(r) ;
ls.fx(sa) = ls.l(sa) ;
savf.fx   = 47.9   ;
ax.fx(i)  = ax.l(i) ;
exscale.fx = 1 ;
tnd.fx(i) = tnd.l(i) ;
tnm.fx(i) = tnm.l(i) ;
tfd.fx(i) = tfd.l(i) ;
tfm.fx(i) = tfm.l(i) ;
tk.fx(i)  = tk.l(i) ;
tw.fx(i)  = tw.l(i) ;
taum.fx(sc) = 0 ;
taum.fx(i)$(not im(i)) = 0 ;
beta.fx(r) = beta.l(r) ;
lambda.fx(r) = lambda.l(r) ;
m.fx(i)$(not sc(i)) = m.l(i) ;

Solve ganges0 using cns;

ax0(i) = ax.l(i) ;
exscale0 = exscale.l ;
beta0(r) = beta.l(r) ;

objgrt..      dumgrt =e= wgdp*sqr(ogdpmp/gdppr - gdpgrt) +
                         wcns*sqr(ocns/cnspr - cnsgrt) +
                         winv*sqr(oinv/invpr - invgrt) +
                         wexp*sqr(oexp/exppr - expgrt) +
                         wimp*sqr(oimp/imppr - impgrt) ;

infalloc(i).. g(i) =e= ratinf*dg(i)/sum(j, dg(j))*sum(si, x(si)) ;

wdet(r)..     w(r)*dcpi(r) =e= lambda(r)*cpi(r)*dw(r) ;

Model track ganges with tracking option /
   infalloc, wdet, valueq, prodq, firstq, supply, pmdef, taumdet, valuex, prodx
   firstx, valuez, prodz, firstz, valuen, prodn, firstn, pnddet, pnmdet, values
   prods, firsts, valuev, prodv, firstv, lmclear, pcdet, cpidet, yself, ywage
   ycap, yinfr, gtrdet, wtrdet, fyself, fywage, fycap, fyinfr, fgtrdet, fwtrdet
   yhdef, fyhdef, mean, meanc, les, iddet, dstdet, hbudget, fddef, export, equil
   margdet, fbudget, invsav, objgrt, qdep00, qdep, qgdp, qcns, qgfi, qchs, qinv
   qexp, qimp, qgdpmp, utildef, obj / ;




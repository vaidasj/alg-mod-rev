option MCP=convert;
option MCP=convert;
option MCP=convert;
$title USDA/ERS CGE Model of the US (ERS82MCP,SEQ=138)
$Ontext
 U.S. CGE MODEL WITH 1982 DATA BASE, Billions of Dollars.
 USDA/ERS GNP Version, April 1990. Programmed by: Sherman Robinson,
 Kenneth Hanson, and Maureen Kilkenny.

 The model is based on GNP data, and includes exports and imports of
 factor services.


Robinson, S, Kilkenny, M, and Hanson, K, The USDA/ERS Computable
General Equilibrium (CGE) Model of the United States. Tech. rep.,
USDA/ERS, 1990.

$Offtext


 sets

 i     sectors                / lvstk      dairy and meat
                                expcrp     grains and oilseeds
                                othcrp     other agriculture
                                agproc     agric processing
                                aginp      agric inputs
                                intmnf     interm manuf
                                fdmnf      final demand manuf
                                trdtrn     trade and transport
                                service    services
                                resta      real estate /

 f     factors of production  / labor      labor
                                capital    capital
                                land       agricultural land /

 ins   institutions           / labr       labor
                                ent        enterprises
                                prop       property /

 hh    household type         / hhtrn      transfer recipients
                                hhlab      wage earners
                                hhcap      rentiers /

* the institution names and the factor names "capital" and "land"
* are referred to explicitly below.  if changed, they must also be
* changed where referenced.
* the printing of the gnp accounts assume that there is a sector
* labeled "service."

*## subsets defined below: "define indexes"

 iag(i)          ag sectors      / lvstk, expcrp, othcrp /
 iagn(i)         non ag sectors

 ie(i)           export sectors
 ied(i)          sectors with export demand eqn
 iedn(i)         sectors with no export demand eqn
 ien(i)          non export sectors

 im(i)           import sectors
 imn(i)          non import sectors

 alias(i,j) ;

*## for sam
 set isam  categories
                      /commdty,activity,valuad,insttns,households,
                       govt,kaccount,world,total/
     isam1(isam)      /total/
     isam2(isam) ;
 alias(isam2,isam3);
 parameter sam(isam,isam) social accounting matrix ;
 isam2(isam) = not isam1(isam) ;


*######################## parameter declaration ######################

 parameters

*### read in parameters

*## read in for initialization of variables
 enttax0     enterprise tax revenue
 entsav0     enterprise savings
 exr0        exchange rate
 e0(i)       exports
 fbor0       net foreign borrowing
 fsav0       net foreign savings
 gdtot0      total volume of government consumption
 gent0       payments from government to enterprises
 govsav0     government savings
 hhsav0      household savings
 hht0        household transfers
 invest0     total investment
 m0(i)       imports
 mps0(hh)    household marginal propensity to save
 pd0(i)      domestic goods price
 pe0(i)      domestic price of exports
 pindex0     gnp deflator
 pm0(i)      domestic price of imports
 remit0      net remittances from abroad
 sstax0      social security tax revenue
 tothhtax0   household tax revenue
 xd0(i)      domestic output, volumne

*# read in table for initialization of variables (need not be declared)
* table fctres1(i,f) factor demand by sector
* table fctry(i,f)   factor income by sector

*## read in parameters as rates, shares, elasticities
 depr(i)     depreciation rates
 dstr(i)     ratio of inventory investment to gross output
 esr         enterprise savings rate
 etr         enterprise tax rate
 gles(i)     government consumption shares
 htax(hh)    household tax rate
 itax(i)     indirect tax rates
 kish(i)     shares of investment by sector of destination
 rhsh(hh)    household remittance share
 rhoc(i)     armington function exponent
 rhoe(i)     export demand price elasticity
 rhot(i)     cet function exponent
 sstr        social security tax rate
 te(i)       export subsidy rates
 tm(i)       tariff rates on imports
 thsh(hh)    household shares of government transfers

*# read in table of parameters (need not be declared)
* table cles(i,hh)      household consumption shares
* table imat(i,j)       capital composition matrix
* table io(i,j)         input-output coefficients
* table sintyh(hh,ins)  household distribution of institutional income

*### computed parameters from read in data (calibration)

*## computed parameters for initialization of variables
 deprecia0     total depreciation expenditure
 fd0(f)        factor demand, aggregate
 fs0(f)        factor supply, aggregate
 int0(i)       intermediate input demand
 netsub0       export duty revenue
 p0(i)         price of composite good
 pk0(i)        capital goods price by sector of destination
 pva0(i)       value added price by sector
 pwm(i)        world market price of imports (in dollars)
 pwe0(i)       world price of exports
 pwse(i)       world price of export substitutes
 px0(i)        average output price
 var0(i)       value added rate by sector
 wfdist(i,f)   factor price sectoral proportionality constants
 wf0(f)        factor price, aggregate average
 xxd0(i)       domestic sales, volumne
 x0(i)         composite good supply, volumne
 yfctr0(f)     factor income summed over sector
 yfland0(i)    factor income for land as fraction of capital income
 yfsect0(i)    factor income by sector
 yh0(hh)       household income
 yinst0(ins)   institutional income

*## computed parameters as rates, shares
 ac(i)         armington function shift parameter
 ad(i)         production function shift parameter
 alpha(i,f)    factor share parameter-production function
 at(i)         cet function shift parameter
 delta(i)      armington function share parameter
 econst(i)     export demand constant
 gamma(i)      cet function share parameter
 pwts(i)       price index weights
 qd(i)         dummy variable for computing ad(i)
 rmd(i)        ratio of imports to domestic sales
 sumsh         sum of share correction parameter
 sumhhsh(hh)   sum of share for hh cles
 sumimsh(i)    sum of share for imat
 tereal(i)     real export subsidy rate in 1982 dollars
 tmreal(i)     real tariff rate in 1982 dollars
         ;

*## tables used for loading variable results
* table scalres(*)     aggregate results
* table sectres(*,i)   sectoral price and quantity results
* table fctres1(i,f)   factor demand results
* table fctres2(*,f)   factor wage, supply and income results
* table insres(*,ins)  institutional income results
* table hhres(*,hh)    household savings and income results


*######################### parameter assignment ######################


 table io(i,j) input-output coefficients

                 lvstk       expcrp      othcrp      agproc      aginp

  lvstk        0.168150    0.028372    0.008224    0.136023    0.000958
  expcrp       0.271862    0.063924    0.003564    0.042413    0.010264
  othcrp       0.001403    0.001924    0.034676    0.029118    0.000696
  agproc       0.027162    0.001427    0.003346    0.219018    0.016157
  aginp        0.215859    0.194453    0.141894    0.008308    0.127179
  intmnf       0.007833    0.023602    0.042830    0.096847    0.488054
  fdmnf        0.013962    0.014380    0.015201    0.037832    0.026911
  trdtrn       0.064683    0.066275    0.057563    0.078776    0.086941
  service      0.061396    0.076441    0.063132    0.068066    0.086447
  resta        0.022761    0.101945    0.042404    0.003908    0.004418

       +         intmnf      fdmnf       trdtrn      service     resta

  lvstk        0.000265    0.000059    0.000069    0.000575    0.000000
  expcrp       0.000124    0.000037    0.000086    0.000355    0.000005
  othcrp       0.001697    0.000165    0.000072    0.000630    0.000078
  agproc       0.005055    0.011437    0.001673    0.020583    0.000037
  aginp        0.032723    0.012603    0.045185    0.020652    0.005944
  intmnf       0.283883    0.167023    0.011284    0.069580    0.001440
  fdmnf        0.048351    0.233953    0.031024    0.043826    0.008954
  trdtrn       0.069999    0.070436    0.074135    0.040961    0.004047
  service      0.106268    0.100089    0.156346    0.156056    0.091112
  resta        0.023195    0.009930    0.026575    0.022218    0.070271
      ;

 table imat(i,j) capital composition matrix

                 lvstk       expcrp      othcrp      agproc      aginp

  lvstk        0.000000    0.000000    0.000000    0.000000    0.000000
  expcrp       0.000000    0.000000    0.000000    0.000000    0.000000
  othcrp       0.000000    0.000000    0.000000    0.000000    0.000000
  agproc       0.000024    0.000000    0.000000    0.000128    0.000048
  aginp        0.107920    0.572183    0.572183    0.000449    0.045514
  intmnf       0.021095    0.012547    0.012547    0.038457    0.054939
  fdmnf        0.358399    0.109671    0.109671    0.852829    0.746376
  trdtrn       0.000000    0.000000    0.000000    0.000000    0.000000
  service      0.512562    0.305599    0.305599    0.108137    0.153123
  resta        0.000000    0.000000    0.000000    0.000000    0.000000

       +         intmnf      fdmnf       trdtrn      service     resta

  lvstk        0.000000    0.000000    0.000000    0.000000    0.000000
  expcrp       0.000000    0.000000    0.000000    0.000000    0.000000
  othcrp       0.000000    0.000000    0.000000    0.000000    0.000000
  agproc       0.000039    0.000088    0.000326    0.003320    0.003957
  aginp        0.001101    0.000340    0.000371    0.008710    0.011875
  intmnf       0.043006    0.011048    0.007640    0.018766    0.000125
  fdmnf        0.626612    0.886306    0.867568    0.235520    0.055912
  trdtrn       0.000000    0.000000    0.000000    0.000000    0.000000
  service      0.329243    0.102218    0.124095    0.708126    0.891418
  resta        0.000000    0.000000    0.000000    0.025558    0.036713
      ;


* factors of production

*  labor in millions of employees
*  capital in billions of 1982 $
*  land in millions of acres
 table fctres1(i,f) factor demand by sector

                 labor       capital     land

  lvstk         0.415354   79.844060    0.000000
  expcrp        0.389786   72.290527  342.600000
  othcrp        0.495860   27.070413   85.650000
  agproc        3.584813   90.828916    0.000000
  aginp         0.887448   80.391908    0.000000
  intmnf        5.635211  574.659325    0.000000
  fdmnf         9.907532  291.267850    0.000000
  trdtrn       18.648095  516.104860    0.000000
  service      55.605901 3871.778753    0.000000
  resta         1.070999  639.835386    0.000000
      ;

* note, cropland income is read as a fraction of capital income
 table fctry(i,f) factor income by sector

                 labor       capital     land

  lvstk         4.792637    5.014664    0.000000
  expcrp        3.323859   26.065318    0.630000
  othcrp        4.906739   10.292489    0.630000
  agproc       65.741305   32.884451    0.000000
  aginp        20.248245   13.974888    0.000000
  intmnf      153.872100  115.536383    0.000000
  fdmnf       263.093487   49.561461    0.000000
  trdtrn      330.332692  107.022255    0.000000
  service    1048.780635  493.262171    0.000000
  resta        11.908460  146.610508    0.000000
      ;

*## household parameters

 table cles(i,hh) household consumption shares

                 hhtrn       hhlab       hhcap

  lvstk         0.003931    0.003217    0.002309
  expcrp        0.000326    0.000470    0.000494
  othcrp        0.006344    0.005539    0.004931
  agproc        0.119976    0.114408    0.097157
  aginp         0.024630    0.028957    0.022995
  intmnf        0.010660    0.011127    0.010686
  fdmnf         0.089590    0.108451    0.113151
  trdtrn        0.190825    0.188008    0.188198
  service       0.516858    0.502351    0.518905
  resta         0.036861    0.037470    0.041175
      ;

* note, mps(hhcap) and htax(hhlab) are recomputed below from value data
 table hhpar(*,hh) miscellaneous household parameters

                 hhtrn       hhlab       hhcap

  thsh          1.000000    0.000000    0.000000
  rhsh          0.000000    0.000000    1.000000
  htax          0.000000    0.125960    0.350000
  mps           0.000000    0.061607    0.174295
      ;


*## institutional parameters

 table sintyh(hh,ins) household distribution of income

                 labr        ent         prop

  hhtrn         0.000000    0.000000    0.000000
  hhlab         1.000000    0.000000    0.000000
  hhcap         0.000000    1.000000    1.000000
      ;


*## production sector parameters

 table sectres(*,i)  sectoral quantities and prices

                 lvstk       expcrp      othcrp      agproc      aginp

  xd          77.115329   71.772915   26.543600  391.145476  265.279751
  e            0.211590   17.906935    1.517508   18.226606   19.340732
  m            0.653649    0.116664    2.782416   26.562680   23.669242
  px           1.000000    1.000000    1.000000    1.000000    1.000000
  pe           1.000000    1.000000    1.000000    1.000000    1.000000
  pm           1.000000    1.000000    1.000000    1.000000    1.000000
  p            1.000000    1.000000    1.000000    1.000000    1.000000
  pd           1.000000    1.000000    1.000000    1.000000    1.000000
  pk           1.000000    1.000000    1.000000    1.000000    1.000000

       +         intmnf      fdmnf       trdtrn      service     resta

  xd         691.752575  817.593692  785.067268 2609.047268  230.939170
  e           46.868929  108.003057   37.123239  107.252244    5.449350
  m           89.196218  151.445719    1.845284   47.928267    0.000000
  px           1.000000    1.000000    1.000000    1.000000    1.000000
  pe           1.000000    1.000000    1.000000    1.000000    1.000000
  pm           1.000000    1.000000    1.000000    1.000000    1.000000
  p            1.000000    1.000000    1.000000    1.000000    1.000000
  pd           1.000000    1.000000    1.000000    1.000000    1.000000
  pk           1.000000    1.000000    1.000000    1.000000    1.000000
      ;

* note, taxes are magnitudes and rates are computed
 table taxr(*,i)  sectoral taxes

                 lvstk       expcrp      othcrp      agproc      aginp

  itax         1.368870    1.276232    0.386298   10.774114    6.092757
  te           0.000000    0.000000    0.000000    0.000000    0.000000
  tm           0.008711    0.003304    0.099223    2.746818    0.062378

       +         intmnf      fdmnf       trdtrn      service     resta

  itax        26.965991    9.696082   75.726551   87.474192   30.415138
  te           0.000000    0.000000    0.000000    0.000000    0.000000
  tm           1.601493    4.028613    0.049061    0.000400    0.000000
      ;

 table parm(*,i)  miscellaneous parameters

                 lvstk       expcrp      othcrp      agproc      aginp

  depr         0.108183    0.108183    0.108183    0.095055    0.084635
  dstr         0.000811   -0.006647   -0.004847   -0.006132   -0.008088
  gles         0.000671    0.011649    0.001061    0.014240    0.019479
  kish         0.012787    0.011577    0.004335    0.014547    0.012875

       +         intmnf      fdmnf       trdtrn      service     resta

  depr         0.111027    0.094561    0.093504    0.046913    0.042354
  dstr        -0.006272   -0.010781   -0.003641   -0.001304    0.000000
  gles         0.019867    0.152708    0.044819    0.725589    0.009918
  kish         0.092033    0.046648    0.082656    0.620072    0.102470
       ;


 parameter scalres(*) /
*#### macro totals
 exr      =    1.000000
 pindex   =    1.000000
 gdtot    =  641.700000
 invest   =  447.300122
*#### tax
 sstax     =  269.535402
 enttax    =   63.079602
 tothhtax  =  409.335747
*#### transfer
 remit     =   -1.250000
 gent      =   47.530000
 hht       =  396.249995
 fbor      =  -26.080000
*#### save
 entsav    =   20.030311
 hhsav     =  153.907922
 govsav    = -110.833017
 fsav      =    1.029951
       /  ;

 table elasticity(*,i)  sectoral elasticities

        lvstk     expcrp   othcrp   agproc    aginp

  rhoc   4.0        4.0      4.0      2.0      0.75
  rhot   0.5        4.0      2.0      2.0      2.0
  rhoe   3.0        3.0      3.0

   +    intmnf     fdmnf   trdtrn    service   resta

  rhoc   0.75       0.9      1.1      0.2      0.5
  rhot   2.0        1.5      2.0      0.6      0.6
  rhoe
         ;

*################## end parameter assignment #########################

*############ specify parameters from table values ###################

*## parameters from scalres(*)
 entsav0    = scalres("entsav");
 enttax0    = scalres("enttax");
 exr0       = scalres("exr") ;
 fbor0      = scalres("fbor") ;
 fsav0      = scalres("fsav") ;
 gdtot0     = scalres("gdtot") ;
 gent0      = scalres("gent");
 govsav0    = scalres("govsav") ;
 hhsav0     = scalres("hhsav") ;
 hht0       = scalres("hht") ;
 invest0    = scalres("invest") ;
 pindex0    = scalres("pindex") ;
 remit0     = scalres("remit") ;
 sstax0     = scalres("sstax");
 tothhtax0  = scalres("tothhtax") ;

*## other table values of parameters
 e0(i)      = sectres("e",i) ;
 econst(i)  = sectres("e",i) ;
 m0(i)      = sectres("m",i) ;
 px0(i)     = sectres("px",i) ;
 pe0(i)     = sectres("pe",i) ;
 pm0(i)     = sectres("pm",i) ;
 p0(i)      = sectres("p",i) ;
 pd0(i)     = sectres("pd",i) ;
 pk0(i)     = sectres("pk",i) ;
 xd0(i)     = sectres("xd",i);

 htax(hh)   = hhpar("htax",hh) ;
 mps0(hh)   = hhpar("mps",hh) ;
 rhsh(hh)   = hhpar("rhsh",hh);
 thsh(hh)   = hhpar("thsh",hh);

 itax(i)    = taxr("itax",i)/(px0(i)*xd0(i)) ;

 rhoc(i)    = (1/elasticity("rhoc",i)) - 1 ;
 rhoe(i)    = elasticity("rhoe",i);
 rhot(i)    = (1/elasticity("rhot",i)) + 1;

 depr(i)    = parm("depr",i) ;
 dstr(i)    = parm("dstr",i) ;
 gles(i)    = parm("gles",i);
 kish(i)    = parm("kish",i) ;

*## normalize share parameters to correct for roundoff error
* these parameters (cles, imat, kish, and gles) can be read in as values
* and coverted to shares here.
 sumhhsh(hh) = sum(i, cles(i,hh)) ;
 cles(i,hh)  = cles(i,hh)/sumhhsh(hh) ;
 sumimsh(j)  = sum(i, imat(i,j)) ;
 imat(i,j)   = imat(i,j)/sumimsh(j) ;
 sumsh       = sum(i, kish(i)) ;
 kish(i)     = kish(i)/sumsh ;
 sumsh       = sum(i, gles(i)) ;
 gles(i)     = gles(i)/sumsh ;

*#### define indexes based on read in data
 iagn(i)     = not iag(i);
 ie(i)       = yes$e0(i);
 ied(i)      = yes$rhoe(i);
 iedn(i)     = not ied(i);
 ien(i)      = not ie(i);
 im(i)       = yes$m0(i);
 imn(i)      = not im(i);

*## specify parameters which depend on defined index im and ie
 tm(imn)     = 0.0 ;
 tm(im)      = taxr("tm",im)/(pm0(im)*m0(im) - taxr("tm",im)) ;
 te(ien)     = 0.0 ;
 te(ie)      = taxr("te",ie)/(pe0(ie)*e0(ie) - taxr("te",ie)) ;

*## compute from initial data
 int0(i)     = sum(j, io(i,j)*xd0(j));
 pva0(i)     = px0(i) - sum(j, io(j,i)*p0(j)) - itax(i) ;
 pwe0(i)     = pe0(i)/((1+te(i))*exr0);
 pwm(i)      = pm0(i)/((1+tm(i))*exr0);
 var0(i)     = pva0(i) + itax(i) ;
 xxd0(i)     = xd0(i) - e0(i) ;

*## for 1982 tmreal and tereal are derive from tm and te
*## for other years read in tmreal and tereal
 tmreal(i)   = tm(i)*pwm(i)*exr0 ;
 tereal(i)   = te(i)*pwe0(i)*exr0 ;
 netsub0     = sum(i, te(i)*e0(i)*pwe0(i))*exr0 ;


*################ calibration of parameters from data #############

*## adjust factor income (capital) for farm land
 yfland0(i)         = fctry(i,"land") ;
 fctry(i,"land")    = fctry(i,"capital")*yfland0(i) ;
 fctry(i,"capital") = fctry(i,"capital")*(1.0 - yfland0(i)) ;

*## factor market parameters
 fs0(f)       = sum(i,fctres1(i,f)) ;
 yfctr0(f)    = sum(i, fctry(i,f)) ;
 yfsect0(i)   = sum(f, fctry(i,f)) ;
 wf0(f)       = yfctr0(f)/fs0(f) ;
 wfdist(i,f)$fctres1(i,f) = (fctry(i,f)/fctres1(i,f))/wf0(f) ;
 wfdist(i,f)$(fctres1(i,f) eq 0) = 0.0 ;
 display wfdist;

*## institutional and household income, tax rate, and saving rate
 deprecia0 = sum(i, depr(i)*pk0(i)*fctres1(i,"capital") ) ;
 sstr = sstax0/yfctr0("labor") ;
 etr = enttax0/(yfctr0("capital") + gent0 - deprecia0) ;
 esr = entsav0/(yfctr0("capital") - enttax0 + gent0 - deprecia0) ;
 yinst0("labr") = (1.0 - sstr)*yfctr0("labor") ;
 yinst0("ent")  = yfctr0("capital") - entsav0 - enttax0 + gent0
                  - deprecia0 ;
 yinst0("prop") = yfctr0("land") ;

*## note, household income is from factors (yhva0) and transfers
*## where, yhva0(hh) = sum(ins, sintyh(hh,ins)*yinst0(ins))
 yh0(hh) = sum(ins, sintyh(hh,ins)*yinst0(ins))
                + remit0*rhsh(hh)*exr0 + hht0*thsh(hh) ;

*## compute htax(hhlab) given other hh tax rates and tothhtax0
*## where, tothhtax0 = sum(hh, htax(hh)*yh0(hh))
 htax("hhlab") = (tothhtax0 - htax("hhtrn")*yh0("hhtrn")
                  - htax("hhcap")*yh0("hhcap"))/yh0("hhlab");

*## compute mps0(hhcap) given other hh savings rates and hhsav0
*## where, hhsav0 = sum(hh, mps0(hh)*yh0(hh)*(1.0 - htax(hh)))
 mps0("hhcap")=(hhsav0 - mps0("hhtrn")*yh0("hhtrn")*(1.0-htax("hhtrn"))
                       - mps0("hhlab")*yh0("hhlab")*(1.0-htax("hhlab")))
               /(yh0("hhcap")*(1.0 - htax("hhcap"))) ;


 display wfdist, wf0, fs0, yfsect0, yfctr0 ;
 display yinst0,yh0,mps0,htax,etr,esr,sstr ;

*#### calibration of shift and share parameters ####

*## for imports-domestic composite
*##  get delta from costmin, xo from absorption, ac from armington

 delta(i)     = (pm0(i)/pd0(i))*(m0(i)/xxd0(i))**(1+rhoc(i)) ;
 delta(i)     = delta(i)/(1.0+delta(i)) ;
 x0(i)        = (pd0(i)*xxd0(i) + (pm0(i)*m0(i))$im(i))/p0(i) ;
 rmd(i)       = m0(i)/xxd0(i) ;
 ac(i)$im(i)  = x0(i)/(delta(i)*m0(i)**(-rhoc(i))
                     +(1-delta(i))*xxd0(i)**(-rhoc(i)))**(-1/rhoc(i)) ;
 ac(i)$imn(i) = 1.0 ;
 display delta,ac,rmd ;

*## for exports
*## get gamma from esupply
 gamma(ie)    = 1/(1 + pd0(ie)/pe0(ie)*(e0(ie)/xxd0(ie))**(rhot(ie)-1));
*## get at from cet
 at(ie)       = xd0(ie)/(gamma(ie)*e0(ie)**rhot(ie) + (1-gamma(ie))*
                xxd0(ie)**rhot(ie))**(1/rhot(ie)) ;
 display gamma,at ;

*## for factor demand
*## get alpha from profit max (alpha for each i should sum to 1)
 alpha(i,f)   = (wfdist(i,f)*wf0(f)*fctres1(i,f))/yfsect0(i) ;
 display alpha ;

*## get ad from output and fd0 from profitmax
 qd(i)      = prod(f, fctres1(i,f)**alpha(i,f)) ;
 ad(i)      = xd0(i)/qd(i);
 fd0(f)     = sum(i,(xd0(i)*pva0(i)*alpha(i,f)/(wfdist(i,f)*
                wf0(f)))$wfdist(i,f)) ;
 display ad,qd,fd0 ;

*## specify weights for producer price index
 pwts(i)    = xd0(i)/sum(j, xd0(j)) ;

*#### end of calibration ####
 display xd0, x0, xxd0 ;
 display pva0,pd0, pe0, pwe0, pm0, pwm, tm, pwts ;

*#####################################################################

 variables

*#################### variable declaration ##########################

*## price block
   exr       exchange rate                               ($ per world $)
   p(i)      price of composite goods
   pd(i)     domestic prices
   pe(i)     domestic price of exports
   pindex    gnp deflator
   pk(i)     price of capital goods by sector of destination
   pm(i)     domestic price of imports
   pva(i)    value added price
   pwe(i)    world price of exports
   px(i)     average output price
*## production block
   e(i)      exports                                      (82 bill $)
   m(i)      imports                                      (82 bill $)
   x(i)      composite goods supply                       (82 bill $)
   xd(i)     domestic output                              (82 bill $)
   xxd(i)    domestic sales                               (82 bill $)
*## factor block
   fs(f)     factor supply
   fdsc(i,f) factor demand by sector
   wf(f)     average factor price
   yfctr(f)  factor income                                (bill $)
*## income and expenditure block
   cd(i)     final demand for private consumption         (82 bill $)
   deprecia  total depreciation expenditure               (bill $)
   dk(i)     volume of investment by sector of destination (82 bill $)
   dst(i)    inventory investment by sector               (82 bill $)
   entsav    enterprise savings                           (bill $)
   enttax    enterprise tax revenue                       (bill $)
   fbor      net foreign borrowing                        (bill world $)
   fsav      net foreign savings                          (bill world $)
   fxdinv    fixed capital investment                     (bill $)
   gd(i)     final demand for government consumption      (82 bill $)
   gdtot     total volume of government consumption       (82 bill $)
   gent      payments from govt to ent                    (bill $)
   govsav    government savings                           (bill $)
   gr        government revenue                           (bill $)
   hhsav     total household savings                      (bill $)
   hht       household transfers                          (bill $)
   id(i)     final demand for productive investment       (82 bill $)
   indtax    indirect tax revenue                         (bill $)
   int(i)    intermediates uses                           (82 bill $)
   invest    total investment                             (bill $)
   mps(hh)   marginal propensity to save by household type
   netsub    export duty revenue                          (bill $)
   remit     net remittances from abroad                  (bill world $)
   savings   total savings                                (bill $)
   sstax     social security tax revenue                  (bill $)
   tariff    tariff revenue                               (bill $)
   tothhtax  household tax revenue                        (bill $)
   yh(hh)    household income                             (bill $)
   yinst(ins) institutional income                        (bill $)
*## gnp calculations
   rgnp      real gnp                                     (82 bill $)
   gnpva     value added in market prices gnp             (bill $)
        ;


*################## variable initialization #########################

*## use initial values of variables (from parameter specification)
 exr.l     = exr0 ;
 fbor.l    = fbor0 ;
 fsav.l    = fsav0 ;
 gdtot.l   = gdtot0 ;
 gent.l    = gent0 ;
 govsav.l  = govsav0 ;
 hht.l     = hht0 ;
 invest.l  = invest0 ;
 pindex.l  = pindex0 ;
 remit.l   = remit0 ;

 mps.l(hh) = mps0(hh) ;

 pd.l(i)   = pd0(i) ;
 p.l(i)    = p0(i) ;
 px.l(i)   = px0(i) ;
 pm.l(i)   = pm0(i) ;
 pe.l(i)   = pe0(i) ;
 xd.l(i)   = xd0(i) ;
 e.l(i)    = e0(i) ;
 m.l(i)    = m0(i) ;

 fdsc.l(i,f)  = fctres1(i,f) ;
 yfctr.l(f)   = sum(i, fctry(i,f)) ;

*## compute initial values for other variables
*## output and price
 xxd.l(i) = xd.l(i) - e.l(i) ;
 x.l(i)   = (pd.l(i)*xxd.l(i) + (pm.l(i)*m.l(i))$im(i))/p.l(i) ;
 pk.l(i)  = sum(j, p.l(j)*imat(j,i)) ;
 pwe.l(i) = pe.l(i)/((1.0 + te(i))*exr.l) ;
 pwse(i)  = pwe.l(i) ;
 pva.l(i) = px.l(i) - sum(j, io(j,i)*p.l(j)) - itax(i) ;

*## value added and the flow of factor income
 fs.l(f)         = sum(i, fdsc.l(i,f)) ;
 wf.l(f)         = yfctr.l(f)/fs.l(f) ;
 netsub.l        = sum(ie, te(ie)*e.l(ie)*pwe.l(ie))*exr.l ;
 tariff.l        = sum(im, pwm(im)*m.l(im)*tm(im))*exr.l ;
 sstax.l         = sstr*yfctr.l("labor") ;
 indtax.l        = sum(i, itax(i)*px.l(i)*xd.l(i)) ;
 deprecia.l      = sum(i, depr(i)*pk.l(i)*fdsc.l(i,"capital")) ;
 enttax.l        = etr*(yfctr.l("capital") + gent.l - deprecia.l) ;
 entsav.l        = esr*(yfctr.l("capital") + gent.l
                   - (enttax.l + deprecia.l)) ;
 yinst.l("labr") = yfctr.l("labor") - sstax.l ;
 yinst.l("ent")  = yfctr.l("capital") + gent.l
                   - (entsav.l + enttax.l + deprecia.l) ;
 yinst.l("prop") = yfctr.l("land") ;
 yh.l(hh)        = sum(ins, sintyh(hh,ins)*yinst.l(ins))
                   + remit.l*rhsh(hh)*exr.l + hht.l*thsh(hh) ;
 tothhtax.l      = sum(hh, htax(hh)*yh.l(hh)) ;
 hhsav.l         = sum(hh, mps.l(hh)*yh.l(hh)*(1.0 - htax(hh))) ;

*## final demand
 int.l(i)  = sum(j,io(i,j)*xd.l(j)) ;
 cd.l(i)   = sum(hh, cles(i,hh)*(1.0 - mps.l(hh))*yh.l(hh)
                *(1.0 - htax(hh)))/p.l(i) ;
 gd.l(i)   = gles(i)*gdtot.l ;
 dst.l(i)  = dstr(i)*xd.l(i) ;
 fxdinv.l  = invest.l - sum(i, dst.l(i)*p.l(i)) ;
 dk.l(i)   = (kish(i)*fxdinv.l)/pk.l(i) ;
 id.l(i)   = sum(j, imat(i,j)*dk.l(j)) ;
 gr.l      = tariff.l - netsub.l + indtax.l + tothhtax.l + sstax.l
             + enttax.l + fbor.l*exr.l ;
 savings.l = hhsav.l + govsav.l + deprecia.l + fsav.l*exr.l + entsav.l ;

*## gnp
 gnpva.l   = sum(i, pva.l(i)*xd.l(i)) + indtax.l + tariff.l - netsub.l ;
 rgnp.l    = sum(i, cd.l(i) + dst.l(i) + id.l(i) + gd.l(i))
             + sum(ie, (1.0 - tereal(ie)) * e.l(ie) )
             - sum(im, (1.0 - tmreal(im)) * m.l(im) ) ;
 pindex.l  = gnpva.l/rgnp.l ;

*## alternatively, set pindex to the producer price index
* pindex.l = sum(i, pwts(i)*px(i)) ;

 display yfctr.l,yinst.l,yh.l,gnpva.l,rgnp.l,pindex.l ;
 display int.l,cd.l,gd.l,id.l,dst.l,dk.l ;

*###################### end variable specification ###################

*#### to check for data consistency, display initial sam

*###################### social accounting matrix #######################

 sam("commdty","activity")    = sum(i,(p.l(i)*int.l(i))) ;
 sam("commdty","households")  = sum(i,(p.l(i)*cd.l(i))) ;
 sam("commdty","kaccount")    = sum(i,(p.l(i)*(dst.l(i)+id.l(i)))) ;
 sam("commdty","govt")        = sum(i,(p.l(i)*gd.l(i))) ;
 sam("activity","world")      = sum(i,((exr.l*pwe.l(i))*e.l(i))) ;
 sam("activity","commdty")    = sum(i,  (px.l(i)*xd.l(i))
                                      - (pe.l(i)*e.l(i)) ) ;
 sam("activity","govt")       = netsub.l ;
 sam("valuad","activity")     = sum(f, yfctr.l(f)) ;
 sam("insttns","valuad")      = sum(f,yfctr.l(f)) - sstax.l ;
 sam("insttns","govt")        = gent.l ;
 sam("households","insttns")= sum((ins,hh),sintyh(hh,ins)*yinst.l(ins));
 sam("households","govt")     = hht.l ;
 sam("kaccount","insttns")    = entsav.l + deprecia.l ;
 sam("kaccount","households") = hhsav.l ;
 sam("kaccount","govt")       = govsav.l ;
 sam("govt","commdty")        = tariff.l ;
 sam("govt","activity")       = indtax.l ;
 sam("govt","valuad")         = sstax.l ;
 sam("govt","insttns")        = enttax.l ;
 sam("govt","households")     = tothhtax.l ;
 sam("world","commdty")       = sum(i,((pwm(i)*exr.l)*m.l(i))) ;
 sam("world","households")    = - remit.l*exr.l ;
 sam("world","govt")          = - fbor.l*exr.l ;
 sam("world","kaccount")      = - fsav.l*exr.l ;
 sam("total","commdty")       = sum(isam2,sam(isam2,"commdty")) ;
 sam("total","activity")      = sum(isam2,sam(isam2,"activity")) ;
 sam("total","valuad")        = sum(isam2,sam(isam2,"valuad")) ;
 sam("total","insttns")       = sum(isam2,sam(isam2,"insttns")) ;
 sam("total","households")    = sum(isam2,sam(isam2,"households")) ;
 sam("total","kaccount")      = sum(isam2,sam(isam2,"kaccount")) ;
 sam("total","govt")          = sum(isam2,sam(isam2,"govt")) ;
 sam("total","world")         = sum(isam2,sam(isam2,"world")) ;
 sam(isam3,"total")           = sum(isam2,sam(isam3,isam2)) ;

 option decimals=2 ;
 display sam ;
 option decimals=3 ;
*#####################################################################

 equations

*#################### equation declaration ###########################

*## price block
   pmdef(i)         definition of domestic import prices
   pedef(i)         definition of domestic export prices
   absorption(i)    value of domestic sales
   sales(i)         value of domestic output
   actp(i)          definition of activity prices
   pkdef(i)         definition of capital goods price
   pindexdef        definition of general price level
*## production block
   activity(i)      production function
   profitmax(i,f)   first order conditions for profit maximum
   inteq(i)         total intermediate uses
   cet(i)           cet function
   cet2(i)          domestic sales for nontraded sectors
   esupply(i)       export supply
   edemand(i)       export demand functions
   armington(i)     composite good aggregation function
   armington2(i)    composite good agg. for nontraded sectors
   costmin(i)       f.o.c. for cost minimization of composite good
*## income block
   yfctreq(f)       factor income
   labory           labor income
   propy            property income
   enty             enterprise income
   hhy(hh)          household income
   tariffdef        tariff revenue
   indtaxdef        indirect taxes on domestic production
   netsubdef        export subsidies
   taxss            social security tax
   etax             enterprise tax
   hhtaxdef         total household taxes collected by govt.
   depreq           depreciation expenditure
   esave            enterprise savings
   hhsaveq          household savings
   greq             government revenue
   totsav           total savings
*## expenditure block
   cdeq(i)          private consumption behavior
   gdeqi(i)         govt consumption of commodities
   gruse            government savings
   dsteq(i)         inventory investment
   fixedinv         fixed investment net of inventory
   prodinv(i)       investment by sector of destination
   ieq(i)           investment by sector of origin
*## market clearing
   equil(i)         goods market equilibrium
   fmequil(f)       factor market equilibrium
   caeq             current account balance (bill dollars)
*  walras           savings investment equilibrium

*## the walras equation is redundant,
*## given that the model satisfies walras' law.
*## in this case, we drop the savings-investment balance equation.

*## gross national product
   gnpy             total value added including indtax
   gnpr             real gnp
         ;


*######################## equation assignment  #######################

*## price block

 pmdef(im)..     pm(im)  =e= pwm(im)*exr*(1 + tm(im)) ;

 pedef(ie)..     pe(ie)  =e= pwe(ie)*(1 + te(ie))*exr ;

 absorption(i).. p(i)*x(i)   =e= pd(i)*xxd(i) + (pm(i)*m(i))$im(i) ;

 sales(i)..      px(i)*xd(i) =e= pd(i)*xxd(i) + (pe(i)*e(i))$ie(i) ;

 actp(i)..       pva(i) =e= px(i)*(1.0-itax(i)) - sum(j,io(j,i)*p(j)) ;

 pkdef(i)..      pk(i)   =e= sum(j, p(j)*imat(j,i)) ;

 pindexdef..     pindex  =e= gnpva/rgnp ;

*## production block

 activity(i)..   xd(i)   =e= ad(i)*prod(f$alpha(i,f),
                             fdsc(i,f)**alpha(i,f)) ;

 profitmax(i,f)$wfdist(i,f)..  wf(f)*wfdist(i,f)*fdsc(i,f) =e=
                                          xd(i)*pva(i)*alpha(i,f) ;

 inteq(i)..      int(i)  =e= sum(j, io(i,j)*xd(j));

 cet(ie)..       xd(ie)  =e= at(ie)*(gamma(ie)*e(ie)**rhot(ie) +
                   (1-gamma(ie))*xxd(ie)**rhot(ie))**(1/rhot(ie)) ;

 cet2(ien)..     xd(ien) =e= xxd(ien) ;

 esupply(ie)..   e(ie)   =e= xxd(ie)*(pe(ie)/pd(ie)*(1 - gamma(ie))
                             /gamma(ie))**(1/(rhot(ie)-1)) ;

 edemand(ied)..  e(ied)  =e= econst(ied)*((pwe(ied)/pwse(ied))
                                                     **(-rhoe(ied))) ;

 armington(im)..  x(im)  =e= ac(im)*(delta(im)*m(im)**(-rhoc(im)) +
                  (1 - delta(im))*xxd(im)**(-rhoc(im)))**(-1/rhoc(im)) ;

 armington2(imn)..  x(imn) =e= xxd(imn) ;

 costmin(im)..   m(im)/xxd(im) =e= (pd(im)/pm(im)*delta(im)/
                                  (1 - delta(im)))**(1/(1 + rhoc(im))) ;

*## income block

 yfctreq(f)..    yfctr(f) =e= sum(i, wf(f)*wfdist(i,f)*fdsc(i,f));

 labory..        yinst("labr") =e= yfctr("labor") - sstax ;

 propy..         yinst("prop") =e= yfctr("land") ;

 enty..          yinst("ent")  =e= yfctr("capital") + gent
                                   - (entsav + enttax + deprecia) ;

 hhy(hh)..       yh(hh) =e= sum(ins, sintyh(hh,ins)*yinst(ins))
                            + remit*rhsh(hh)*exr + hht*thsh(hh) ;

 tariffdef..     tariff =e= sum(im, tm(im)*m(im)*pwm(im))*exr ;

 indtaxdef..     indtax =e= sum(i, itax(i)*px(i)*xd(i)) ;

 netsubdef..     netsub =e= sum(ie, te(ie)*e(ie)*pwe(ie))*exr ;

 taxss..         sstax  =e= sstr*yfctr("labor") ;

 etax..          enttax =e= etr*(yfctr("capital") - deprecia + gent) ;

 hhtaxdef..      tothhtax =e= sum(hh, htax(hh)*yh(hh)) ;

 depreq..        deprecia =e= sum(i, depr(i)*pk(i)*fdsc(i,"capital")) ;

 esave..         entsav =e= esr*(yfctr("capital")+gent-enttax-deprecia);

 hhsaveq..       hhsav  =e= sum(hh, mps(hh)*yh(hh)*(1 - htax(hh))) ;

 greq..          gr     =e= tariff - netsub + indtax +tothhtax +
                                      sstax + enttax + fbor*exr ;

 totsav..    savings =e= hhsav + govsav + deprecia + fsav*exr + entsav ;

*## expenditure block

 cdeq(i)..       p(i)*cd(i) =e= sum(hh, cles(i,hh)*(1-mps(hh))*yh(hh)
                                          *(1-htax(hh))) ;

 gdeqi(i)..      gd(i)  =e= gles(i)*gdtot ;

 gruse..         gr     =e= sum(i, p(i)*gd(i)) + govsav + gent + hht ;

 dsteq(i)..      dst(i) =e= dstr(i)*xd(i) ;

 fixedinv..      fxdinv =e= invest - sum(i, dst(i)*p(i)) ;

 prodinv(i)..    pk(i)*dk(i) =e= kish(i)*fxdinv ;

 ieq(i)..        id(i)  =e= sum(j, imat(i,j)*dk(j));

*## market clearing

 equil(i)..      x(i)   =e= int(i) + cd(i) + gd(i) + id(i) + dst(i) ;

 fmequil(f)..    sum(i, fdsc(i,f)) =e= fs(f) ;

 caeq..          sum(im, pwm(im)*m(im)) =e= sum(ie, pwe(ie)*e(ie))
                                  +  fsav + remit + fbor ;

*walras..        savings =e= invest ;

*## gross national product

 gnpy..      gnpva =e= sum(i,pva(i)*xd(i)) + indtax + tariff - netsub ;

 gnpr..      rgnp =e= sum(i,cd(i) + dst(i) + id(i) + gd(i))
                    + sum(ie,(1.0 - tereal(ie)) * e(ie) )
                    - sum(im,(1.0 - tmreal(im)) * m(im) ) ;

*#### additional restrictions corresponding to equations
*# pmdef, pedef, edemand, esupply, costmin, and profitmax
*# for non-traded sectors and sectors with fixed world export prices

 pm.fx(imn)   = pm0(imn) ;
 pe.fx(ien)   = pe0(ien) ;
 pwe.fx(iedn) = pwe.l(iedn) ;
 e.fx(ien)    = 0;
 m.fx(imn)    = 0;
 fdsc.fx(i,f)$(wfdist(i,f) eq 0) = 0 ;

*#### variable bounds
*these are included to improve algorithm performance.  they are not
*necessary for model specification.
*. p.lo(i)    = 0.0 ;  pd.lo(i)  = 0.0 ;  pm.lo(im) = 0.0 ;
*. pk.lo(i)   = 0.0 ;  px.lo(i)  = 0.0 ;  x.lo(i)   = 0.0 ;
*. xd.lo(i)   = 0.0 ;  m.lo(im)  = 0.0 ;  xxd.lo(i) = 0.0 ;
*. wf.lo(f)   = 0.0 ;  int.lo(i) = 0.0 ;  e.lo(ie)  = 0.0 ;
*. fdsc.lo(i,f)$(fdsc.l(i,f) ne 0) = 0.0 ;
*. pva.lo(i) = 0.0 ;

*########################### model closure #############################

*## foreign exchange market closure
* in this version, the balance of trade (current account balance) is
* fixed exogenously and the exchange rate is the equilibrating variable.

*  exr.fx     = exr.l ;
   fsav.fx    = fsav.l ;
   remit.fx   = remit.l ;
   fbor.fx    = fbor.l ;

*## investment-savings closure
* this version specifies neoclassical closure.  aggregate investment is
* determined by aggregate savings; the model is savings driven.

   mps.fx(hh) = mps.l(hh) ;
*  invest.fx  = invest.l ;

*## exogenous govt expenditure
*## and govt closure rule
* real government spending (gdtot) is fixed exogenously.  the government
* deficit (govsav) is determined residually.

   gdtot.fx   = gdtot.l ;
   gent.fx    = gent.l ;
   hht.fx     = hht.l ;
*  govsav.fx  = govsav.l ;

*## factor market closure
* in this version, all factors, including capital, are mobile.
* commented equations allow a version with fixed wage for labor.
* the model then solves for aggregate employment.

   fs.fx(f)       = fs.l(f) ;
*  wf.fx("labor") = wf.l("labor") ;
*  fs.lo("labor") = -inf ;
*  fs.up("labor") = +inf ;

*## numeraire price index
*in this case, the gnp deflator.

   pindex.fx = pindex.l ;


*########################### end of model ############################

 options iterlim=1000,limrow=0,limcol=0,solprint=off;

*       randomize the import prices to make the
*       solution more challenging:

 option seed=1203;
 loop(i,   pwm(i) = uniform(0.2,2.0) * pwm(i); );

 model us82 /all/ ;
 solve us82 using mcp;


*#################### solution reports and output ####################
*#### three report and output blocks
*## 1) tables of results for variables in model
*## 2) tables of results for display
*## 3) tables of results for restart solution ratio tables
*## use $ontext and $offtext to turn off reports not wanted.
*#####################################################################

*#### 1) tables of results for variables in the model

*## macro aggregate results
 scalres("exr")      = exr.l ;
 scalres("pindex")   = pindex.l ;
 scalres("rgnp")     = rgnp.l ;
 scalres("gnpva")    = gnpva.l ;

 scalres("invest")   = invest.l ;
 scalres("fxdinv")   = fxdinv.l ;
 scalres("gdtot")    = gdtot.l ;
 scalres("gr")       = gr.l ;

 scalres("sstax")    = sstax.l ;
 scalres("tariff")   = tariff.l ;
 scalres("indtax")   = indtax.l ;
 scalres("enttax")   = enttax.l ;
 scalres("tothhtax") = tothhtax.l ;
 scalres("netsub")   = netsub.l ;

 scalres("remit")    = remit.l ;
 scalres("gent")     = gent.l ;
 scalres("hht")      = hht.l ;
 scalres("fbor")     = fbor.l ;

 scalres("savings")  = savings.l ;
 scalres("entsav")   = entsav.l ;
 scalres("deprecia") = deprecia.l ;
 scalres("hhsav")    = hhsav.l ;
 scalres("govsav")   = govsav.l ;
 scalres("fsav")     = fsav.l ;


*## factor of production results
 fctres1(i,f)        = fdsc.l(i,f) ;

*## table fctres2(*,f) miscellaneous factor variable results ;
 set ifvar /wf, fs, yfctr/ ;
 parameter fctres2(ifvar,f) miscellaneous factor variable results ;
 fctres2("wf",f)     = wf.l(f) ;
 fctres2("fs",f)     = fs.l(f) ;
 fctres2("yfctr",f)  = yfctr.l(f) ;

*## sectoral price and quantity results
 sectres("p",i)   = p.l(i) ;
 sectres("pd",i)  = pd.l(i) ;
 sectres("pe",i)  = pe.l(i) ;
 sectres("pk",i)  = pk.l(i) ;
 sectres("pm",i)  = pm.l(i) ;
 sectres("pva",i) = pva.l(i) ;
 sectres("pwe",i) = pwe.l(i) ;
 sectres("px",i)  = px.l(i) ;

 sectres("x",i)   = x.l(i) ;
 sectres("xd",i)  = xd.l(i) ;
 sectres("xxd",i) = xxd.l(i) ;
 sectres("e",i)   = e.l(i) ;
 sectres("m",i)   = m.l(i) ;
 sectres("int",i) = int.l(i) ;
 sectres("cd",i)  = cd.l(i) ;
 sectres("gd",i)  = gd.l(i) ;
 sectres("id",i)  = id.l(i) ;
 sectres("dst",i) = dst.l(i) ;
 sectres("dk",i)  = dk.l(i) ;

*## institutional results
*## table insres(*,ins) institutional income results
 set insvar /yinst/ ;
 parameter insres(insvar,ins) institutional income results ;
 insres("yinst",ins) = yinst.l(ins) ;

*## household results
*## table hhres(*,hh) miscellaneous household results
 set hhvar /mps, yh/ ;
 parameter hhres(hhvar,hh) miscellaneous household results ;
 hhres("mps",hh)     = mps.l(hh) ;
 hhres("yh",hh)      = yh.l(hh) ;

 option decimals = 6 ;
 display scalres, fctres1, fctres2, sectres, insres, hhres ;
 option decimals = 3 ;

*#####################################################################

*#### 2) tables of results for display

*## define sets for solution report tables ####
* for gnp tabulations

 set ignp  rows       /consmpt,investment,inventory,government,
                       exports,imports,gnp /
     ignp1(ignp)      /gnp/
     ignp2(ignp)
     jgnp  columns    /nominal
                       real
                       nomshare
                       realshare
                       deflator / ;
 ignp2(ignp) = not ignp1(ignp) ;

 parameter gnptab(ignp,jgnp)  gnp accounts ;
 parameter gnptab2(i,jgnp)    sectoral value added ;
 parameter sumgnp(jgnp)       aggregate gnp;
 parameter gnpratio           gnp value added correction factor ;

* for absorb
 set rar  rows     / ag,non-ag,total /
     rac  columns  / gnp,c,i,g,e,m,nete-m,t-g,absorb /
 parameter absorb(rar,rac)    absorption table (real) ;

* for factors
 set rf / yf,yfcap,profit,rental,rdist,wdcap,
          yflabor,wdlabor,yfland,wdland,pint,intinp /
 parameter factors(i,rf)      factor returns distributive parameters ;

* for coeffs (shift and share coefficients)
 set rc / alphal,alphac,alphap,rmd,delta,ad /
 parameter coeffs(i,rc)       shift,share and distributive parameters ;

*## define extra parameters for solution report tables ####

 parameters
            agtotfd     agricultural terms of trade
            agtotva     ag terms of trade value added
            agtote      ag terms of trade world export price
            agtotm      ag terms of trade world import price
            avgprofit   average profit rate
            avgwf       average factor price current weights
            bot         nominal balance of trade
            botr        real balance of trade
            colind      cost of living index
            esum        real exports
            exrind      real exchange rate index
            hold1       holds value for end calculation
            indhold     holds value for end calculation
            intinp(i)   intermediate input demand by sector i
            intinpn(i)  nominal intermediate input demand by sector i
            msum        real imports
            ncdtot      nominal cdtot
            nex         nominal exports
            nim         nominal imports
            ngdtot      nominal govt demand
            ngnp        nominal gnp
            pnagind     nonag price index
            pagind      ag price index
            pmind       domestic import price index
            peind       domestic export price index
            pweind      world export price index
            pwmind      world import price index
            psav        private savings
            pxind       producer price index
            pdind       domestic supply price index
            pind        composite good price index
            pint(i)     cost per unit of intermediate inputs
            profit(i)   profit rate
            rdist(i)    capital rental proportionality factor
            rental(i)   rental rate of capital
            shconsump   consumption share of nominal gnp
            shinvest    investment share of nominal gnp
            shex        export share of nominal gnp
            shim        import share of nominal gnp
            shgdtot     govt consumption share of nominal gnp
            shbot       balance of trade share of nominal gnp
            shfsav      foreign saving share of investment
            shgsav      government saving share of investment
            shpsav      private saving share of investment
            valadd(i)   value added at market price
            sectory(i)  value added at factor cost
            wtd(i)      base year wt domestic in total domestic sales
            wtm(i)      base year wt of imports in total trade
            wtx(i)      base year wt of exports in total trade
            yf(i,f)     factor income
                   ;

*#### specify extra parameters for solution report tables ####

*## ag terms of trade ##
 pagind     = sum(iag,px.l(iag)*xd.l(iag))/sum(iag,xd.l(iag));
 pnagind    = sum(iagn,px.l(iagn)*xd.l(iagn))/sum(iagn,xd.l(iagn));
 agtotfd    = 100*pagind/pnagind;

 pagind     = sum(iag,pva.l(iag)*xd.l(iag))/sum(iag,xd.l(iag));
 pnagind    = sum(iagn,pva.l(iagn)*xd.l(iagn))/sum(iagn,xd.l(iagn));
 agtotva    = 100*pagind/pnagind;

 pagind     = sum(iag,pwe.l(iag)*e.l(iag))/sum(iag,e.l(iag));
 pnagind    = sum(iagn,pwe.l(iagn)*e.l(iagn))/sum(iagn,e.l(iagn));
 agtote     = 100*pagind/pnagind;
 pagind     = sum(iag,pwm(iag)*m.l(iag))/sum(iag,m.l(iag));
 pnagind    = sum(iagn,pwm(iagn)*m.l(iagn))/sum(iagn,m.l(iagn));
 agtotm     = 100*pagind/pnagind;

 display agtotfd, agtotva, agtotm, agtote ;

*## macro balances ##
 ncdtot     = sum(i,cd.l(i)*p.l(i));
 ngdtot     = sum(i,gd.l(i)*p.l(i));
 ngnp       = sum(i,p.l(i)*(cd.l(i) + dst.l(i) + id.l(i) + gd.l(i))
                + pe.l(i)*e.l(i) - pwm(i)*exr.l*m.l(i));
 nex        = sum(ie,e.l(ie)*exr.l*pwe.l(ie));
 nim        = sum(im,m.l(im)*exr.l*pwm(im));
 bot        = nex-nim;
 botr       = sum(i,e.l(i)) - sum(i,m.l(i));
 esum       = sum(i,e.l(i));
 msum       = sum(i,m.l(i));
 psav       = invest.l - fsav.l - govsav.l;
 shbot      = 100*bot/gnpva.l;
 shconsump  = 100*ncdtot/gnpva.l;
 shex       = 100*nex/gnpva.l;
 shfsav     = 100*fsav.l/invest.l;
 shim       = 100*nim/gnpva.l;
 shinvest   = 100*invest.l/gnpva.l;
 shgdtot    = 100*ngdtot/gnpva.l;
 shgsav     = 100*govsav.l/invest.l;
 shpsav     = 100*psav/invest.l;

 display bot,botr,nex,esum,nim,msum,shconsump,shinvest,
           shgdtot,shex,shim,shbot,shfsav,shgsav,shpsav;

*## indexes ##
* note that cost of living index (colind) is the simple average over
* households.  card(hh) is the "cardinal" function which counts number
* of entries in the set.

 colind     = sum(i,p.l(i)*(sum(hh,cles(i,hh))))*100/card(hh);
 wtd(i)     = xxd0(i)/sum(j,xxd0(j)) ;
 wtm(i)     = m0(i)/sum(j,(m0(j)+e0(j))) ;
 wtx(i)     = e0(i)/sum(j,(m0(j)+e0(j))) ;
 exrind     = sum(i,wtd(i)*pd.l(i))
                     /sum(i,(wtm(i)*pm.l(i))+(wtx(i)*pe.l(i)))*100 ;
 pdind      = sum(i,xxd0(i)*pd.l(i))/sum(j,xxd0(j))*100;
 peind      = sum(i,e0(i)*pe.l(i))/sum(j,e0(j))*100;
 pind       = sum(i,x0(i)*p.l(i))/sum(j,x0(j))*100;
 pmind      = sum(i,m0(i)*pm.l(i))/sum(j,m0(j))*100;
 pweind     = sum(i,e0(i)*pwe.l(i))/sum(i,e0(i))*100;
 pwmind     = sum(i,m0(i)*pwm(i))/sum(i,m0(i))*100;
 pxind      = sum(i,pwts(i)*px.l(i))*100 ;

 display colind,exrind,ngnp,pdind,pind,peind,pmind,pweind,pwmind,pxind;

*#### specify solution report tables ####

*## gnp tables ##

* note treatment of tariffs.
* in u.s. nipa, tariffs are included in the service sector.
* in the u.n. sna, tariffs are treated separately.
* treatment below follows u.s. nipa practice.
* note that real gnp from expenditure side provides the control total,
* and sectoral real value addeds are adjusted
* to match total using gnpratio.

 gnptab("consmpt","nominal")     = sum(i,p.l(i)*cd.l(i)) ;
 gnptab("consmpt","real")        = sum(i,cd.l(i));
 gnptab("investment","nominal")  = sum(i,p.l(i)*id.l(i));
 gnptab("investment","real")     = sum(i,id.l(i)) ;
 gnptab("inventory","nominal")   = sum(i,p.l(i)*dst.l(i)) ;
 gnptab("inventory","real")      = sum(i,dst.l(i)) ;
 gnptab("government","nominal")  = sum(i,p.l(i)*gd.l(i)) ;
 gnptab("government","real")     = sum(i,gd.l(i)) ;
 gnptab("exports","nominal")     = sum(i,pwe.l(i)*e.l(i))*exr.l ;
 gnptab("exports","real")        = sum(i,(1.0 - tereal(i))*e.l(i)) ;
 gnptab("imports","nominal")     = -sum(i,pwm(i)*m.l(i))*exr.l ;
 gnptab("imports","real")        = -sum(i,(1.0 - tmreal(i))*m.l(i)) ;
 gnptab("gnp","nominal")    = sum(ignp2,gnptab(ignp2,"nominal")) ;
 gnptab("gnp","real")       = sum(ignp2,gnptab(ignp2,"real")) ;
 gnptab(ignp,"nomshare")    = 100.*gnptab(ignp,"nominal")
                                  /gnptab("gnp","nominal") ;
 gnptab(ignp,"realshare")   = 100.*gnptab(ignp,"real")
                                               /gnptab("gnp","real") ;
 gnptab(ignp,"deflator")    = 100.*gnptab(ignp,"nominal")
                                               /gnptab(ignp,"real") ;

 gnptab2(i,"nominal")      = pva.l(i)*xd.l(i) + itax(i)*px.l(i)*xd.l(i)
                             - te(i)*pwe.l(i)*e.l(i)*exr.l ;
 gnptab2("service","nominal") = gnptab2("service","nominal") + tariff.l;
 gnptab2(i,"real")         = var0(i)*xd.l(i) ;
 gnptab2("service","real") = gnptab2("service","real")
                             + sum(i,tmreal(i)*m.l(i));
 sumgnp("nominal")        = sum(i,gnptab2(i,"nominal")) ;
 sumgnp("real")           = sum(i,gnptab2(i,"real")) ;
 gnpratio                 = gnptab("gnp","real")/sumgnp("real") ;
 gnptab2(i,"real")        = gnpratio*gnptab2(i,"real") ;
 sumgnp("real")           = sum(i,gnptab2(i,"real")) ;
 gnptab2(i,"nomshare")    = 100*gnptab2(i,"nominal")/sumgnp("nominal") ;
 gnptab2(i,"realshare")   = 100*gnptab2(i,"real")/sumgnp("real") ;
 sumgnp("nomshare")       = sum(i,gnptab2(i,"nomshare")) ;
 sumgnp("realshare")      = sum(i,gnptab2(i,"realshare")) ;
 gnptab2(i,"deflator")    = 100.*gnptab2(i,"nominal")/gnptab2(i,"real");

 display  gnptab, gnptab2, sumgnp, gnpratio ;

*## report absorption ##
 absorb("ag","c")          = sum(iag,cd.l(iag)) ;
 absorb("non-ag","c")      = sum(iagn,cd.l(iagn)) ;
 absorb("total","c")       = sum(i,cd.l(i)) ;
 absorb("ag","i")          = sum(iag,id.l(iag)) ;
 absorb("non-ag","i")      = sum(iagn,id.l(iagn)) ;
 absorb("total","i")       = sum(i,id.l(i)) ;
 absorb("ag","g")          = sum(iag,gd.l(iag)) ;
 absorb("non-ag","g")      = sum(iagn,gd.l(iagn)) ;
 absorb("total","g")       = sum(i,gd.l(i)) ;
 absorb("ag","e")          = sum(iag,e.l(iag)) ;
 absorb("non-ag","e")      = sum(iagn,e.l(iagn)) ;
 absorb("total","e")       = sum(i,e.l(i)) ;
 absorb("ag","m")          = sum(iag,m.l(iag)) ;
 absorb("non-ag","m")      = sum(iagn,m.l(iagn)) ;
 absorb("total","m")       = sum(i,m.l(i)) ;
 absorb("ag","nete-m")     = sum(iag,e.l(iag))-sum(iag,m.l(iag)) ;
 absorb("non-ag","nete-m") = sum(iagn,e.l(iagn))-sum(iagn,m.l(iagn)) ;
 absorb("total","nete-m")  = esum - msum ;
 absorb("total","t-g")     = govsav.l ;
 absorb("ag","gnp")        = sum(iag,cd.l(iag)+dst.l(iag)+id.l(iag)
                                +gd.l(iag)+e.l(iag)-m.l(iag)) ;
 absorb("non-ag","gnp")    = rgnp.l - absorb("ag","gnp") ;
 absorb("total","gnp")     = rgnp.l ;
 absorb("ag","absorb")     = sum(iag,cd.l(iag)+id.l(iag)+gd.l(iag)) ;
 absorb("non-ag","absorb") = sum(iagn,cd.l(iagn)+id.l(iagn)+gd.l(iagn));
 absorb("total","absorb")  = sum(i,cd.l(i)+id.l(i)+gd.l(i)) ;

 display absorb ;

*### calculate and report selected parameters and coefficients #########
 intinp(j)  = sum(i, io(i,j)*xd.l(j)) ;
 intinpn(j) = sum(i, p.l(i)*io(i,j)*xd.l(j)) ;
 pint(i)    = sum(j, io(j,i)*p.l(j)) ;
 yf(i,f)    = wfdist(i,f)*wf.l(f)*fdsc.l(i,f) ;
 profit(i)  = (wfdist(i,"capital")*wf.l("capital")*fdsc.l(i,"capital"))
               /(fdsc.l(i,"capital")*pk.l(i)) ;
 avgprofit  = sum(i, wfdist(i,"capital")*wf.l("capital")
              *fdsc.l(i,"capital"))/sum(i, fdsc.l(i,"capital")*pk.l(i));
 avgwf(f)   = yfctr.l(f)/fs.l(f) ;
 rental(i)  = (wfdist(i,"capital")*wf.l("capital")*fdsc.l(i,"capital"))
               /fdsc.l(i,"capital") ;
 rdist(i)   = rental(i)/avgwf("capital") ;
 valadd(i)  = (pva.l(i)+(itax(i)*px.l(i)))*xd.l(i);
 sectory(i) = (pva.l(i))*xd.l(i);
 rmd(i)     = m.l(i)/xxd.l(i) ;

 display avgwf,avgprofit,valadd,sectory ;

 factors(i,"yf")      = sum(f,yf(i,f)) ;
 factors(i,"yfcap")   = yf(i,"capital") ;
 factors(i,"profit")  = profit(i) ;
 factors(i,"rental")  = rental(i) ;
 factors(i,"rdist")   = rdist(i) ;
 factors(i,"wdcap")   = wfdist(i,"capital") ;
 factors(i,"yflabor") = yf(i,"labor") ;
 factors(i,"wdlabor") = wfdist(i,"labor") ;
 factors(i,"yfland")  = yf(i,"land") ;
 factors(i,"wdland")  = wfdist(i,"land") ;
 factors(i,"pint")    = pint(i) ;
 factors(i,"intinp")  = intinp(i) ;


 coeffs(i,"alphal")   = alpha(i,"labor") ;
 coeffs(i,"alphap")   = alpha(i,"land") ;
 coeffs(i,"alphac")   = alpha(i,"capital") ;
 coeffs(i,"rmd")      = rmd(i) ;
 coeffs(i,"delta")    = delta(i) ;
 coeffs(i,"ad")       = ad(i) ;

 display factors, coeffs ;


*#####################################################################


*#### 3) tables of results for restart solution ratio tables

*#### define sets for restart solution ratio tables ####

* for scalres1,scalres2,rscale
 set sc / exr,   pindex, rgnp,   gnpva,  invest,   fxdinv,   gdtot,
          gr,    sstax,  tariff, indtax, enttax,   tothhtax, netsub,
          remit, gent,   hht,    fbor,   savings,  entsav,   deprecia,
          hhsav, govsav, fsav / ;
 parameter scalres1(sc)      aggregate variables ;
 parameter scalres2(sc)      restart scalar results ;
 parameter rscale(sc)        percent change from base scalars ;

* for pricres
  set rp / px, pva, pe, pwe, pm, pwm, pd, p, profit, rental, pint / ;
  parameter pricres1(i,rp)   price results by sector ;
  parameter pricres2(i,rp)   restart price results ;
  parameter rprice(i,rp)     percent change from base price results ;

* for quantres
  set rq / xd, valadd, sectory, e, m, labor, capital, land, x, xxd / ;
  parameter quantres1(i,rq)  quantity results by sector ;
  parameter quantres2(i,rq)  restart quantity results ;
  parameter rquant(i,rq)     percent change from base quantity results ;

*#### specify tables for restart ratio solution reports ####

  pricres1(i,"px")       = px.l(i) ;
  pricres1(i,"pva")      = pva.l(i) ;
  pricres1(i,"pe")       = pe.l(i) ;
  pricres1(i,"pwe")      = pwe.l(i) ;
  pricres1(i,"pm")       = pm.l(i) ;
  pricres1(i,"pwm")      = pwm(i) ;
  pricres1(i,"pd")       = pd.l(i) ;
  pricres1(i,"p")        = p.l(i) ;
  pricres1(i,"profit")   = profit(i) ;
  pricres1(i,"rental")   = rental(i) ;
  pricres1(i,"pint")     = pint(i) ;

  quantres1(i,"xd")      = xd.l(i) ;
  quantres1(i,"valadd")  = valadd(i) ;
  quantres1(i,"sectory") = sectory(i) ;
  quantres1(i,"e")       = e.l(i) ;
  quantres1(i,"m")       = m.l(i) ;
  quantres1(i,"labor")   = fdsc.l(i,"labor") ;
  quantres1(i,"capital") = fdsc.l(i,"capital") ;
  quantres1(i,"land")    = fdsc.l(i,"land") ;
  quantres1(i,"x")       = x.l(i) ;
  quantres1(i,"xxd")     = xxd.l(i) ;

*## macro aggregate results
 scalres1("exr")      = exr.l ;
 scalres1("pindex")   = pindex.l ;
 scalres1("rgnp")     = rgnp.l ;
 scalres1("gnpva")    = gnpva.l ;

 scalres1("invest")   = invest.l ;
 scalres1("fxdinv")   = fxdinv.l ;
 scalres1("gdtot")    = gdtot.l ;
 scalres1("gr")       = gr.l ;

 scalres1("sstax")    = sstax.l ;
 scalres1("tariff")   = tariff.l ;
 scalres1("indtax")   = indtax.l ;
 scalres1("enttax")   = enttax.l ;
 scalres1("tothhtax") = tothhtax.l ;
 scalres1("netsub")   = netsub.l ;

 scalres1("remit")    = remit.l ;
 scalres1("gent")     = gent.l ;
 scalres1("hht")      = hht.l ;
 scalres1("fbor")     = fbor.l ;

 scalres1("savings")  = savings.l ;
 scalres1("entsav")   = entsav.l ;
 scalres1("deprecia") = deprecia.l ;
 scalres1("hhsav")    = hhsav.l ;
 scalres1("govsav")   = govsav.l ;
 scalres1("fsav")     = fsav.l ;

 display pricres1, quantres1, scalres1 ;

*####################### social accounting matrix ######################

 sam("commdty","activity")    = sum(i,(p.l(i)*int.l(i))) ;
 sam("commdty","households")  = sum(i,(p.l(i)*cd.l(i))) ;
 sam("commdty","kaccount")    = sum(i,(p.l(i)*(dst.l(i)+id.l(i)))) ;
 sam("commdty","govt")        = sum(i,(p.l(i)*gd.l(i))) ;
 sam("activity","world")      = sum(i,((exr.l*pwe.l(i))*e.l(i))) ;
 sam("activity","commdty")    = sum(i,  (px.l(i)*xd.l(i))
                                      - (pe.l(i)*e.l(i)) ) ;
 sam("activity","govt")       = netsub.l ;
 sam("valuad","activity")     = sum(f, yfctr.l(f)) ;
 sam("insttns","valuad")      = sum(f,yfctr.l(f)) - sstax.l ;
 sam("insttns","govt")        = gent.l ;
 sam("households","insttns")= sum((ins,hh),sintyh(hh,ins)*yinst.l(ins));
 sam("households","govt")     = hht.l ;
 sam("kaccount","insttns")    = entsav.l + deprecia.l ;
 sam("kaccount","households") = hhsav.l ;
 sam("kaccount","govt")       = govsav.l ;
 sam("govt","commdty")        = tariff.l ;
 sam("govt","activity")       = indtax.l ;
 sam("govt","valuad")         = sstax.l ;
 sam("govt","insttns")        = enttax.l ;
 sam("govt","households")     = tothhtax.l ;
 sam("world","commdty")       = sum(i,((pwm(i)*exr.l)*m.l(i))) ;
 sam("world","households")    = - remit.l*exr.l ;
 sam("world","govt")          = - fbor.l*exr.l ;
 sam("world","kaccount")      = - fsav.l*exr.l ;
 sam("total","commdty")       = sum(isam2,sam(isam2,"commdty")) ;
 sam("total","activity")      = sum(isam2,sam(isam2,"activity")) ;
 sam("total","valuad")        = sum(isam2,sam(isam2,"valuad")) ;
 sam("total","insttns")       = sum(isam2,sam(isam2,"insttns")) ;
 sam("total","households")    = sum(isam2,sam(isam2,"households")) ;
 sam("total","kaccount")      = sum(isam2,sam(isam2,"kaccount")) ;
 sam("total","govt")          = sum(isam2,sam(isam2,"govt")) ;
 sam("total","world")         = sum(isam2,sam(isam2,"world")) ;
 sam(isam3,"total")           = sum(isam2,sam(isam3,isam2)) ;

 option decimals=3 ;
 display sam;

*############################ the end ################################


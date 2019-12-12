option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title Modeling Investments in the World Copper Sector  (COPPER,SEQ=45)
$Stitle Problems and Notes

$Ontext

This model has been used to analyze investment requirements
in the world copper sector.


Dammert, A, and Palaniappan, S, Modeling Investments in the World
Copper Sector. The University of Texas Press, Austin, Texas, 1985.

  Scenario Definitions:

    Base Case:  With tariffs, minimum wire production level (at installed
                capacity) for year 2000

    Expt. 1  :  No tariffs

    Expt. 2  :  Reduce operating cost of medium level ore processing in
                Chile, Peru, and USSR by 25%

    Expt. 3  :  No minimum wire production

    Expt. 4  :  Increase operating costs in LDCs by 25%

    Expt. 5  :  Increase investment costs in LDCs by 25%

    Expt. 6  :  Dynamic version of base case with 5 year periods - 1985,
                1990, 1995, 2000.

$Offtext


$Stitle set definitions

 Set irun     mine smelter and refinery locations /

              peru       , chile     , zambia , zaire    , mex+cam   , s-africa  , philipines , papua-ng
              western-us , eastern-us, canada , ee+ussr  , australia , w-europe  , japan+kor  /

     i(irun)  mine smelter and refinery location /

              peru       , chile     , zambia , zaire    , mex+cam   , s-africa  , philipines , papua-ng
              western-us , eastern-us, canada , ee+ussr  , australia , w-europe  , japan+kor  /

     jrun     wire tube and sheet plant and market locations /
              usa      , mex+cam   , es-america , ws-america  , w-europe  , ee+ussr
              c-africa , s-africa  , o-asia     , japan+kor   , china     , australia , canada    /

     j(jrun)  wire tube and sheet plant and market locations /
              usa      , mex+cam   , es-america , ws-america  , w-europe  , ee+ussr
              c-africa , s-africa  , o-asia     , japan+kor   , china     , australia , canada     /

     c        commodities /

              ore
              scrap-s          scrap copper for smelting
              blister
              scrap-r          scrap copper for refining
              refined-cu       refined copper
              scrap-sps        scrap copper for sheets plates and strip fabrication
              sheets+p+s       sheets plates and strip
              wire
              scrap-t          scrap copper for tubes and rods fabrication
              tubes+rods       tubes and rods                       /

      cm(c)   commodities in mining and processing    / ore, scrap-s, blister, scrap-r, refined-cu /

      cs(c)   commodities at wire tube & sheet plants / refined-cu, wire, scrap-t, tubes+rods, scrap-sps, sheets+p+s /

      cf(c)   final products                          / refined-cu, wire, tubes+rods, sheets+p+s /

      cfr(c)  final products from processing          / refined-cu /

      cfs(c)  final products from semi-manufacture    / wire, tubes+rods, sheets+p+s /

      cim(c)  final products at mines and smelters    / ore, blister /

      cil(c)  scrap types                             / scrap-s, scrap-r, scrap-t, scrap-sps /

      p       processes /

              high-grade    high grade ore mining by open pit and concentrator
              med-grade     medium grade ore mining by open pit and concentrator
              smelting-o    smelting using primary copper ore
              smelting-s    smelting using scrap copper
              refining-b    refining using blister
              refining-s    refining using scrap copper
              wire-ref-c    wire fabrication from refined copper
              tube-ref-c    tube and rod fabrication from refined copper
              tube-scrap    tube and rod fabrication from scrap copper
              s-ref-c       sheet plate and strip fabrication from refined copper
              s-scrap       sheet plate and strip fabrication from scrap copper  /

     pm(p)    process at mines smelters and refineries   / high-grade, med-grade  , smelting-o
                                                           smelting-s, refining-b , refining-s   /

     pmh(p)   high grade ore mining processes            / high-grade , med-grade /

     pmm(p)   mining processes                           / high-grade, med-grade /

     ps(p)    smelting processes                         / smelting-o  , smelting-s /

     pr(p)    refining processes                         / refining-b  , refining-s /

     psm(p)   semi-manufacturing process

     pw(p)    wire plant processes                       / wire-ref-c /

     ptr(p)   tube and rod plant processes               / tube-ref-c, tube-scrap /

     psh(p)   sheet plant processes                      / s-ref-c, s-scrap /

     m        productive units /

              open-pit      open pit mines and concentrators
              smelter
              refinery
              wire          wire fabrication plant
              tubes+rods    tube and rod fabrication plant
              sheets+p+s    sheet plate and strip fabrication plant /

     mm(m)    productive units at mining and processing plants / open-pit, smelter, refinery/

     ms(m)    productive units at semi-manufacture plants

     tg       time periods         /  1980*2000  /

     t(tg)    solution time period / 2000 /

     tbase(tg)                     / 1980 /


 Alias (tg,tgp),(i,ip),(j,jp),(t,tp),(irun,irunp),(jrun,jrunp);
 psm(p) = not pm(p); ms(m) = not mm(m);

 Display psm,pm;

$Eject

* transform the set of year labels to numerical values and compute length of time periods used in model:

 Parameters ybase(tg)  distance of year from base year
            period(tg) interval length (used in objective function)
            rph(tg)    length of periods for reserves;

 ybase(tg) = ord(tg) - smin(tgp$tbase(tgp), ord(tgp));
 period(t) = ybase(t) - ybase(t-1);
 rph(t)    = period(t);

 Display ybase,period,rph;

* for the static model we don't need to have the period length information.  therefore reset period to 1.

 period(t) = 1;

 Scalar    lbperton        conversion from lbs to tons   / 2240 /;

$Stitle demand data

 Set cgr          consumption growth rate intervals  / g1, g2 /
     tg1(tg)      interval 1 definition              / 1980*1985 /
     tg2(tg)      interval 2 definition              / 1986*2000 /
     mgr(cgr,tg)  map of interval to years           / g1.(1980*1985) , g2.(1986*2000) /

 Parameter demand(jrun,cf,tg)  demand for refined copper and semi-manufactures (1000 tons)


 Table dem1980(jrun,*)  consumption in 1980 and growth rates (1000 tons & %): table

                              wire     tubes+rods   sheets+p+s    refined-cu     g1      g2
*                                                                             (1980-85) (1986-2000)

 usa                          1385         690         555          40           1.3      2.2
 mex+cam                        80          40          30           4           3.9      4
 es-america                    195          95          80          16           3.9      4
 ws-america                     40          20          15           3           3.9      4
 w-europe                     2075        1160         500         205           1        2.2
 ee+ussr                      1050         525         420          55           2.9      3
 c-africa                       15           7           5           1           3.9      4
 s-africa                       55          30          20           3           3.9      4
 o-asia                         90          45          35           6           3.9      4
 japan+kor                     875         440         350          45           3.4      3.7
 china                         195         100          80          11           3.3      2.4
 australia                      85          40          35           6           1.3      2.4
 canada                        125          60          50           5           1.3      2.4
                                                                                              ;


 demand(jrun,cf,tg1)   = dem1980(jrun,cf) * (1 + sum(cgr$mgr(cgr,tg1), dem1980(jrun,cgr))/100)**(ord(tg1) - 1);
 demand(jrun,cf,tg2)   = demand(jrun,cf,"1985") * (1 + sum(cgr$mgr(cgr,tg2), dem1980(jrun,cgr))/100)**ord(tg2);

 Display demand;

$Stitle technology data

 Table a(c,p)  input-output coefficients

            high-grade   med-grade     smelting-o   smelting-s   refining-b   refining-s

 ore           1.           1.            -1.03
 blister                                   1.          1.         -1.03
 refined-cu                                                        1.         1.
 scrap-s                                              -1.03
 scrap-r                                                                     -1.03

     +      wire-ref-c   tube-ref-c   tube-scrap   s-ref-c   s-scrap

 refined-cu   -1.007        -.718                   -.772
 scrap-t                                 -.718
 scrap-sps                                                    -.772
 wire          1.
 tubes+rods                 1.           1.
 sheets+p+s                                          1.       1.



 Table b(m,p)  capacity utilization matrix

            high-grade   med-grade   smelting-o   smelting-s   refining-b   refining-s

 open-pit       1.          1.6
 smelter                                 1.          .32
 refinery                                                        1.         1.

     +      wire-ref-c   tube-ref-c   tube-scrap   s-ref-c   s-scrap

 wire          1.
 tubes+rods                 1.            1.
 sheets+p+s                                          1.        1.


*
* in the base case minimum wire production level is set to the installed capacity.

$Stitle scrap data

* 1. scrap cost is added to the "base" process operating cost to give the operating cost of processing scrap
*    (see operating cost section).  the major component of scrap cost is collection.
*
* 2. scrap quality determines if it will be used in smelting, refining or semi-manufacturing.
*
* 3. 1980 use of scrap in refineries & smelters is known, and is expected to grow at a constant rate.
*
* 4. in the model we can restrict the scrap availability for semi-manufacturing at either the aggregate
*    semi-manufacturing level or at the particular process (tube and rods, and sheets) level.

 Parameter scrapi(irun,tg,c) scrap availability at refineries and smelters (1000 tons)
           scrapj(jrun,tg,*) scrap availability at semi-manufacturers      (1000 tons);


 Table hds1(irun,*) scrap usage in 1980 at smelters and refineries (1000 tons)

                scrap-s   scrap-r    growth
*                                     (%)

 western-us      48        193.6       4
 eastern-us      12        246.4       4
 w-europe       130        460         1.7
 japan+kor       50        141         4
 australia        5         28         1.1
 canada                     40         4
 mex+cam                     5         4


 Table hds2(jrun,*)   scrap usage in semi-manufacturing in 1980 (1000 tons)

                scrap-t     scrap-sps   other    growth
*                                                 (%)

 usa              440           340       100      1
 w-europe         490           210       220      3.5
 japan+kor        230           140        30      2.5
 canada             5             4        10      3.5
 australia         21            18         4      1.1
                                                             ;

 scrapi(irun,tg,cil)       = hds1(irun,cil) * (1 + hds1(irun,"growth")/100)**(ord(tg)-1);
 scrapj(jrun,tg,cil)       = hds2(jrun,cil) * (1 + hds2(jrun,"growth")/100)**(ord(tg)-1);
 scrapj(jrun,tg,"scrap")   = sum(cil, scrapj(jrun,tg,cil));

 Display scrapi,scrapj;

 Set       psi(p)        refinery and smelter processes using scrap copper input
           psj(p)        wire tube and sheet processes using scrap copper input

 Parameter mapic(irun,c) commodities at mines refineries and smelters
           mapip(irun,p) processes at mines refineries and smelters
           mapjc(jrun,c) commodities at wire tube and sheet plants
           mapjp(jrun,p) processes ar wire tube and sheet plants;

$Eject

* the subset of scrap using processes is identified as only those processes which utilize scrap materials as inputs:

 psi(pm)  = yes$(sum(cil, a(cil,pm)) lt 0);
 psj(psm) = yes$(sum(cil, a(cil,psm)) lt 0);

* first define all commodities to be available at all locations.  then, if no scrap is available at a location
* this scrap type is then defined to not exist at the given location.  similarly, first all processes are defined
* to exist at all locations; if the scrap commodity is not available at a location and if a process uses this
* scrap commodity as input, then this process is defined to not exist at the location.

 mapic(irun,cm)                        = 1;
 mapic(irun,cil)$(hds1(irun,cil) eq 0) = 0;
 mapip(irun,pm)                        = 1;
 mapip(irun,psi)$(sum(cil, a(cil,psi)*mapic(irun,cil)) eq 0) = 0;

 mapjc(jrun,cs)                        = 1;
 mapjc(jrun,cil)$(hds2(jrun,cil) eq 0) = 0;
 mapjp(jrun,psm)                       = 1;
 mapjp(jrun,psj)$(sum(cil, a(cil,psj)*mapjc(jrun,cil)) eq 0) = 0;

 Display mapic,mapip,mapjc,mapjp;

$Stitle capacities and reserves

 Parameter resc(irun,p) annual extraction limits on medium and high grade ores (thousand tons)

 Table reserves(irun,p)  ore reserves esitmates for next 20 years (1980-81 - million tons)

                                    high-grade     med-grade

 peru                                   1.67         18.8
 chile                                 55.77         17.29
 zambia                                18.01          1.21
 zaire                                 16.97          1.48
 mex+cam                                3.61         20.14
 s-africa                               2.42           .76
 papua-ng                                             9.5
 philipines                             4.93          3.97
 western-us                            19.38         25.87
 eastern-us                                           5.35
 canada                                 8.33          9.6
 ee+ussr                               38            17
 australia                              6              .8
 w-europe                                             7.87
 japan+kor                                            1.4
                                                                                  ;

 resc(irun,pmh) = 1000*reserves(irun,pmh)/20;
 Display resc;


 Table caps(jrun,m)  existing capacity in semi-manufacturing in 1980 (1000 tons)

                   wire         tubes+rods          sheets+p+s

 usa             2100               900                 1000
 mex+cam          105                40                   15
 es-america       270                65                   30
 ws-america        55                15                    9
 w-europe        1900              1200                  900
 ee+ussr         1200               600                  350
 c-africa          15                 5                    7
 s-africa          55                40                   25
 o-asia           125                30                    4
 japan+kor       1200               600                  410
 china            250                85                   60
 australia        130                70                   70
 canada           200                50                   60

$Eject

 Table capm(irun,m)  estimates of mine smelter and refinery capacities in 1980 (1000 tons)

                    open-pit        smelter      refinery

 peru                  590             350           230
 chile                1330             950           810
 zambia                550             601           610
 zaire                 630             430           140
 mex+cam               324              86           100
 s-africa              490             280           150
 philipines            492
 papua-ng              256
 western-us           1675            1510           480
 eastern-us            576             540          1670
 canada               1254             610           610
 ee+ussr              1720            1720          1600
 australia             260             220           210
 w-europe              608             820          1440
 japan+kor             112            1180          1220

$Stitle investment data

 Set ih(irun)     refineries & smelters with high cost        / peru    , chile    , mex+cam  , zambia
                                                                zaire   , s-africa , papua-ng , philipines /
     il(irun)     refineries & smelters with low cost
     jh(jrun)     semi-manufacturing locations with high cost / mex+cam  , es-america, ws-america
                                                                c-africa , s-africa  , o-asia     , china     /
     jl(jrun)     semi-manufacturing locations with low cost

     it           copper processing classifiction             / iih   requiring high cost, iil   requiring low cost /
     iit(it,irun) map of locations to classification
     jt           semi-manufacturing classification           / industrial, non-ind /
     jtj(jt,jrun) map of locations to classification;

 il(irun) = not ih(irun);
 jl(jrun) = not jh(jrun);

 iit("iih",ih)        = yes;  iit("iil",il)     = yes;
 jtj("industrial",jl) = yes;  jtj("non-ind",jh) = yes;

 Display il,jl,iit,jtj;


 Scalar    rho     discount rate           / .1 /
           life    life of units   (yrs)   / 20 /

 Parameter dis     discount factor
           sigma   capital recovery factor

           omegam  scale cost of mining and processing plants                (10e3 us$ per tpy)
           omegas  scale cost of of semi-manuacturing plants                 (10e3 us$ per tpy)
           num     proportional capital cost of mining and processing plants (10e3 us$ per tpy)
           nus     proportional capital cost of semi-manuf plants            (10e3 us$ per tpy)

           hbarm   economies of scale size for processing plants (1000 tons)
           hbars   economies of scale size for semi-manuf plants (1000 tons)
           hhatm   maximum sizes for processing plants           (1000 tons)
           hhats   maximum sizes for semi-manufacturing plants   (1000 tons)

           ts(t,tp)  time summation matrix
           sfi(irun) site factor for mining and processing plants
           sfj(jrun) site factor for semi-manufacturing plants;


 Table invm(irun,*)  investment data for mines - 1980(1)

                                          fixed            var          ec-scale
*                                       (mill us$)  (mill us$/1000 ton)(1000 tons)

 (peru,chile,mex+cam,s-africa
  philipines,papua-ng)                      40             5.6             100
 (zambia,zaire)                            120             5.8             380
 (western-us,canada,ee+ussr,australia
  eastern-us,w-europe,japan+kor)            40             5.06             75

$Eject

 Table invs(jt,m,*)  investment costs for semi-manufacturing - 1980

                                     fixed           var             ec-scale
*                                (mill us$)  (mill us$/1000 tons)    (1000 tons)

 (industrial).wire                    3.38          1.72                20
 (non-ind   ).wire                    3.6           1.84                20
 (industrial).tubes+rods              5.64           .94                30
 (non-ind   ).tubes+rods              6             1                   30
 (industrial).sheets+p+s              8.64          1.34                30
 (non-ind   ).sheets+p+s              9.2           1.44                30


 Table invrs(it,m,*)  investment costs for refinery and smelter - 1980(1)

                                       fixed             var           ec-scale
*                                     (mill us$) (mill us$/1000 tons)  (1000 tons)

 iih.smelter                            50              2.166             150
 iil.smelter                            40              1.832             150
 iih.refinery                            5.02            .718             150
 iil.refinery                            4.02            .574             150
                                                                                 ;


 hbarm(irun,m)             = sum(it$iit(it,irun), invrs(it,m,"ec-scale"));
 hbarm(irun,"open-pit")    = invm(irun,"ec-scale");
 hbars(jrun,m)             = sum(jt$jtj(jt,jrun), invs(jt,m,"ec-scale"));

 hhatm(irun,m)             = 40*hbarm(irun,m);
 hhats(jrun,m)             = 40*hbars(jrun,m);

 omegam(irun,m)$hbarm(irun,m)                    = sum(it$iit(it,irun), invrs(it,m,"fixed"))/hbarm(irun,m);
 omegam(irun,"open-pit")$hbarm(irun,"open-pit")  = invm(irun,"fixed")/hbarm(irun,"open-pit");
 omegas(jrun,m)$hbars(jrun,m)                    = sum(jt$jtj(jt,jrun), invs(jt,m,"fixed"))/hbars(jrun,m);

 num(irun,m)                = omegam(irun,m) + sum(it$iit(it,irun), invrs(it,m,"var"));
 num(irun,"open-pit")       = omegam(irun,"open-pit") + invm(irun,"var");
 nus(jrun,m)                = omegas(jrun,m) + sum(jt$jtj(jt,jrun), invs(jt,m,"var"));

 sfi(irun)  = 1;
 sfj(jrun)  = 1;

 dis(t) = (1 + rho)**(-ybase(t));
 dis(t) = 1;
 sigma = rho*(1 + rho)**life / ((1 + rho)**life - 1);

 ts(t,tp) = 1$(ord(t) ge ord(tp));
 Display hbarm,hbars,omegam,omegas,num,nus,ts,dis,sigma;

$Stitle operating costs

 Parameter opm(irun,p)  mining and processing costs in 1980(1) (us$ per ton of copper content)

           spr          scap prices (at copper price of us$2000 a ton) / semi        1800  , smelting-s  1200
                                                                         refining-s  1700                      /


           om(irun)     mine operating cost in 1980(1)  (us$ per ton of copper content)   /

                        (peru,mex+cam,s-africa)                                               840
                        chile                                                                1028
                        zambia                                                               1044
                        zaire                                                                 681
                        philipines                                                           1054
                        papua-ng                                                              295
                        (western-us,eastern-us)                                               771
                        (canada,ee+ussr,australia,w-europe,japan+kor)                         914     /

           os(irun)     smelter operating cost in 1980(1) (us$ per ton of copper content) /

                        (peru,mex+cam,s-africa,philipines,papua-ng,chile,zambia,zaire)        250
                        (western-us,eastern-us,canada,japan+kor,australia,w-europe,ee+ussr)   300     /

           opr(irun)    refinery operating cost in 1980(1) (us$ per ton of copper content)/

                        (peru,mex+cam,s-africa,philipines,papua-ng,chile,zambia,zaire)        150
                        (western-us,eastern-us,canada,japan+kor,australia,w-europe,ee+ussr)   170     /

            opi(irun)   operating cost escalator for mining and processing locations

            opj(jrun)   operating cost escalator for semi-manufacturing locations


 Table ops(jrun,p)  operating costs for semi-manufacturing in 1980(1) (1000 us$ per ton)

                                       wire-ref-c  tube-ref-c     s-ref-c
 (usa,w-europe,ee+ussr,
  japan+kor,australia,canada)             1.87        1.687         2.36
 (mex+cam,es-america,
  ws-america,c-africa,s-africa)           1.33        1.507         2.09
 (china,o-asia)                           1.15        1.447         2
                                          ;


 opm(irun,pmm)$mapip(irun,pmm) = om(irun);
 opm(irun,ps)$mapip(irun,ps)   = os(irun);
 opm(irun,pr)$mapip(irun,pr)   = opr(irun);

* the operating cost for locations with scrap process are adjusted as follows:
* the coefficients 1.03, .718, .772 are the scrap input requirements in these processes.  this
* is necessary as the scrap collection costs for these processes (parameter spr) are given in
* terms of the price of copper.

 opm(irun,pm)$mapip(irun,pm)       = opm(irun,pm) + 1.03*spr(pm);
 opm(irun,pm)$(not mapip(irun,pm)) = 0;
 opm(irun,pm)                      = sum(m, b(m,pm)*opm(irun,pm));

 ops(jrun,"tube-scrap")   = ops(jrun,"tube-ref-c") + spr("semi")*.718/1000;
 ops(jrun,"s-scrap")      = ops(jrun,"s-ref-c")    + spr("semi")*.772/1000;
 ops(jrun,p)              = sum(m, b(m,p)*ops(jrun,p));

 opi(irun) = 1;
 opj(jrun) = 1;

 Display opm,ops;

$Stitle transport

* the following ports were used for computing distances:
* australia                  : bunbury         c-africa,zaire,zambia    : banana
* canada,eastern-us,usa      : new-york        chile,ws-america         : valparaiso
* china                      : shanghai        ee+ussr                  : leningrad
* es-america                 : rio-de-janerio  japan+kor                : tokyo
* mex+cam                    : veracruz        o-asia                   : bombay/calcutta
* papua-ng                   : port moresby    philipines               : manila
* peru                       : callao          s-africa                 : richmund bay
* w-europe                   : rotterdam       western-us               : portland

 Set n of nodes - all locations;  n(irun) = yes; n(jrun) = yes;
 Alias(n,np,npp);

 Table uc(*,*)  transport cost of semi-manufactures and all other types of intermediates

                      ocean-fix             ocean-var                  rail
*                   (us$ per ton)   (us$ per ton per naut. mi)  (us$ per ton per mile)

 ore                       3                  .007                     .04
 b+r                       4                  .01                      .05
 semi                      8                  .02                      .1


* the distance matrix below is a little confusing as it represents distances between all nodes
* (union of irun and jrun).
*
 Table distance(*,*)   sea distances in nautical miles

               australia   c-africa  canada   chile   china   eastern-us   ee+ussr   es-america   japan+kor   mex+cam

 c-africa          9477
 canada           11409        5325
 chile             8358        7795    4634
 china             3766       10205   10584   10148
 eastern-us       11409        5325            4634   10584
 ee+ussr          10361        5897    4711    8692   12068      4711
 es-america       10238        4125    4770    3670   11109      4770         6538
 japan+kor         4354       10974    9700    9280    1117      9700        12772      11513
 mex+cam          10854        6017    2023    4079    9463      2023         6522       4079        9155
 o-asia            4156        7103   11398   10275    4648     11398        12063       7848        4538     11927
 papua-ng          1754        9184   10388    8400    2166     10388        11600       9945        2600      9100
 peru              9597        7096    3368    1306    8872      3368         7430       4976        8934      2813
 philipines        2600        9284   11388    9400    1166     11388        10952      10009        1770     10000
 s-africa          6971        2506    6801    5694    7908      6801         7482       3267        8478      7346
 usa              11409        5325            4634   10584                   4711       4770        9700      2023
 w-europe          9700        4657    3473    7454   10880      3473         2146       5300       11484      5284
 western-us        8742        9615    5887    5764    5440      5887         9949       8353        4323      5332
 ws-america        8358        7795    4634           10148      4634         8692       3670        9280      4079
 zaire             9477                5325    7795   10205      5325         5897       4125       10974      6017
 zambia            9477                5325    7795   10205      5325         5897       4125       10974      6017

$Eject

 +              o-asia     papua-ng    peru    philipines   s-africa     usa    w-europe   western-us   ws-america

 papua-ng         5900
 peru            11581        9100
 philipines       5900        1000     7706
 s-africa         4581        6678     7000        6742
 usa             11398       10388     3368       11388       6801
 w-europe        11066       10400     6192        9714       6244      3473
 western-us       7509        6923     4611        6024      10377      5887      8711
 ws-america      10275        8710     1306        9400       5694      4634      7454        5764
 zaire            7104        9184     7096        9284       2506      5325      4657        9615        7795
 zambia           7104        9184     7096        9284       2506      5325      4657        9615        7795


 Table drail   rail distances (km)

                    zambia     zaire     ee+ussr    canada

 mex+cam             1002        902
 s-africa            1125        902
 canada              1002        902      1800
 western-us          1002        902
 eastern-us          1002        902                  350
 ee+ussr             1002        902
 australia           1250       1350      1800
 w-europe            1002        902
 japan+kor           1250       1350      1800
 usa                 1002        902                  350
 es-america          1002        902
 ws-america          1002        902
 c-africa            1250       1350
 o-asia              1250       1350      1800
 china               1250       1350      1800
 papua-ng            1250       1350
 philipines          1250       1350
                                                                    ;

 distance(n,np) = max(distance(n,np) , distance(np,n)); drail(n,np) = max(drail(n,np) , drail(np,n));
 Display distance,drail;


* the distance matrix above has some errors (inconsistencies in distances) as the distances were computed by
* hand.  for example if there are 3 points (a,b,c), it was found that the distance between a and c is much
* greater than by going from a to c through b.  there might also be numerous such intermediate points b for
* some (a,c) combination.  thus we determine the largest such discrepancy and reduce the direct distance between
* a and c by this value.  this method only removes the first level errors.  the following computation does this:


 distance(n,np) = distance(n,np) - smax(npp, max(0, distance(n,np) - distance(n,npp) - distance(npp,np)) );


 Parameter mur(irun,irun,cim) transport cost: raw material & intermediate goods                  (us$ per ton)
           mui(irun,jrun)     transport cost: refined copper to semi-manufacture and markets     (us$ per ton)
           mufs(jrun,jrun)    transport cost: final: semi-manufactures from locations to markets (us$ per ton);


 mur(irun,irunp,"ore")     = uc("ore","ocean-fix")$distance(irun,irunp)
                           + uc("ore","ocean-var")*distance(irun,irunp) + uc("ore","rail")*drail(irun,irunp);

 mur(irun,irunp,"blister") = uc("b+r","ocean-fix")$distance(irun,irunp)
                           + uc("b+r","ocean-var")*distance(irun,irunp) + uc("b+r","rail")*drail(irun,irunp);

 mui(irun,jrun)            = uc("b+r","ocean-fix")$distance(irun,jrun)
                           + uc("b+r","ocean-var")*distance(irun,jrun) + uc("b+r","rail")*drail(irun,jrun);

 mufs(jrun,jrunp)          = uc("semi","ocean-fix")$distance(jrun,jrunp)
                           + uc("semi","ocean-var")*distance(jrun,jrunp) + uc("semi","rail")*drail(jrun,jrunp);

 Display mur,mui,mufs;

$Stitle prices and tariffs

 Set ntfr(i,j) no tariffs on refined copper between / (peru,chile).ws-america    , (zambia,zaire).c-africa
                                                      mex+cam.mex+cam            , s-africa.s-africa
                                                      (western-us,eastern-us).usa, canada.canada
                                                      ee+ussr.ee+ussr            , australia.australia
                                                      w-europe.w-europe          , japan+kor.japan+kor     /;


 Parameter pc           commodity prices (us$ per ton) / refined-cu   2000 , semi  2200  /
           tariffr(i,j) tariffs on refined copper  (us$ per ton of copper content)
           tariffs(j,j) tariffs on semi-manufactured goods (us$ per ton  of copper content);

 Table itp(j,*)  import tariffs (%)

                refined-cu     semi

 usa                 1           6
 mex+cam            15          15
 es-america         15          15
 ws-america         15          15
 w-europe                        8
 ee+ussr            15          15
 c-africa           15          15
 s-africa           15          15
 o-asia             15          15
 japan+kor           8.5        15
 china              15          15
 australia                      15
 canada                          6
                                     ;
 tariffs(jp,j)                = pc("semi")*itp(j,"semi")/100;
 tariffs(j,j)                 = 0;

 tariffr(i,j)$(not ntfr(i,j)) = pc("refined-cu")*itp(j,"refined-cu")/100;
 Display tariffs,tariffr;

$Stitle model definition

 Variables zm(p,i,t)       process level: mines smelters and refineries                         (1000 tpy)
           zs(p,j,t)       process level: wire sheet and tube plants                            (1000 tpy)
           xi(c,i,i,t)     interplant shipments of ore and blister                              (1000 tpy)
           xir(i,j,t)      shipments: refined copper from smelters to semi-manufacturers        (1000 tpy)
           xfr(i,j,t)      shipments: refined copper to markets for end use                     (1000 tpy)
           xfs(c,j,j,t)    shipments: semi-manufactures to markets                              (1000 tpy)

           ssr(c,i,t)      scrap supply: smelters and refineries                                (1000 tpy)
           ssm(c,j,t)      scrap supply: sheet and tube plants                                  (1000 tpy)
           ssa(j,t)        scrap supply: semi-manufacturing                                     (1000 tpy)

           hm(m,i,t)       capacity expansion: mines smelters and refineries                    (1000 tpy)
           sm(m,i,t)       unused economies-of-scale expansion: mines smelters and refineries   (1000 tpy)
           hs(m,j,t)       capacity expansion: wire tube and sheet plants                       (1000 tpy)
           ss(m,j,t)       unused economies-of-scale expansion: wire tube and sheet plants      (1000 tpy)
           ym(m,i,t)       expansion decision variable: mines smelters and refineries
           ys(m,j,t)       expansion decision variable: wire tube and sheets plants

           phikm(t)        costs: capital charges at mines smelters and refineries          (million us$)
           phiks(t)        costs: capital charges at wire tube and sheet plants             (million us$)
           phiom(t)        costs: operating costs at mines smelters and refineries          (million us$)
           phios(t)        costs: operating costs at wire tube and sheet plants             (million us$)
           phit(t)         costs: transport costs                                           (million us$)
           phitf(t)        costs: tariff costs                                              (million us$)
           phiu(t)         costs: total annual undiscounted cost                            (million us$)
           phiutf(t)       costs: total annual undiscounted cost with tariffs               (million us$)
           phi1            total cost                                                       (million us$)
           phi2            total cost with tariffs                                          (million us$)

 Positive Variable zm,zs,xi,xir,xfr,xfs,ssr,ssm,ssa,hm,hs,sm,ss
 Binary   Variable ym,ys

 Equations mbm(c,i,t)      material balance: mines smelters and refineries                     (1000 tpy)
           mbs(c,j,t)      material balance: semi-manufacturing                                (1000 tpy)
           mr(c,j,t)       market requirements                                                 (1000 tpy)
           orec(p,i)       high-grade ore mining limitations                                   (1000 tpy)
           sbs(j,t)        scrap balance at semi-manufacturing locations                       (1000 tpy)

           ccm(m,i,t)      capacity constraint: mines smelters and refineries                  (1000 tpy)
           ccs(m,j,t)      capacity constraint: semi-manufacturing                             (1000 tpy)
           icm1(m,i,t)     maximum expansion: mines smelters and refineries                    (1000 tpy)
           icm2(m,i,t)     limits to economies-of-scale: mines smelters and refineries         (1000 tpy)
           ics1(m,j,t)     maximum expansion: wire tube and sheet plants                       (1000 tpy)
           ics2(m,j,t)     limits to economies-of-scale: wire tube and sheet plants            (1000 tpy)

           akm(t)          accounting: capital charges for mines smelters and refineries    (million us$)
           aks(t)          accounting: capital charges for wire tube and sheet plants       (million us$)
           aom(t)          accounting: operating cost for mines smelters and refineries     (million us$)
           aos(t)          accounting: opearting cost for wire tube and sheet plants        (million us$)
           aot(t)          accounting: transport                                            (million us$)
           aotf(t)         accounting: tariffs                                              (million us$)
           au(t)           accounting: undiscounted annual cost                             (million us$)
           autf(t)         accounting: undiscounted annual cost with tarifsf                (million us$)
           aobj            objective function                                               (million us$)
           aobjtf          objective function with tariffs                                  (million us$);

$Eject
$Double

 mbm(cm,i,t)$mapic(i,cm)..
  sum(pm$mapip(i,pm), a(cm,pm)*zm(pm,i,t)) + sum(ip, xi(cm,ip,i,t))$cim(cm) + ssr(cm,i,t)$cil(cm)
    =g= sum(j, xfr(i,j,t))$cfr(cm) + sum(ip, xi(cm,i,ip,t))$cim(cm) + sum(j, xir(i,j,t))$cfr(cm);

 mbs(cs,j,t)$mapjc(j,cs)..   sum(psm$mapjp(j,psm), a(cs,psm)*zs(psm,j,t)) + sum(i, xir(i,j,t))$cfr(cs)
                           + ssm(cs,j,t)$cil(cs) =g= sum(jp, xfs(cs,j,jp,t))$cfs(cs) ;

 mr(cf,j,t)..  sum(i, xfr(i,j,t))$cfr(cf) + sum(jp, xfs(cf,jp,j,t))$cfs(cf) =g= demand(j,cf,t);

 ccm(mm,i,t)..  sum(pm$mapip(i,pm), b(mm,pm)*zm(pm,i,t)) =l= capm(i,mm) + sum(tp$ts(t,tp), hm(mm,i,tp));

 ccs(ms,j,t)..  sum(psm$mapjp(j,psm), b(ms,psm)*zs(psm,j,t)) =l= caps(j,ms) + sum(tp$ts(t,tp), hs(ms,j,tp));

 icm1(mm,i,t)..  hm(mm,i,t) =l= hhatm(i,mm)*ym(mm,i,t);

 ics1(ms,j,t)..  hs(ms,j,t) =l= hhats(j,ms)*ys(ms,j,t);

 icm2(mm,i,t)..  hm(mm,i,t) + sm(mm,i,t) =g= hbarm(i,mm)*ym(mm,i,t);

 ics2(ms,j,t)..  hs(ms,j,t) + ss(ms,j,t) =g= hbars(j,ms)*ys(ms,j,t);

 orec(pmm,i)..  sum(t, rph(t)*zm(pmm,i,t)) =l= 1000*reserves(i,pmm);

 sbs(j,t).. ssa(j,t) =e= sum(cil, ssm(cil,j,t));

 akm(t).. phikm(t) =e= sigma*sum(tp$ts(t,tp), sum((i,mm), sfi(i)*(omegam(i,mm)*sm(mm,i,tp) + num(i,mm)*hm(mm,i,tp))));

 aks(t).. phiks(t) =e= sigma*sum(tp$ts(t,tp), sum((j,ms), sfj(j)*(omegas(j,ms)*ss(ms,j,tp) + nus(j,ms)*hs(ms,j,tp))));

 aom(t).. phiom(t) =e= sum((pm,i)$mapip(i,pm), opi(i)*opm(i,pm)*zm(pm,i,t)) / 1000;

 aos(t).. phios(t) =e= sum((psm,j), opj(j)*ops(j,psm)*zs(psm,j,t));

 aot(t).. phit(t) =e= ( sum((cim,i,ip), mur(i,ip,cim)*xi(cim,i,ip,t)) + sum((cfs,j,jp), mufs(j,jp)*xfs(cfs,j,jp,t))
                      + sum((i,j), mui(i,j)*(xir(i,j,t) + xfr(i,j,t))) ) / 1000;

 aotf(t).. phitf(t) =e= sum(j, sum(i, tariffr(i,j)*(xfr(i,j,t) + xir(i,j,t)))
                             + sum((cfs,jp), tariffs(jp,j)*xfs(cfs,jp,j,t))  )/1000;

 au(t)..  phiu(t) =e= phikm(t) + phiks(t) + phiom(t) + phios(t) + phit(t);

 autf(t)..  phiutf(t) =e= phikm(t) + phiks(t) + phiom(t) + phios(t) + phit(t) + phitf(t);

 aobj.. phi1 =e= sum(t, period(t)*dis(t)*phiu(t));

 aobjtf.. phi2 =e= sum(t, period(t)*dis(t)*phiutf(t));

$Single

* bounds
 zm.up(pmh,i,t)    = resc(i,pmh);
 zs.lo("wire-ref-c",j,t) = caps(j,"wire");

 ssr.up(cil,i,t) = scrapi(i,t,cil);

* depending on semi-manufacturing scrap formulation use either:
*ssm.up(cil,j,t)   = scrapj(j,t,cil);
* or:
 ssa.up(j,t) = scrapj(j,t,"scrap");

 Model copper / all /;

 Solve copper minimizing phi2 using mip;

$Stitle report

 Set cps  / exist-cap, new-cap, total-cap, production, shipped, slack /

 Parameter xii(*,*,*)   shipments of inputs (ore-blister-refined copper - 1000 tons)
           xfd(*,*,c)   shipments of final products: disaggregated       (1000 tons)

           cpdm         capacity-production at mines         (1000 tons)
           cpds         capacity-production at smelters      (1000 tons)
           cpdr         capactiy-production at refineries    (1000 tons)
           cpdw         capacity-production at wire plants   (1000 tons)
           cpdt         capacity-production at tube plants   (1000 tons)
           cpdsh        capacity-production at sheet plants  (1000 tons);

 xii(i,ip,cim)          = sum(t, xi.l(cim,i,ip,t));
 xii(i,i,"ore")         = sum(t, sum(pmm, zm.l(pmm,i,t)) - sum(ip, xi.l("ore",i,ip,t)) );
 xii(i,i,"blister")     = sum(t, sum(ps, zm.l(ps,i,t)) - sum(ip, xi.l("blister",i,ip,t)) );
 xii(i,j,"refined-cu")  = sum(t, xir.l(i,j,t));
 xii(i,"total",cim)     = sum(ip, xii(i,ip,cim));
 xii(i,"total",cfr)     = sum(j, xii(i,j,cfr));
 xii("total",i,cim)     = sum(ip, xii(ip,i,cim));
 xii("total",j,cfr)     = sum(i, xii(i,j,cfr));
 xii("total","total",c) = sum(i, xii(i,"total",c));

 xfd(i,j,"refined-cu")  = sum(t, xfr.l(i,j,t));
 xfd(j,jp,cfs)          = sum(t, xfs.l(cfs,j,jp,t));
 xfd(i,"total",cfr)     = sum(j, xfd(i,j,cfr));
 xfd("total",j,cfr)     = sum(i, xfd(i,j,cfr));
 xfd(j,"total",cfs)     = sum(jp, xfd(j,jp,cfs));
 xfd("total",j,cfs)     = sum(jp, xfd(jp,j,cfs));
 xfd("total","total",c) = sum(j, xfd("total",j,c));
 Display xii,xfd;


 cpdm(i,"exist-cap")    = capm(i,"open-pit");
 cpdm(i,"new-cap")      = sum(t, hm.l("open-pit",i,t));
 cpdm(i,"total-cap")    = cpdm(i,"exist-cap") + cpdm(i,"new-cap");
 cpdm(i,"production")   = sum((t,pmm), zm.l(pmm,i,t));
 cpdm(i,"shipped")      = xii(i,"total","ore");
 cpdm(i,"slack")        = round(cpdm(i,"total-cap") - sum((t,pmm), b("open-pit",pmm)*zm.l(pmm,i,t)),1);
 cpdm(i,"cap-ut")$cpdm(i,"total-cap") = round(100*sum((t,pmm), b("open-pit",pmm)*zm.l(pmm,i,t))/cpdm(i,"total-cap"),1);
 cpdm("**total**",cps)  = sum(i, cpdm(i,cps));

 cpds(i,"exist-cap")    = capm(i,"smelter");
 cpds(i,"new-cap")      = sum(t, hm.l("smelter",i,t));
 cpds(i,"total-cap")    = cpds(i,"exist-cap") + cpds(i,"new-cap");
 cpds(i,"production")   = sum((t,ps), zm.l(ps,i,t));
 cpds(i,"shipped")      = xii(i,"total","blister");
 cpds(i,"slack")        = round(cpds(i,"total-cap") - sum((t,ps), b("smelter",ps)*zm.l(ps,i,t)),1);
 cpds(i,"cap-ut")$cpds(i,"total-cap") = round(100*sum((t,ps), b("smelter",ps)*zm.l(ps,i,t))/cpds(i,"total-cap"),1);
 cpds("**total**",cps)  = sum(i, cpds(i,cps));

 cpdr(i,"exist-cap")    = capm(i,"refinery");
 cpdr(i,"new-cap")      = sum(t, hm.l("refinery",i,t));
 cpdr(i,"total-cap")    = cpdr(i,"exist-cap") + cpdr(i,"new-cap");
 cpdr(i,"production")   = sum((t,pr), zm.l(pr,i,t));
 cpdr(i,"shipped")      = xii(i,"total","refined-cu") + xfd(i,"total","refined-cu");
 cpdr(i,"slack")        = round(cpdr(i,"total-cap") - sum((t,pr), b("refinery",pr)*zm.l(pr,i,t)),1);
 cpdr(i,"cap-ut")$cpdr(i,"total-cap") = round(100*sum((t,pr), b("refinery",pr)*zm.l(pr,i,t))/cpdr(i,"total-cap"),1);
 cpdr("**total**",cps)  = sum(i, cpdr(i,cps));
 Display cpdm,cpds,cpdr;

 cpdw(j,"exist-cap")     = caps(j,"wire");
 cpdw(j,"new-cap")       = sum(t, hs.l("wire",j,t));
 cpdw(j,"total-cap")     = cpdw(j,"exist-cap") + cpdw(j,"new-cap");
 cpdw(j,"production")    = sum((t,pw), zs.l(pw,j,t));
 cpdw(j,"shipped")       = xfd(j,"total","wire");
 cpdw(j,"slack")        = round(cpdw(j,"production") - sum((t,pw), b("wire",pw)*zs.l(pw,j,t)),1);
 cpdw(j,"cap-ut")$cpdw(j,"total-cap") = round(100*sum((t,pw), b("wire",pw)*zs.l(pw,j,t))/cpdw(j,"total-cap"),1);
 cpdw("**total**",cps)  = sum(j, cpdw(j,cps));
 Display cpdw;

 cpdt(j,"exist-cap")    = caps(j,"tubes+rods");
 cpdt(j,"new-cap")      = sum(t, hs.l("tubes+rods",j,t));
 cpdt(j,"total-cap")    = cpdt(j,"exist-cap") + cpdt(j,"new-cap");
 cpdt(j,"production")   = sum((t,ptr), zs.l(ptr,j,t));
 cpdt(j,"shipped")      = xfd(j,"total","tubes+rods");
 cpdt(j,"slack")        = round(cpdt(j,"production") - sum((t,ptr), b("tubes+rods",ptr)*zs.l(ptr,j,t)),1);
 cpdt(j,"cap-ut")$cpdt(j,"total-cap") = round(100*sum((t,ptr), b("tubes+rods",ptr)*zs.l(ptr,j,t))/cpdt(j,"total-cap")
                                              ,1);
 cpdt("**total**",cps)  = sum(j, cpdt(j,cps));
 Display cpdt;

 cpdsh(j,"exist-cap")   = caps(j,"sheets+p+s");
 cpdsh(j,"new-cap")     = sum(t, hs.l("sheets+p+s",j,t));
 cpdsh(j,"total-cap")   = cpdsh(j,"exist-cap") + cpdsh(j,"new-cap") ;
 cpdsh(j,"production")  = sum((t,psh), zs.l(psh,j,t));
 cpdsh(j,"shipped")     = xfd(j,"total","sheets+p+s");
 cpdsh(j,"slack")       = round(cpdsh(j,"production") - sum((t,psh), b("sheets+p+s",psh)*zs.l(psh,j,t)),1);
 cpdsh(j,"cap-ut")$cpdsh(j,"total-cap")
                        = round(100*sum((t,psh), b("sheets+p+s",psh)*zs.l(psh,j,t))/cpdsh(j,"total-cap"),1);
 cpdsh("**total**",cps) = sum(j, cpdsh(j,cps));
 Display cpdsh;

 Parameter sprice(j,cf,*)  shadow price of demand balance
           costt(*)        cost tabulation (million us$);

 sprice(j,cf,"$-per-ton")  = - 1000*sum(t, mr.m(cf,j,t));
 sprice(j,cf,"$-per-lb")   = sprice(j,cf,"$-per-ton")/lbperton;
 Display sprice;

 costt("capital-i")     = sum(t, phikm.l(t));
 costt("capital-j")     = sum(t, phiks.l(t));
 costt("operate-i")     = sum(t, phiom.l(t));
 costt("operate-j")     = sum(t, phios.l(t));
 costt("transport")     = sum(t, phit.l(t));
 costt("tariff")        = sum(t, phitf.l(t));
 costt("total-cost")    = phi2.l;
 Display costt;


option LP=convert;
option LP=convert;
option LP=convert;
$Title Mexico Steel - Large Static    (MEXLS,SEQ=17)

$Ontext

This is a detailed production and distribution scheduling model of
the Mexican steel sector. The model is reduced explicitly.


Kendrick, D, Meeraus, A, and Alatorre, J, The Planning of Investment
Programs in the Steel Industry. The Johns Hopkins University Press,
Baltimore and London, 1984.

A scanned version of this out-of-print book is accessible at
http://www.gams.com/docs/pdf/steel_investment.pdf

   Data References
   ---------------

    1.  Sicartsa, Descripcion de los procesos que se realizan en las
        plantas del complejo siderurgico sicartsa, 1978

    2.  Altos Horos, Information general (blueprint), 1974

    3.  Altos Hornos, Diagrama de flujo  3.75 mmt/a and 4.25 mmt/a
        (blueprints), 1978

    4.  CCIS, Situacion actual y crecimiento futuro de la industria
        siderurgica, 1978

    5.  CCIS, Reporte de la prueba del empleo de fierro esponja
        hyl en el Alto Horno 2, 1978

    6.  CCIS, Estudio de pre-factibilidad para una planta de fierro
        esponja para exportacion convenio Mexico-Brasil, 1978

    7.  CCIS, Las materias primas y otros insumos en la industria
        siderurgica, 1977

    8.  Russel and Vaughan, Steel Production, 1976

    9.  Secretaria de la Precidencia, La industria siderurgica
        integrada de Mexico  (vol i and ii), 1976

   10.  Ahmsa, Capacity sheet, 1978

   11.  Ahmsa, Capacity expansion 1979 - 1982, 1978

   12.  Fundidora, La moderna fundidora ...., 197..

   13.  Sicartsa, Production y consumo

   14.  Sicartsa, Insumos principales, pecios de presupuesto, 1979

   15.  Hylsa, The hyl iron ore direct reduction process, 1973

   16.  Fundidora, Computer data bank, 1978

   17.  Fundidora, Oferta y Demanda, Joint industry projections, 1978

   18.  CCIS, Transport cost and distances for mineral coal

   19.  CCIS, Transport cost and distances for iron ore

   20.  CCIS, Shortest railroad distances between major cities

   21.  CCIS, Transport cost and distances for some steel products

   22.  IBRD, Sicartsa ii, 1975

   23.  Capital cost. Sicartsa first stage. 1973. Report by
        industrial department. IBRD.

   24.  Plan de desarrollo de la industria siderurgica paraestatal
        1979-1990. Sidermex. Confidential document. Not published yet

$Offtext


$Stitle Set Definitions

 Set im       iron ore and coal mines /

              p-colorada   pena colorada colima
              lastruchas   lazaro cardenas michoacan
              la-perla     camargo chihuahua
              cerro-mer    cerro de mercado durango
              hercules     sierra mojada coahuila

              la-chula     minatitlan colima
              el-encino    pihuamo jalisco
              coahuila     coal mining region    /

     ir       raw material plants /

              penacol      pena colorada colima
              laperla      camargo chihuahua
              alzada       colima
              esperanzas   coahuila             /

     is       steel mills /

              sicartsa     las truchas
              ahmsa        monclova
              fundidora    monterrey
              hylsa        monterrey
              hylsap       puebla
              tamsa        veracruz /

     j        domestic market areas /

              mexico-df    mexico d.f.
              puebla       puebla
              queretaro    queretaro
              san-luis     san luis potosi
              monterrey    nuevo leon

              guadalaja    guadalajara jalisco
              l-cardenas   michoacan
              coatzacoal   veracruz  /

     l        export points /

              gulf
              pacific  /

     mm       productive units at mines /

              mine-co      mining equipment for coal mines
              mine-eq      mining equipment: trucks and crushers
              conc-mag     magnetic concentrator
              conc-flot    flotation concentrator  /

     mr       productive units at raw material plants /

              pellet       pellet plant
              coke-oven    coke oven and byproduct units  /

     ms       productive units at steel mills /

              pellet       pellet plant
              sinter       sinter plant
              coke-oven    coke ovens and by-product units
              blast-furn   blast furnaces
              direct-red   direct reduction units

              openhearth   open hearth furnaces
              bof          basic oxygen converters
              elec-arc     electric arc furnaces
              concas-sl    continuous casting unit for slabs
              concas-bi    continuous casting unit for billets

              ingot-cast   ingot casting
              primary-fl   primary mill and soaking pits - flat products
              primary-nf   primary mills and soaking pits - non flat
              plate-mill   plate mill
              hot-mill     hot strip mill

              pickleline   pickling line
              cold-mill    cold strip mill
              anneal       annealing units
              tempermill   temper mill
              tin-line     tinning line

              billet       billet mill
              heavysmill   heavy shapes mill
              bar-mill     integrated bar mill
              wire-mill    integrated wire mill
              seaml-mill   seamless pipe mill /

     pm       production processes at mines /

              min-co       mining unwashed coal
              was-co       washing of coal
              min-n        mining in the northern mines
              min-s        mining in the southern mines
              min-tr       mining in las truchas mine

              conc-n       concentration of northern ore
              conc-s       concentration of southern ore
              conc-tr      concentration of truchas ore  /

     pr       production processes at raw material plants /

              pelt-c        pellet production using conc ore
              coke-hd       coke production with  domestic coal /

     ps       production processes at steel mills /

              pelt-c       pellet production using concentrated ore
              sinter       sinter production
              coke-hd      coke production with high domestic coal input
              coke-hi      coke production with high import coal input
              pig-ore      pig iron ore production with lump ore

              pig-sin      pig iron production with high sinter charge
              pig-pel      pig iron production with high pellets charge
              pig-pel-m    pig iron production with coke from imported coal
              sponge       sponge iron production
              stl-oh-p     steel production in open hearths with high pig iro

              stl-oh-s     steel production in open hearths with high scrap charge
              stl-oh-s2    steel production in open hearths with highest scrap charge
              stl-bof-p    steel production in bof with high pig iron charge
              stl-bof-s    steel production in bof with high scrap charge
              stl-eaf-sp   steel production in electric fur. with high sponge

              stl-eaf-s    steel production in electric furnace with high scrap
              slabs-cc     slabs production by continuous casting
              billets-cc   billet production by continuous casting
              ingot        ingot casting
              slab-roll    slab production by rolling

              bloom-roll   rolling of blooms from ingots
              billet-rol   billet production by rolling blooms
              plate        plate production from slabs
              hot-sheet    hot rolled coil production
              pickled      pickled coil production

              cold-sheet   cold roll coil production
              annealed     annealed coil production
              tempered     tempered coil production
              tinning      tin production
              heavyshape   heavy shape rolling

              lightshape   rolling of light shapes
              rough-nf     roughing mill for non-flat products
              bar-roll     rolling of bars
              rebars-ld    rolling of large diameter re-rods and bars
              rebars-sd    rolling of small diameter re-rods and bars

              wire rod     rolling of wire rod
              seam-rol     rollling of seamless pipes    /

     cs       commodities at steel mills /

              ore-n        iron ore from north. high s and p. 59% fe.
              ore-s        iron ore from south. no p. 60% fe.
              ore-trucha   iron ore from sicartsa. no p. 55% fe.
              ore-conc     iron ore concentrated
              pellets      pellets

              sinter       sinter
              coal-d       coal-domestic: washed
              coal-i       coal-imported: washed
              coal-r       raw unwashed coal
              coke         coke produced with domestic coal

              coke-imp-c   coke produced with imported coal
              fuel-oil     fuel oil in thousand liters
              limestone    limestone
              pig-iron     pig iron (hot metal)
              nat-gas      natural gas in 1000 m3

              sponge       sponge iron
              scrap        steel scrap
              ferro-allo   ferroalloys
              refrac       refractories
              dolomite     dolomite

              lime         lime
              electrodes   electrodes (kg)
              steel-liq    liquid steel
              steel-ing    ingot steel
              slabs        slabs

              plate        plate
              hot-strip    hot strip sheet
              pick-strip   pickled strip sheet
              cold-strip   cold strip sheet
              anl-strip    annealed strip sheet

              temp-strip   tempered strip sheet
              tin          tin sheet
              blooms       blooms
              billets      billets
              heavyshape   heavy shapes
              lightshape   light shapes
              bars         bars
              rebars       reinforcing rods - demand data is available only for aggregate
              rebars-ld    large diameter reinforcing rods
              rebars-sd    small diameter reinforcing rods
              wire         wire rod

              seamless     seamless pipe
              pesos        mexican currency
              electric     electricity in 1000 kwh
              water        water in 1000 m3
              ing-blooms   steel blooms for seamless pipe
              rails        rails - only imported         /

     craw(cs) domestic raw materials /

              fuel-oil, limestone, nat-gas, scrap, ferro-allo, refrac
              dolomite, lime, electrodes, water, electric  /

     cm(cs)   commodities at mines /

              ore-n, ore-s, ore-trucha, coal-r, coal-d, ore-conc  /

     cr(cs)   commodities at raw material plants /

              ore-n, ore-s, ore-trucha, coal-r, coal-d, ore-conc, pellets, coke, electric  /

     crv(cs)  imported raw materials and intermediate products / coal-i, pellets, scrap, coke  /


     cmr(cs)  commodities shipped from mines to raw material plants / ore-conc, coal-d  /


     cms(cs)  commodities shipped from mines to steel plants / coal-d, ore-conc, ore-s, ore-n, ore-trucha /


     crs(cs)  commodities shipped from raw material plants to steel mills / pellets, coke  /


     css(cs)  commodities for interplant shipment between steel mills / sponge, pellets, coke  /

     cf(cs)   final products / plate, hot-strip, temp-strip, tin , heavyshape, lightshape
                               bars , rebars-ld, rebars-sd , wire, seamless  , rails      /

     ce(cs)   commodities for exports

     cfv(cs)  imported final products

     o        owner numbers   / 1*5  /

     own(o,is) owner groups   / 1.sicartsa, 2.ahmsa, 3.fundidora, 4.(hylsa,hylsap), 5.tamsa /


     isex(is) plants excluded from alzada ores / sicartsa, ahmsa, fundidora, tamsa /

     res(cm,im) reserve types at locations     / ore-s.p-colorada, ore-trucha.lastruchas, ore-n.la-perla
                                                 ore-n.cerro-mer , ore-n.hercules       , ore-s.la-chula
                                                 ore-s.el-encino , coal-r.coahuila                       / ;

 ce(cf)  = yes    ;
 cfv(cf) = yes    ;

 Alias(is,isp)    ;

$Stitle    production

 Parameter as(cs,ps,is)  input output relations for steel mills ;

 Table am(cm,pm)   a matrix for mining products

             min-n   min-s   min-tr  conc-n  conc-s  conc-tr  min-co  was-co

 ore-n        1.                      -1.42
 ore-s                 1.                     -1.28
 ore-trucha                     1.                     -1.37
 ore-conc                              1.      1.       1.
 coal-r                                                         1.        -2.1
 coal-d                                                                  1.


 Table ar(cs,pr)   a matrix for raw material plants

             pelt-c  coke-hd

 fuel-oil      -.02
 ore-conc      -.99
 pellets       1.0
 coal-d                 -1.50
 coke                    1.0
 electric      -.045     -.060

 Table asic(cs,ps)   a matrix for sicartsa

             pelt-c  coke-hi  pig-pel-m  stl-bof-p  stl-bof-s

 ore-trucha                    -.20
 ore-conc      -.99
 pellets       1.0            -1.384
 coal-i               -1.38
 coke-imp-c            1.0     -.60
 fuel-oil                      -.045
 limestone                     -.081
 pig-iron                      1.0         -.944      -.833
 scrap                                     -.166      -.180
 ferro-allo                                -.033      -.033
 refrac                                    -.006      -.006
 dolomite                      -.049       -.06       -.06
 lime                                      -.09       -.09
 steel-liq                                 1.0        1.0
 electric      -.045   -.060   -.090       -.068      -.068


$Eject

   +        billets-cc  lightshape  rebars-ld  rebars-sd  wire

 scrap          .04         .03       .03         .03      .02
 steel-liq    -1.05
 billets       1.0        -1.06     -1.06       -1.06    -1.05
 lightshape                1.0
 rebars-ld                           1.0
 rebars-sd                                       1.0
 wire                                                     1.0
 electric                  -.08      -.08        -.08     -.08
 water                     -.01      -.01        -.01     -.01

*
*  data for pelt-c and coke-hi come from plant visit. data for pig-pel
*  and stl-bof-p comes from (1 page 83 and 95). idealized data rather
*  than historical yields for 1978 were used for rolling mills.


 Table aahm(cs,ps)   a matrix for ahmsa

             coke-hd  sinter  pig-pel  pig-sin

 ore-n                 -1.1             -.64
 coal-d        -1.50
 sinter                 1.0            -1.03
 pellets                       -1.6
 coke           1.0     -.11    -.63    -.70
 limestone              -.17            -.10
 dolomite                       -.049   -.049
 pig-iron                       1.0     1.0
 nat-gas                        -.05    -.05
 sponge
 electric       -.060   -.040   -.090   -.090
 ferro-allo                     -.065   -.065

     +       stl-oh-s  stl-bof-p  stl-bof-s  ingot  slabs-cc  slab-roll

 ore-n                              -.02
 pig-iron      -.77      -1.02      -.74
 scrap         -.33       -.11      -.42      .02      .02      .13
 nat-gas                            -.078    -.05              -.05
 fuel-oil                           -.079
 limestone     -.14
 ferro-allo    -.011      -.011     -.011
 refrac        -.012      -.006     -.012
 dolomite      -.10       -.06
 lime                     -.09      -.14
 steel-liq     1.0        1.0       1.0     -1.04    -1.04
 steel-ing                                   1.0              -1.17
 slabs                                                1.0      1.0
 electric      -.040      -.068     -.068

     +       bloom-roll  billet-rol  plate  hot-sheet  pickled

 scrap         .13          .13       .02      .03
 steel-ing   -1.17
 slabs                              -1.04    -1.05
 plate                               1.0
 hot-strip                                    1.0       -1.0
 blooms       1.0         -1.17
 billets                   1.0
 pick-strip                                              1.0

     +       cold-sheet  annealed  tempered  tinning

 scrap           .13
 pick-strip    -1.17
 cold-strip     1.0        -1.0
 anl-strip                  1.0       -1.0
 temp-strip                            1.0   -1.02
 tin                                          1.0

     +      heavyshape  lightshape  bar-roll  rebars-ld  rebars-sd  wire
 blooms        -1.15
 heavyshape     1.0
 billets                  -1.14      -1.06      -1.06     -1.06     -1.0
 lightshape                1.0
 bars                                 1.0
 rebars-ld                                       1.0
 rebars-sd                                                 1.0
 wire                                                                1.0
 scrap           .05        .03        .04        .04       .04       .0

 Table afund(cs,ps)   a matrix for fundidora

            pig-pel  pig-ore  pelt-c

 ore-n        -.29    -1.38
 ore-conc                      -.99
 pellets     -1.38     -.29    1.0
 coke         -.69     -.75
 limestone    -.24     -.27
 pig-iron     1.0      1.0
 nat-gas      -.051    -.029
 electric     -.06     -.036   -.045
 water        -.003    -.001
 ferro-allo   -.065    -.065

    +        stl-oh-s  stl-bof-p  stl-bof-s  stl-oh-s2

 ore-n          -.02                            -.02
 fuel-oil        -.079                          -.079
 pig-iron       -.74      -.96       -.81       -.32
 nat-gas        -.078                           -.078
 scrap          -.42      -.15       -.27       -.80
 ferro-allo     -.012     -.012      -.012      -.012
 refrac         -.012     -.006      -.006      -.012
 lime           -.14                            -.14
 steel-liq      1.0       1.0        1.0        1.0
 electric       -.072     -.068      -.068      -.072

    +        ingot  slab-roll  plate  hot-sheet  pickled  cold-sheet

 scrap         .01      .10       .10                         .13
 steel-liq   -1.04
 steel-ing    1.0     -1.14
 slabs                 1.0      -1.12   -1.05
 plate                           1.0
 hot-strip                               1.0     -1.0
 pick-strip                                       1.0      -1.17
 cold-strip                                                  1.0

    +        annealed  tempered  bloom-roll  billet-rol  lightshape

 scrap                               .10                      .10
 steel-ing                         -1.13
 cold-strip    -1.0
 anl-strip      1.0       -1.0
 temp-strip                1.0
 blooms                             1.0        -1.03
 billets                                        1.0         -1.14
 lightshape                                                  1.0

    +        wire  rebars-sd

 scrap         .04     .04
 billets     -1.06   -1.06
 rebars-sd            1.0
 wire         1.0


* data for  the pig-ore and pig-pel processes were derived
* from bf no. 2 and bf no. 3 data for 1975 as reported in
* (9- vol i) table 3.3.6
* *  data for stl-oh-s  are from same source table 3.4.6


 Table  ahyl(cs,ps)   a matrix for hylsa in monterrey

             sponge  stl-eaf-sp  stl-eaf-s  ingot  slab-roll

 pellets     -1.38
 nat-gas      -.470                                  -.05
 sponge       1.0      -1.09      -.60
 scrap                             -.46               .05
 ferro-allo             -.012      -.012
 refrac                 -.006      -.006
 electrodes           -.0052       -.0052
 dolomite               -.009      -.009
 lime                   -.007      -.007
 steel-liq              1.0        1.0       -1.02
 steel-ing                                    1.0   -1.07
 slabs                                               1.0
 electric     -.10      -.68      -.60

    +        hot-sheet  pickled  cold-sheet  annealed

 scrap         .05        .06       .02
 slabs       -1.07
 plate
 hot-strip    1.0       -1.06
 pick-strip              1.0      -1.05
 cold-strip                        1.0        -1.0
 anl-strip                                     1.0

    +        tempered  tinning

 scrap          .03      .01
 anl-strip    -1.04
 temp-strip    1.0     -1.02
 tin                    1.0

*  data for eaf from (15), rolling processes from (9 vol ii)
*  verify scrap generation and electricity


 Table ahylp(cs,ps)   a matrix for hylsa in puebla

             sponge  stl-eaf-sp  stl-eaf-s  billets-cc

 pellets      -1.38
 nat-gas       -.420
 sponge        1.0     -1.09
 scrap                             -1.06
 ferro-allo             -.014       -.012
 refrac                 -.006       -.006
 electrodes             -.0052        -.0052
 dolomite               -.009       -.009
 lime                   -.007       -.007
 steel-liq              1.0         1.0       -1.06
 billets                                       1.0
 electric      -.010    -.68        -.50

     +        lightshape  bar-roll  rebars-ld  rebars-sd  wire

 scrap            .04       .04       .04         .03      .03
 billets        -1.06     -1.06     -1.06       -1.05    -1.05
 lightshape     1.0
 bars                      1.0
 rebars-ld                           1.0
 rebars-sd                                       1.0
 wire                                                     1.0
 electric        -.03       -.025     -.025       -.03      -.03

*   rolling processes from (9-ii), sponge and st-eaf from plant visits
*   and (15)


 Table atam(cs,ps)    a matrix for tamsa

             sponge  stl-eaf-sp  stl-eaf-s    ingot

 pellets     -1.38
 nat-gas      -.50
 sponge       1.0       -1.09
 scrap                              -1.06
 ferro-allo              -.033       -.033
 refrac                  -.006       -.006
 electrodes              -.0052        -.0052
 dolomite                -.009       -.009
 lime                    -.007       -.007
 steel-liq               1.0         1.0       -1.06
 ing-blooms                                     1.0
 electric     -.01       -.68        -.50

     +       billet-rol  lightshape  bar-roll  seam-rol

 scrap           .01         .04       .04       .35
 ing-blooms    -1.03                           -1.45
 billets        1.0        -1.06     -1.06
 lightshape                1.0
 bars                                 1.0
 seamless                                       1.0
                             ;

      as(cs,ps,"sicartsa")      = asic(cs,ps);
      as(cs,ps,"ahmsa")         = aahm(cs,ps);
      as(cs,ps,"fundidora")     = afund(cs,ps);
      as(cs,ps,"hylsa")         = ahyl(cs,ps);
      as(cs,ps,"hylsap")        = ahylp(cs,ps);
      as(cs,ps,"tamsa")         = atam(cs,ps);


 Table bm(mm,pm)   capacity utilization matrix for mines

             min-n  min-s  min-tr  conc-s  conc-tr conc-n  min-co

 mine-eq       1      1      1
 conc-mag                            1       1
 conc-flot                                           1
 mine-co                                                     1

 Table br(mr,pr)   capacity utilization for raw materials plants

                 coke-hd     pelt-c

 coke-oven         1
 pellet                         1

 Table bs(ms,ps)   capacity utilization matrix for steel mills

             coke-hd  coke-hi  pig-ore pig-sin pig-pel pig-pel-m

 coke-oven      1        1
 blast-furn                       1       1      .96      1

     +           sponge stl-oh-p stl-oh-s stl-oh-s2

 blast-furn
 direct-red        1
 openhearth                1          1       1

     +       stl-bof-p  stl-bof-s  stl-eaf-sp  stl-eaf-s

 bof             1           1
 elec-arc                              1            1

     +       slabs-cc  billets-cc  ingot  slab-roll  bloom-roll

 concas-sl       1
 concas-bi                 1
 ingot-cast                          1
 primary-fl                                    1
 primary-nf                                                1

     +       billet-rol   plate  hot-sheet  pickled  cold-sheet

 plate-mill                  1
 hot-mill                             1
 pickleline                                    1
 cold-mill                                                 1
 billet            1

     +       annealed  tempered  tinning  heavyshape  lightshape

 anneal          1
 tempermill               1
 tin-line                            1
 heavysmill                                   1
 bar-mill                                                  1

     +       bar-roll  rebars-ld  rebars-sd  wire  seam-rol

 bar-mill        1         1
 wire-mill                             1        1
 seaml-mill                                             1

   +         pelt-c     sinter

 pellet         1
 sinter                    1

$Stitle   capacity

 Table km(mm,im)   initial capacities for mines (1000 tpy)

             p-colorada lastruchas la-perla cerro-mer hercules

 mine-eq        4000       2700      1000     3000      1000
 conc-mag       4000       1500
 conc-flot                           1000     3000


 +           la-chula  el-encino  coahuila

 mine-eq         500       3000
 conc-mag                  3000
 mine-co                            7000

 Table kr(mr,ir)   initial capacities for raw material plants  (1000 tpy)

             penacol  laperla  alzada  esperanzas

 pellet         3000     600     1500
 coke-oven                                684


 Table ks(ms,is)   initial capacities for steel mills  (1000 tpy)

             sicartsa  ahmsa  fundidora  hylsa  hylsap  tamsa

 pellet          1850               750
 sinter                 1500
 coke-oven        660   2100
 blast-furn      1100   3247       1400
 direct-red                                660    1000    270
 openhearth             1500        850
 bof             1300   2070       1500
 elec-arc                                 1000     560    450
 concas-sl               710
 concas-bi       1300                              560
 ingot-cast             2600       2000   1000            420
 primary-fl             1850       1450   1000
 primary-nf             1200
 plate-mill              960        250
 hot-mill               1600        870    900
 pickleline             1600        575    650
 cold-mill              1495        500    600
 anneal                 1348        420    450
 tempermill             1225        520    450
 tin-line                315                70
 billet                 1000       200
 heavysmill              200
 bar-mill         600    135                       430     80
 wire-mill        600    270                       200
 seaml-mill                                               280

        ;

$Ontext

  sicartsa

    1. coke-oven (1)  2200 t/day = 660 mt/a  based on stated coal mix
    2. blast-furn (1)  3300 t/day with 330 days/year = 1100 mt/a
    3. all capacities from (1) unless otherwise noted

  ahmsa

    1. all capacities from (10) unless otherwise noted

  fundidora

    1. coke plant is at the mine
    2. all capacities from (12) unless otherwise noted
    3. open hearth capacity is for steelshop no. 2 from (9 - vol i)
       table 3.4.3

  hylsa

    1. all capacities from (9 - vol i) unless otherwise noted
    2. only rough estimates for pickle, annealing, and temper lines
    3. monterrey visit april 1981

  hylsap

    1. data obtained during plant visit

  tamsa

    1. all capacities from(9 -vol i)
    2. monterrey visit 1981

$Offtext

 Parameter ut(is) capacity utilization / sicartsa .5, (ahmsa,fundidora,tamsa) .9, hylsa 1, hylsap 1.1 / ;

  km(mm,im) = .9*km(mm,im);
  kr(mr,ir) = .9*kr(mr,ir);
  ks(ms,is) = ut(is)*ks(ms,is);

$Stitle demand data

 Set ds          demand data components / demand, semi-int, adj-dem /

 Table mrod(cs,cs) map for disaggregating demand for reinforced bars to large and small diameters

           rebars-sd   rebars-ld
 rebars        .4         .6


 Table demdat(cs,ds)   demand and semi-intgrated output (1000 tpy)

                  demand      semi-int

 plate            1050
 hot-strip         600
 temp-strip       1250
 tin               400
 heavyshape        300           130
 lightshape        310           160
 bars              340           155
 rebars           1150           395
 wire              600           190
 seamless          800
 rails             110


 Table regdem(cs,j)  regional demand per product ( % of total )

             mexico-df puebla queretaro san-luis monterrey

 plate          63.5     0.2     0.3       0.3      31.0
 hot-strip      41.9     2.8     1.6       2.8      36.2
 temp-strip     45.1     2.5     4.5       1.1      41.7
 tin            87.6             0.3                 9.4
 heavyshape     36.6     2.2     3.2       0.8      12.9
 lightshape     74.4     2.5     1.9       1.8       8.1
 bars           46.6     4.2    23.5       2.2      11.2
 rebars         46.7    10.3     4.0       3.4      12.8
 wire           61.2     5.3     3.9       3.7      12.2
 seamless       10.5    28.0     0.4       0.2      18.4
 rails          40.0     5.0     5.0      10.0      20.0

 +           guadalaja  l-cardenas  coatzacoal

 plate          4.5        0.1        0.1
 hot-strip     12.6        0.5        1.6
 temp-strip     4.3        0.4        0.4
 tin            2.7
 heavyshape    42.6        1.4        0.3
 lightshape     8.9        1.6        0.8
 bars          11.8        0.4        0.1
 rebars        11.8        6.1        4.9
 wire           9.8        1.9        2.0
 seamless       1.8        1.7       39.0
 rails         10.0        5.0        5.0
                          ;

*    data base estimated
*    rail distibution has been added in washington

  demdat(cs,"adj-dem") = demdat(cs,"demand") - demdat(cs,"semi-int");

  demdat(cf,"adj-dem")$sum(cs, mrod(cs,cf)) = sum(cs, mrod(cs,cf)*demdat(cs,"adj-dem"));

  regdem(cf,j)$sum(cs, mrod(cs,cf)) = sum(cs$mrod(cs,cf), regdem(cs,j));

 Parameter d(*,*)  adjusted demand for semi-integr plants (1000 tpy) ;

 d(cf,j) = demdat(cf,"adj-dem")*regdem(cf,j)/100;
 d("   total  ",j)  =  sum(cf, d(cf,j))   ;
 d(cf,"   total  ") =  sum(j, d(cf,j))    ;
 d("   total  ","   total  ") =  sum(cf,  d(cf,"   total  "))  ;

 Display demdat, regdem, d;


 Parameter emax(cf) export limit by product (1000 tpy)
           etot     total export limit      (1000 tpy) ;

 emax(cf) = 500 ;  etot = 250 ;

$Stitle prices

 Set sp  domestic and international prices / domestic, internat /


 Parameter  mc(pm)  mining cost (pesos per ton) / min-co 250, (min-s,min-n,min-tr) 100 / ;

 Table prices(cs,sp)   domestic and international prices of commodities

           domestic     internat
*         (79 pesos)  (79 dollars)

$Maxcol 40

 ore-conc                  28                    tons
 pellets       430         45                    tons
 coal-d        880                               tons
 coal-i                    63                    tons
 coke         1200        100                    tons
 fuel-oil     1000                               tons **** 1000liters
 limestone     120                               tons
 nat-gas       322        152                    1000 m3
 scrap        3050        120                    tons
 ferro-allo  16000                               tons
 refrac      50000                               tons
 dolomite      800                               tons
 lime          690                               tons
 electrodes  48000                               tons
 electric      552                               1000 kwh
 plate                     347                   tons
 hot-strip                 393                   tons
 temp-strip                373                   tons
 tin                       393                   tons
 billets                   300                   tons
 heavyshape                338                   tons
 lightshape                364                   tons
 bars                      350                   tons
 rebars-ld                 347                   tons
 rebars-sd                 368                   tons
 wire                      434                   tons
 seamless                  455                   tons
 rails                     345                   tons

$Maxcol 120

*  different prices for limestone: ahmsa 90, fundidora 60, sicartsa 120
*  price of natural gas for sicartsa expansions: 30% lower.


 Parameter   pd(cs)     prices of domestic products  (1979 pesos per unit)
             pv(cs)     prices of imports              (1979 us $ per ton)
             pe(cs)     export prices                  (1979 us $ per ton)
             sh         shadow exchange rate          (1979 pesos per us$);

  sh           = 25.0 ;
  pd(craw)     = prices(craw,"domestic");
  pv(crv)      = prices(crv,"internat");
  pv(cfv)      = prices(cfv,"internat");
  pe(ce)       = .8*prices(ce,"internat");

$Stitle transport data

 Table rdsj(is,j)  rail distances from steel mills to markets  (km)

             mexico-df puebla queretaro san-luis monterrey

 sicartsa      819      995      691      875       1305
 ahmsa        1204     1300      849      592        218
 fundidora    1017     1159      755      498
 hylsa        1017     1159      755      498
 hylsap        185               410      667       1085
 tamsa         428      315      650      907       1330

  +          guadalaja l-cardenas coatzacoal

 sicartsa       704                  1638
 ahmsa         1125       1416       1850
 fundidora     1030       1322       1756
 hylsa         1030       1322       1756
 hylsap         760        995        671
 tamsa         1005       1239        550

*     data from (20) and (21)
*     only steel plants included, since pellet and coke plants do not
*     send final products to markets

 Table rdss(is,is)  rail distances between steel plants

             sicartsa ahmsa fundidora hylsa hylsap tamsa

 ahmsa         1416
 fundidora     1322     218
 hylsa         1322     218      10
 hylsap         995    1300    1159    1159
 tamsa         1239    1499    1405    1405   315

 Table rdrs(ir,is)  rail distances from raw material plants to steel mills

                sicartsa  ahmsa  fundidora  hylsa  hylsap  tamsa

 penacol          1037     1490    1396     1396    1116     1360
 laperla          1797      403     621      621    1595     1703
 alzada            920     1360    1260     1260     990     1300
 esperanzas       1522      122     340      340    1422     1670


*     data from (19) and(20)

 Table rdms(im,is)  rail distances from mines to steel plants

             sicartsa ahmsa fundidora hylsa hylsap tamsa

 p-colorada     1037   1490    1396    1396  1116   1360
 lastruchas            1416    1322    1322   995   1239
 la-perla       1797    403     621     621  1595   1927
 cerro-mer      1275    677     636     636  1245   1489
 hercules       1613    219     563     563  1411   1655
 la-chula       1044   1480    1300    1300  1112   1356
 el-encino       965   1401    1307    1307  1033   1277
 coahuila       1500    120     400     400  1420   1700

 Table rdmr(im,ir)  rail distances from mines to raw material plants

             penacol  laperla  alzada  esperanzas

 p-colorada             1803      70
 lastruchas    1037     1797     920
 la-perla      1803             1800
 cerro-mer     1500      400    1500
 hercules      1616      400    1600
 la-chula        90     1800      60
 el-encino       90     1800      40
 coahuila                                15

*     data from (19)
*     data from (18)
*     distances from coal mines to pellet plants not included for obviou

 Table rdps(*,is)   rail distances from nearest port to steel mill

               sicartsa ahmsa fundidora hylsa hylsap tamsa

 gulf             1239    739    521     521   315
 pacific                 1416   1322    1322   995    1239



*     data from (19) and (20)
*     distances in this table are from plant to nearest port.
*     for gulf: sicartsa,hylsap,tamsa and new-manz po veracruz.
*               ahmsa,fundidora,hylsa,naw-tamp to tampico.
*               new-coat to coatzacoalcos.
*     for pacific: all plants to lazaro carenas, axcept fpr
*                  new-manz to manzanillo



 Table rdpj(*,j)  rail distances from nearest port to markets

              mexico-df puebla queretaro san-luis monterrey

 gulf           428       315     650      444      521
 pacific        819       995     691      875     1305

   +          guadalaja l-cardenas coatzacoal

 gulf            995       1239
 pacific         300                  1638


*    data base from (20) and (21)
*    nearest ports for
*       gulf: veracruz to mexico-df,puebla,queretaro,toluca,l-cardenas
*             tampico to san-luis,guadalajara
*             matamoros to monterrey
*             coatzacoalcos to coatzacoal
*    pacific: all to lazaro cardenas, except for manzanillo to guadalaja

* mines - iron ore and coal mines
* plants - raw material plants
* mills - steel mills

 Parameter mumr(im,ir)  transport cost: mines to plants               (us$ per ton)
           mums(im,is)  transport cost: mines to mills                (us$ per ton)
           murs(ir,is)  transport cost: plants to mills               (us$ per ton)
           muss(is,is)  transport cost: between mills                 (us$ per ton)
           musj(is,j)   transport cost: mills to markets              (us$ per ton)
           mupsr(is)    transport cost: ports to mills - raw material (us$ per ton)
           muspf(is)    transport cost: mills to ports - final product  ($ per ton)
           mupj(j)      transport cost: ports to markets              (us$ per ton);

      rdps("short",is)   = min(rdps("gulf",is) ,rdps("pacific",is) );
      rdss(is,isp)       = max(rdss(is,isp),rdss(isp,is));
      rdpj("short",j)    = min(rdpj("gulf",j ),rdpj("pacific",j ));

    mumr(im,ir)  = (35 + .11*rdmr(im,ir))$rdmr(im,ir);
    mums(im,is)  = (35 + .11*rdms(im,is))$rdms(im,is);
    murs(ir,is)  = (35 + .11*rdrs(ir,is))$rdrs(ir,is);
    muss(is,isp) = (35 + .11*rdss(is,isp))$rdss(is,isp);
    mupsr(is)    = (35 + .11*rdps("short",is))$rdps("short",is);
    musj(is,j)   = (60 + .19*rdsj(is,j))$rdsj(is,j);
    muspf(is)    = (60 + .19*rdps("short",is))$rdps("short",is);
    mupj(j)      = (60 + .19*rdpj("short",j))$rdpj("short",j);

*  data base from (19) and (20)
*  old figures were 57.16 + .194  and   17.46 + .106

 Display mumr, mums, murs, muss, musj, mupsr, muspf, mupj;

 Parameter  loss(cs)  correction factor for coke losses during intermill shipments of coke
            pct(o)    share of pellet shipments from pena colarada by ownership / 2 = .46, 3 = .1, 4 = .26, 5 = .18 /;

  loss(cs) = 1;  loss("coke") = 0.9;

$Stitle model reduction

 Set  mmpos(mm,im)  productive unit possibility: mines
      mrpos(mr,ir)  productive unit possibility: raw material plants
      mspos(ms,is)  productive unit possibility: steel mills

      pmpos(pm,im)  process possibility: mines
      prpos(pr,ir)  process possibility: raw material plants
      pspos(ps,is)  process possibility: steel mills

      cmposp(cs,im) commodity production possibility: mines
      crposp(cs,ir) commodity production possibility: raw material plants
      csposp(cs,is) commodity production possibility: steel mills

      cmposn(cs,im) commodity consumption possibility: mines
      crposn(cs,ir) commodity consumption possibility: raw material plants
      csposn(cs,is) commodity consumption possibility: steel mills ;

  mmpos(mm,im) = yes$km(mm,im);
  mrpos(mr,ir) = yes$kr(mr,ir);
  mspos(ms,is) = yes$ks(ms,is);

  pmpos(pm,im)$sum(cm, am(cm,pm)$res(cm,im) ne 0 ) =
               yes$(sum(mm$(not mmpos(mm,im)), bm(mm,pm) ne 0) eq 0) ;
  prpos(pr,ir)$sum(cr, ar(cr,pr) ne 0 ) =
               yes$(sum(mr$(not mrpos(mr,ir)), br(mr,pr) ne 0) eq 0) ;
  pspos(ps,is)$sum(cs, as(cs,ps,is) ne 0 ) =
               yes$(sum(ms$(not mspos(ms,is)), bs(ms,ps) ne 0) eq 0) ;

  cmposp(cm,im) = yes$sum(pm$pmpos(pm,im), am(cm,pm) gt 0) ;
  crposp(cr,ir) = yes$sum(pr$prpos(pr,ir), ar(cr,pr) gt 0) ;
  csposp(cs,is) = yes$sum(ps$pspos(ps,is), as(cs,ps,is) gt 0) ;

  cmposn(cm,im) = yes$sum(pm$pmpos(pm,im), am(cm,pm) lt 0) ;
  crposn(cr,ir) = yes$sum(pr$prpos(pr,ir), ar(cr,pr) lt 0);
  csposn(cs,is) = yes$sum(ps$pspos(ps,is), as(cs,ps,is) lt 0);

 Display mmpos, mrpos, mspos, pmpos, prpos, pspos, cmposp, crposp,
         csposp, cmposn, crposn, csposn ;

 Set imres(im)       restricted mines / lastruchas /
     imfree(im)      free mines
     xmpos(cs,im,*)  possible shipments of mining products to raw mat plants;

     imfree(im) = yes - imres(im) ;

     xmpos("coal-d","coahuila","esperanzas")  = yes;
     xmpos("ore-conc","p-colorada","penacol") = yes;
     xmpos("ore-conc","la-perla","laperla")   = yes;
     xmpos("ore-conc","el-encino","alzada")   = yes;
     xmpos(cm,"lastruchas","sicartsa")        = yes;
     xmpos(cm,imfree,is)                      = yes;

$Stitle    equations

 Equations

  mbm(cm,im)       material balance: mines                            (1000 tpy)
  mbr(cr,ir)       material balance: raw material plants        (1000 units tpy)
  mbs(cs,is)       material balance: steel mills                (1000 units tpy)

  ccm(mm,im)       capacity constraint: mines                         (1000 tpy)
  ccr(mr,ir)       capacity constraint: raw material plants           (1000 tpy)
  ccs(ms,is)       capacity constraint: steel mills                   (1000 tpy)

  mreq(cf,j)       market requirements                                (1000 tpy)
  me(cf)           export bounds                                      (1000 tpy)
  me2              total exports                                      (1000 tpy)

  pelpc(o)         pellet shipments from pena colarada                (1000 tpy)
  pelal            pellet shipments from alzada                       (1000 tpy)

  acost            accounting: total cost                             (mill us$)
  arec             accounting: recurrent cost                         (mill us$)
  atrans           accounting: transport cost                         (mill us$)
  aimp             accounting: import cost                            (mill us$)
  aexp             accounting: export revenue                         (mill us$)

 Variables

  zm(pm,im)        process level: mines                               (1000 tpy)
  zr(pr,ir)        process level: raw material plants                 (1000 tpy)
  zs(ps,is)        process level: steel mills                         (1000 tpy)

  xm(cs,im,*)      shipments: mine products                           (1000 tpy)
  xr(cs,ir,is)     shipments: from raw material plants                (1000 tpy)
  xs(cs,is,isp)    shipments: interplant                              (1000 tpy)
  xf(cs,is,j)      shipments: final products                          (1000 tpy)

  ur(cs,ir)        domestic products purchase: raw mat. plants  (1000 units tpy)
  us(cs,is)        domestic products purchase: steel mills      (1000 units tpy)

  e(cs,is)         exports                                            (1000 tpy)
  vs(cs,is)        imports to steel mills                             (1000 tpy)
  vf(cs,j)         import of final products                           (1000 tpy)

  cost             total cost                                         (mill us$)
  recurrent        cost                                               (mill us$)
  transport        cost                                               (mill us$)
  import           cost                                               (mill us$)
  export           cost                                               (mill us$)

 Positive Variables zm, zr, zs, xm, xr, xs, xf, ur, us, e, vs, vf;

$Eject
$Double

 mbm(cm,im).. sum(pm$pmpos(pm,im), am(cm,pm)*zm(pm,im))
          =g= ( sum(ir$(xmpos(cm,im,ir)*crposn(cm,ir)), xm(cm,im,ir))
              + sum(is$(xmpos(cm,im,is)*csposn(cm,is)), xm(cm,im,is)))$cmposp(cm,im);

 mbr(cr,ir).. sum(pr$prpos(pr,ir), ar(cr,pr)*zr(pr,ir))
            + ( sum(im$(cmposp(cr,im)*xmpos(cr,im,ir)), xm(cr,im,ir))$cmr(cr) + ur(cr,ir)$craw(cr) )$crposn(cr,ir)
          =g= sum(is$(crs(cr)*crposp(cr,ir)*csposn(cr,is)), xr(cr,ir,is)) ;

 mbs(cs,is).. sum(ps$pspos(ps,is), as(cs,ps,is)*zs(ps,is))
            + ( sum(im$(cmposp(cs,im)*xmpos(cs,im,is)), xm(cs,im,is))$cms(cs)
              + sum(ir$crposp(cs,ir), loss(cs)*xr(cs,ir,is))$crs(cs)
              + sum(isp$csposp(cs,isp), loss(cs)*xs(cs,isp,is))$css(cs)
              + us(cs,is)$craw(cs) + vs(cs,is)$crv(cs)         )$csposn(cs,is)
          =g= ( sum(isp$csposn(cs,isp), xs(cs,is,isp))$css(cs)
              + sum(j, xf(cs,is,j))$cf(cs) + e(cs,is)$ce(cs)   )$csposp(cs,is) ;

 ccm(mm,im)$mmpos(mm,im)..  sum(pm$pmpos(pm,im), bm(mm,pm)*zm(pm,im)) =l= km(mm,im);

 ccr(mr,ir)$mrpos(mr,ir)..  sum(pr$prpos(pr,ir), br(mr,pr)*zr(pr,ir)) =l= kr(mr,ir);

 ccs(ms,is)$mspos(ms,is)..  sum(ps$pspos(ps,is), bs(ms,ps)*zs(ps,is)) =l= ks(ms,is);

 mreq(cf,j).. sum(is$csposp(cf,is), xf(cf,is,j)) + vf(cf,j) =g= d(cf,j);

 me(cf)..     sum(is$csposp(cf,is), e(cf,is)) =l= emax(cf);

 me2..        sum((cf,is)$csposp(cf,is), e(cf,is))  =l=  etot  ;

 pelpc(o)..   sum(is$(own(o,is)*csposn("pellets",is)), xr("pellets","penacol",is)) =l= pct(o)*kr("pellet","penacol");

 pelal..      sum(isex$csposn("pellets",isex), xr("pellets","alzada",isex)) =e= 0;

 acost..      cost =e= recurrent + transport + sh*(import-export) ;

 arec..       recurrent =e= ( sum((pm,im)$pmpos(pm,im), mc(pm)*zm(pm,im))
                              + sum((craw,ir)$crposn(craw,ir), pd(craw)*ur(craw,ir))
                              + sum((craw,is)$csposn(craw,is), pd(craw)*us(craw,is)) )/1000;

 atrans..     transport =e= ( sum((cmr,im,ir)$(cmposp(cmr,im)*xmpos(cmr,im,ir)*crposn(cmr,ir)),
                                             mumr(im,ir)*xm(cmr,im,ir))
                             + sum((cms,im,is)$(cmposp(cms,im)*csposn(cms,is)*xmpos(cms,im,is)),
                                              mums(im,is)*xm(cms,im,is))
                             + sum((crs,ir,is)$(crposp(crs,ir)*csposn(crs,is)), murs(ir,is)*xr(crs,ir,is))
                             + sum((css,is,isp)$(csposp(css,is)*csposn(css,isp)), muss(is,isp)*xs(css,is,isp))
                             + sum((cf,is,j)$csposp(cf,is), musj(is,j)*xf(cf,is,j))
                             + sum((crv,is)$csposn(crv,is), mupsr(is)*vs(crv,is))
                             + sum((cf,is)$csposp(cf,is), muspf(is)*e(cf,is)) + sum((cf,j), mupj(j)*vf(cf,j)) )/1000;

 aimp..       import =e= ( sum((crv,is)$csposn(crv,is), pv(crv)*vs(crv,is)) + sum((cfv,j), pv(cfv)*vf(cfv,j)) )/1000;

 aexp..       export =e= ( sum((ce,is)$csposp(ce,is), pe(ce)*e(ce,is)) )/1000;

 Model one /all/ ;

*  define run 1

   vs.up("coke",is) = 0; us.up("scrap",is) = 0;

   ks(ms,"ahmsa")      = ks(ms,"ahmsa")*0.9;
   ks(ms,"fundidora")  = ks(ms,"fundidora")*0.95;

 Display ks;
 Solve one minimizing cost using lp ;

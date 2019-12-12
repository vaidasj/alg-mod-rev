option LP=convert;
option LP=convert;
option LP=convert;
$Title EGYPT - Static Fertilizer Model  (FERTS,SEQ=13)

$Stitle Set Definitions

$Ontext

A simple production and distribution model of the Egyptian fertilizer
sector for the year 1975. This model was mainly used for data and
model validation purposes.


Choksi, A M, Meeraus, A, and Stoutjesdijk, A, The Planning of Investment
Programs in the Fertilizer Industry. The John Hopkins University Press,
Baltimore and London, 1980.

$Offtext


 Set i          plant locations  /

                aswan
                helwan
                assiout
                kafr-el-zt
                abu-zaabal      /

     j          demand regions    /

                alexandria      alexandria
                behera          damanhur
                gharbia         tanta
                kafr-el-sh      kare el-sheikh
                dakahlia        el mansura

                damietta        damietta
                sharkia         zagazig
                ismailia        ismailia
                suez            suez
                menoufia        shibin el kom

                kalubia         benha
                giza            giza
                beni-suef       beni-suef
                fayoum          el-fayoum
                minia           el-minia

                assiout         assoiut
                new-valley      el kharga
                sohag           sohag
                quena           quena
                aswan           aswan     /

     m          productive units          /

                sulf-a-s    sulfuric acid: sulfur
                sulf-a-p    sulfuric acid: pyrites
                nitr-acid   nitric acid
                amm-elec    ammonia: water electrolysis
                amm-c-gas   ammonia: coke gas
                c-amm-nitr  calcium ammonium nitrate
                amm-sulf    ammonium sulfate
                ssp         single superphosphate      /

     p          processes       /

                sulf-a-s    sulfuric acid: sulfur
                sulf-a-p    sulfuric acid: pyrites
                nitr-acid   nitric acid
                amm-elec    ammonia: water electrolysis
                amm-c-gas   ammonia: coke gas
                can-310     calcium ammonium nitrate: 31.0 %
                can-335     calcium ammonium nitrate: 33.5 %
                amm-sulf    ammonium sulfate
                ssp-155     single superphosphate: 15.5 %   /

     cq         nutrients        /

                n           nitrogen
                p2o5        phosphorus /

     c          commodities /

                urea
                can-260     calcium ammonium nitrate: 26.0 %
                can-310     calcium ammonium nitrate: 31.0 %
                can-335     calcium ammonium nitrate: 33.5 %
                amm-sulf    ammonium phosphate
                dap         diammonium phosphate
                ssp-155     single superphosphate: 15.5 %
                c-250-55    compound 25-5.5-0
                c-300-100   compound 30-10-0

                ammonia
                nitr-acid   nitric acid
                sulf-acid   sulfuric acid
                el-aswan    electricity from aswan dam
                coke-gas    coke-oven gas
                phos-rock   phosphate rock

                limestone
                el-sulfur   elemental sulfur
                pyrites
                electric    electricity
                bf-gas      blast-furnace gas
                water       cooling water
                steam
                bags                         /

     cf(c)      final product                / urea, can-260, can-310, can-335
                                               dap, ssp-155, c-250-55, c-300-100, amm-sulf /

     ci(c)      intermediate products        / ammonia, nitr-acid, sulf-acid /

     cs(c)      intermediates for shipment   / ammonia, sulf-acid /

     cr(c)      domestic raw materials and miscellaneous inputs   / el-aswan , coke-gas , phos-rock, limestone
                                                                    el-sulfur, pyrites  , electric , bf-gas
                                                                    water    , steam    , bags     , sulf-acid /

   Alias (i,ip);


$Stitle Consumption and Demand Data

 Table cf75(j,c)    fertilizer consumption 1974-75 (1000 tpy)

              amm-sulf  urea  can-260  can-310  can-335  dap  ssp-155  c-250-55  c-300-100

  alexandria      3.0    1.0                       5.0           8.0
  behera         90.0   35.0     1.0              25.0    .1    64.0      1.0         .1
  gharbia        60.0   28.0                      17.0    .1    57.0      1.0         .2
  kafr-el-sh     45.0   22.0     1.0              10.0          25.0      2.0         .1
  dakahlia       60.0   20.0     1.0              26.0          52.0      1.0
  damietta       15.0    8.0                       2.0           5.0
  sharkia        50.0   28.0     1.0              31.0          43.0      1.0         .1
  ismailia        6.0    2.0                       4.0           4.0
  suez                                             1.0           1.0
  menoufia       21.0   30.0     1.0              24.0    .1    33.0      2.0         .1
  kalubia        16.0    7.0                      25.0    .1    22.0      1.0
  giza            6.0    2.0                      40.0          14.0      1.0         .1
  beni-suef       1.0   20.0     1.0              15.0          13.0      3.0
  fayoum          6.0   20.0     1.0              20.0          17.0      1.0
  minia           1.0   41.0     2.0     15.0     35.0    .1    50.0      3.0         .2
  assiout         1.0   27.0     1.0     20.0     26.0          35.0      5.0         .1
  new-valley             1.0                                     1.0
  sohag                  7.0             65.0      3.0          20.0      1.0
  quena                  3.0             95.0      2.0           8.0
  aswan                                  40.0                    8.0


 Table  alpha(c,cq)    nutrient content

               n       p2o5

 urea         .46
 can-260      .26
 can-310      .31
 can-335      .335
 amm-sulf     .206
 dap          .18       .46
 ssp-155                .155
 c-250-55     .25       .055
 c-300-100    .30       .10

 Parameters cn75(*,cq)    consumption of nutrients 1974-75 (1000 tpy) ;

  cn75(j,cq)       = sum(cf, alpha(cf,cq)*cf75(j,cf));
  cn75("total",cq) = sum(j, cn75(j,cq));

 Display cn75;


$Stitle Transportation Data

 Table road(j,*)  road distances (km)

              abu-kir  kafr-el-zt  talkha  abu-zaabal  helwan    assiout  aswan

  alexandria      16        119       187      210       244        607    1135
  behera          76         42       120       50       184        547    1065
  gharbia        150         20        55       65       122        485    1003
  kafr-el-sh     145         20        35      105       162        525    1043
  dakahlia       208         58         3      138       152        515    1033
  damietta       267        131        66      216       233        596    1114
  sharkia        240         78        58       60       110        473     991
  ismailia       365        241       146      142       173        536    1054
  suez           370        246       298      224       178        541    1059
  menoufia       157         33        90      154       109        472     990
  kalubia        190         66        81       97        76        439     957
  giza           287        133       146       48         9        372     890
  beni-suef      359        248       261      163       105        257     775
  fayoum         341        230       243      145        88        308     826
  minia          384        372       386      288       230        132     650
  assiout        616        504       518      420       362                518
  new-valley     815        703       717      619       561        199     519
  sohag          715        603       617      519       461         99     419
  quena          858        746       760      662       604        242     276
  aswan         1134       1022      1036      938       880        518

$Eject

 Table rail(i,i)   interplant rail distances (kms)

             kafr-el-zt  abu-zaabal  helwan  assiout  aswan
 abu-zaabal     85
 helwan        142            57
 assiout       504           420      362
 aswan        1022           938     880       518


 Table impd(i,*)  import distances (kms)

               barge      road

 kafr-el-zt      104         6
 abu-zaabal      210        .1
 helwan          183
 assiout         583
 aswan          1087        10


 Parameters muf(i,j)   transport cost (le per ton): final products
            mufv(j)    transport cost (le per ton): imported final products
            mui(i,i)   transport cost (le per ton): interplant shipment
            mur(i)     transport cost (le per ton): imported raw materials ;

   rail(i,ip) = rail(i,ip) + rail(ip,i);
   road(j,"import-pts") = road (j,"abu-kir");

   muf(i,j)    = ( .5 + .0144*road(j,i)            )$road(j,i);
   mufv(j)     = ( .5 + .0144*road(j,"import-pts") )$road(j,"import-pts");
   mui(i,ip)   = (3.5 + .0300*rail(i,ip)           )$rail(i,ip);
   mur(i)      = (1.0 + .0030*impd(i,"barge")      )$impd(i,"barge")
               + ( .5 + .0144*impd(i,"road" )      )$impd(i,"road ");

 Display muf,mufv,mui,mur;

$stitle technology data

 Table a(c,p)  input-output coefficients

             sulf-a-s  sulf-a-p  nitr-acid  amm-elec  amm-c-gas

 el-aswan                                     -12.0
 coke-gas                                                -2.0
 pyrites                  -.826
 el-sulfur    -.334
 sulf-acid    1.0         1.0
 ammonia                            -.292      1.0       1.0
 nitr-acid                          1.0

 electric     -50         -75       -231                 -1960
 bf-gas                                                   -609
 water         -20        -60       -.6                   -700
 steam                                                      -4

    +       ssp-155  can-310  can-335  amm-sulf

 phos-rock    -.62
 sulf-acid    -.41                       -.76
 ammonia               -.20     -.21     -.26
 nitr-acid             -.71     -.76
 limestone             -.12     -.04
 ssp-155      1.0
 can-310               1.0
 can-335                        1.0
 amm-sulf                                 1.0

 bags       -22.      -23.    -23.      -22.
 water       -6.      -49.    -49.      -17.
 electric   -14.                        -19.
 steam                  -.4    -.4


 Table b(m,p)  capacity utilization coefficients

             sulf-a-s  sulf-a-p  nitr-acid  amm-elec  amm-c-gas   ssp-155  can-310  can-335  amm-sulf

 sulf-a-s        1
 sulf-a-p                  1
 nitr-acid                           1
 amm-elec                                       1
 amm-c-gas                                                 1
 ssp                                                                  1
 c-amm-nitr                                                                    1        1
 amm-sulf                                                                                       1

$Stitle prices

 Parameter pv(c)   import prices (cif us$ per ton 1975)   /

 pyrites       17.5
 el-sulfur     55

 urea         150
 can-260       75
 can-310       90
 can-335      100
 amm-sulf      75
 dap          175
 ssp-155       80
 c-250-55     100
 c-300-100    130
                                                          /

 Table pd(i,c)   domestic raw material prices

            limestone  coke-gas  el-aswan  phos-rock    sulf-acid
*              le/ton  le/mncf     le/mwh     le/ton      le/ton

 kafr-el-zt                                      5.0
 abu-zaabal                                      4.0
 helwan           1.2       16                              3
 assiout                                         3.5
 aswan            1.2                 1


 Parameter pmisc(c)   miscellanous material costs   /

$maxcol 17
 electric  .007   le/kwh
 bf-gas    .0075  le/cm
 water     .031   le/cm
 steam    1.25    le/ton
 bags      .28    le/unit
$maxcol 120
                                             /;


  pd(i,cr)$pmisc(cr) = pmisc(cr);

 Display pd;

 Parameter nh3; nh3("ammonia","helwan") = 31;

$Stitle capacity data
$Eject

 Table dcap(i,m) design capacity of plants (t per day)

             sulf-a-s  sulf-a-p  nitr-acid  amm-elec  amm-c-gas   ssp   c-amm-nitr  amm-sulf

 aswan                             800         450                         1100
 helwan                            282                   172                364        24
 kafr-el-zt    200        50                                      600
 assiout       250                                                600
 abu-zaabal    242       227                                      600


 Parameter k(m,i)  initial capacity (1000 tpy); k(m,i) = .33*dcap(i,m);

 Scalars er   exchange rate   / .4 /
         util utilization     / na /;

 Sets  mpos(m,i)     productive units possibilities
       ppos(p,i)     process possibilities
       cpos(c,i)     commodity possibilities
       cposp(c,i)    commodity production possibilities
       cposn(c,i)    commodity consumption possibilities
       cposi(c,i,i)  commodity consumption and production possibilities: interplant
       cposd(c,i)    domestic raw material purchase possibilities
       cposr(c,i)    imported input commidity possibilities;

    mpos (m,i)                = yes$k(m,i);
    ppos (p,i)                = yes$(sum(m$(not mpos(m,i)), b(m,p) ne 0) eq 0) ;
    ppos ("can-310","helwan") = no;
    ppos ("can-335","aswan")  = no;
    cposp(c,i)                = yes$sum(p$ppos(p,i), a(c,p) gt 0) ;
    cposn(c,i)                = yes$sum(p$ppos(p,i), a(c,p) lt 0) ;
    cposi(cs,i,ip)            = cposp(cs,i)*cposn(cs,ip);
    cposd(cr,i)               = yes$(cposn(cr,i)$pd(i,cr));
    cposr(cr,i)               = yes$(cposn(cr,i)$pv(cr));
    cpos(c,i)                 = cposp(c,i) + cposn(c,i) ;

 Display mpos, ppos, cposp, cposn, cpos , cposi, cposd, cposr;

$Stitle equations

 Variables  z(p,i)       process level                              (1000 tpy)
            xf(c,i,j)    domestic shipment activity: final products (1000 tpy)
            xi(c,i,i)    domestic shipment activity: intermediates  (1000 tpy)
            vf(c,j)      imports: final products                    (1000 tpy)
            vr(c,i)      imports: raw materials                     (1000 tpy)
            u(c,i)       domestic raw material purchases               (units)

            psi          discounted total cost                       (1000 le)
            psip         domestic recurrent cost            (1000 le per year)
            psil         transport cost                     (1000 le per year)
            psii         import cost                        (1000 le per year)

 Positive Variables      zl, xf, xi, vf, vr, u

 Equations  obj          objective function                   (1000 le discounted)
            mbd(cq,j)    material balance on demand: nutrient           (1000 tpy)
            mbdb(c,j)    material balance on demand: material           (1000 tpy)
            mb(c,i)      material balance                               (1000 tpy)
            cc(m,i)      capacity constraint                            (1000 tpy)

            ap           accounting: domestic recurrent cost    (1000 le per year)
            al           accounting: transport cost             (1000 le per year)
            ai           accounting: import cost                (1000 le per year);
$Double

 mbd(cq,j)..   sum(cf, alpha(cf,cq)*( sum(i$cposp(cf,i), xf(cf,i,j)) + vf(cf,j)$pv(cf))) =g= cn75(j,cq);

 mbdb(cf,j)$cf75(j,cf)..  sum(i$cposp(cf,i), xf(cf,i,j)) + vf(cf,j)$pv(cf) =g= cf75(j,cf);

 mb(c,i)..  sum(p$ppos(p,i), a(c,p)*z(p,i))
          + sum(ip, xi(c,ip,i)$cposi(c,ip,i) - xi(c,i,ip)$cposi(c,i,ip))
          + vr(c,i)$cposr(c,i) + u(c,i)$cposd(c,i)
          - sum(j$cposp(c,i), xf(c,i,j))$cf(c) =g= 0 ;

 cc(m,i)$mpos(m,i)..  sum(p$ppos(p,i), b(m,p)*z(p,i)) =l= util*k(m,i) ;

 obj.. psi =e= psip + psil + psii ;

 ap.. psip =e= sum((cr,i)$cposd(cr,i), pd(i,cr)*u(cr,i));

 al.. psil =e= sum(cf, sum((i,j)$cposp(cf,i), muf(i,j)*xf(cf,i,j)) + sum(j, mufv(j)*vf(cf,j)))
             + sum((cs,i,ip)$cposi(cs,i,ip), mui(i,ip)*xi(cs,i,ip))
             + sum((cr,i)$cposr(cr,i), mur(i)*vr(cr,i));

 ai.. psii/er  =e= sum((cf,j), pv(cf)*vf(cf,j)) + sum((cr,i)$cposr(cr,i), pv(cr)*vr(cr,i));

$single

 Model stat2  / mbdb, mb, cc, obj, ap, al, ai /
       stat4  / mbd, mb, cc, obj, ap, al, ai / ;

* define scenario for scenario 1 as stated in reference: no interplant shipments and capacity utilization of 85%

 xi.fx(cs,i,ip) = 0;
 util = .85;

 Solve stat2 minimizing psi using lp ;

 Parameters rxf(i,j,c)   domestic shipment activity : final products (1000 tpy)
            tds          total domestic supply : final products      (1000 tpy)
            tif          total import : final product                (1000 tpy)
            tl           transportation load                      (1000 ton_km) ;

   rxf(i,j,cf) = xf.l(cf,i,j) ;
           tds = sum((cf,i,j), xf.l(cf,i,j));
           tif = sum((cf,j), vf.l(cf,j));
   tl("rail")  = sum((cs,i,ip), rail(i,ip)*xi.l(cs,i,ip)) ;
   tl("road")  = sum((cr,i), vr.l(cr,i)*impd(i,"road"))
               + sum((cf,i,j), xf.l(cf,i,j)*road(j,i))
               + sum((cf,j), vf.l(cf,j)*road(j,"import-pts"));
   tl("barge") = sum((cr,i), vr.l(cr,i)*impd(i,"barge")) ;

 Display mbdb.lo, mbdb.m, mb.m, cc.up, cc.m, rxf, tds, tif, vf.l, z.l, vr.l, u.l, tl;


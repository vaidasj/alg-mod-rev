option MIP=convert;
option MIP=convert;
option MIP=convert;
$Title EGYPT - Dynamic Fertilizer Model    (FERTD,SEQ=14)
$STITLE SET DEFINITION
$Ontext

An investment planning model of the Egyptian fertilizer sector.


Choksi, A M, Meeraus, A, and Stoutjesdijk, A, The Planning of Investment
Programs in the Fertilizer Industry. The John Hopkins University Press,
Baltimore and London, 1980.

The GAMS program has been changed slightly from the published version to
incorporate partial reduction of the model in order to reduce execution time.

$Offtext

 Set j    demand regions  / alexandria, behera     , gharbia   , kafr-el-sh, dakahlia, damietta , sharkia
                            ismailia  , suez       , menoufia  , kalubia   , giza    , beni-suef, fayoum
                            minia     , assiout    , new-valley, sohag     , quena   , aswan    /

     i    plant locations / abu-kir, kafr-el-zt, talkha, abu-zaabal, helwan, suez, assiout, aswan /

     m    productive units  /

          sulf-a-s    sulfuric acid: sulfur
          sulf-a-p    sulfuric acid: pyrites
          nitr-acid   nitric acid
          amm-elec    ammonia: water electrolysis
          amm-c-gas   ammonia: coke gas

          amm-n-gas   ammonia: natural gas
          amm-r-gas   ammonia: refinery gas
          phos-acid   phosphoric acid
          c-nitr      calcium nitrate
          c-amm-nitr  calcium ammonium nitrate
          amm-sulf    ammonium sulfate

          urea
          amm-phos    ammonium phosphate
          ssp         single superphosphate
          tsp         triple superphosphate
          nitro-phos  nitrophosphates        /

     me(m) productive units: expansion possibilities / sulf-a-s, amm-n-gas, phos-acid, amm-sulf
                                                       urea    , amm-phos , ssp      , tsp      , nitro-phos /

     p    processes         /

          sulf-a-s    sulfuric acid: sulfur
          sulf-a-p    sulfuric acid: pyrites
          nitr-acid   nitric acid
          amm-elec    ammonia: water electrolysis
          amm-c-gas   ammonia: coke gas

          amm-n-gas   ammonia: natural gas
          amm-r-gas   ammonia: refinery gas
          phos-acid   phosphoric acid
          c-nitr      calcium nitrate
          can-310     calcium ammonium nitrate: 31.0 pct

          can-335     calcium ammonium nitrate: 33.5 pct
          amm-sulf    ammonium sulfate
          urea
          map         monammonium phosphate
          dap         diammonium phosphate

          ssp-155     single superphosphate: 15.5 pct
          tsp-pow     triple superphosphate: powdered
          tsp         triple superphosphate: granular
          nitrophos   nitrophosphate: c-ntr and np-20-20 /

     g    upgrading (conversion) activities  /

          amm-c-n     ammonia:  coke-oven to natural gas  /

     cq   nutrients  /   n  nitrogen,     p2o5  phosphorus  /

     c    commodities  /

          c-nitr      calcium nitrate
          can-260     calcium ammonium nitrate: 26.0 pct
          can-310     calcium ammonium nitrate: 31.0 pct
          can-335     calcium ammonium nitrate: 33.5 pct
          amm-sulf    ammonium sulfate
          urea

          map         monammonium phosphate
          dap         diammonium phosphate
          ssp-155     single superphosphate: 15.5 pct
          tsp-pow     triple superphosphate: powdered
          tsp         triple superphosphate: granular
          np-20-20    nitrophosphate 20-20-0
          c-250-55    compound 25-5.5-0
          c-300-100   compound 30-10-0

          ammonia
          co2
          nitr-acid   nitric acid
          sulf-acid   sulfuric acid
          phos-acid   phosphoric acid

          el-aswan    electricity from aswan dam
          coke-gas    coke-oven gas
          nat-gas     natural gas
          ref-gas     refinery gas
          phos-rock   phosphate rock

          limestone
          el-sulfur   elemental sulfur
          pyrites
          electric    electricity
          bf-gas      blast-furnace gas

          water       cooling water
          steam
          bags
          labor                      /

     cf(c)  final products  / urea, c-nitr, can-310, can-335, amm-sulf, map, dap, ssp-155, tsp-pow, tsp, np-20-20 /

     ci(c)  intermediate products      / ammonia, co2, nitr-acid, sulf-acid, phos-acid /

     cs(c)  intermediates for shipment / ammonia, sulf-acid, phos-acid /

     cr(c)  raw materials / el-aswan, coke-gas, nat-gas, ref-gas, phos-rock, limestone, el-sulfur, pyrites , sulf-acid /

     cd(c)  domestic materials      / electric, bf-gas, water, steam, bags /

     c75(c) fertilizer used in 1975 / urea, can-260, can-310, can-335, amm-sulf, dap, ssp-155, c-250-55, c-300-100 /

     tg     time periods    /  1979-81, 1982-84, 1985-87  /

     q      cost categories / transport    cost                       (mill le per year)
                              d-r-c        domestic recurrent cost    (mill le per year)
                              operating    cost                       (mill le per year)
                              work-cap     working capital cost       (mill le per year)
                              capital-ch   capital charges            (mill le per year)
                              import-raw   import cost: raw materials (mill le per year)
                              import-fp    import cost: final products(mill le per year)
                              export       export revenues            (mill le per year) /

  Alias  (i,ip);

$Stitle consumption and demand data

 Table cf75(j,c75)  fertilizer consumption 1974-75 (1000 tpy)

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


 Table dem80(*,cq)  demand projections in nutrients (1000 tpy)

            n  p2o5

 medium   496   112
 high     542   112


 Parameter eta(tg) urea consumption restriction / 1979-81 = .60
                                                   1982-84 = .75
                                                   1985-87 = .85 /


 Table  alpha(c,cq)  nutrient content

               n       p2o5

 urea         .46
 c-nitr       .155
 can-260      .26
 can-310      .31
 can-335      .335

 amm-sulf     .206
 map          .11       .54
 dap          .18       .46
 ssp-155                .155
 tsp-pow                .46

 tsp                    .46
 np-20-20     .20       .20
 c-250-55     .25       .055
 c-300-100    .30       .10

 Parameters cn75(j,cq)    consumption of nutrients 1974-75 (1000 tpy)
            cn75t(cq)     total nutrient consumption 1974-75 (1000 tpy)
            rdc(j,cq)     regional distribution of consumption
            cinc(cq)      consumption increment
            db(cq,j,tg)   demand in nutrients (1000 tpy)
            midyear(tg)    / 1979-81 = 1980, 1982-84 = 1983, 1985-87 = 1986 / ;

  cn75(j,cq)       = sum(c75, alpha(c75,cq)*cf75(j,c75));
  cn75t(cq)        = sum(j, cn75(j,cq));
  rdc(j,cq)        = cn75(j,cq)/cn75t(cq);
  cinc(cq)         = (dem80("medium",cq) - cn75t(cq))/5;
  db(cq,j,tg)      = rdc(j,cq)*(cn75t(cq) + cinc(cq)*(midyear(tg)-1975));

 Parameters eh(tg)  total export restriction        (1000 tpy)
            eb(tg)  maximum export by product       (1000 tpy);

  eh(tg) = 100;  eb(tg) = 25;

 Display cn75, cn75t, rdc, cinc, db, midyear, eh, eb;

 Parameter dsum demand summary;
 dsum(cq,j,tg)                    = db(cq,j,tg);
 dsum("n","**total**",tg)         = sum(j, dsum("n",j,tg));
 dsum("p2o5","**total**",tg)      = sum(j, dsum("p2o5",j,tg));
 dsum("**total**","**total**",tg) = sum((cq,j), dsum(cq,j,tg));
 Display dsum;

$Stitle transportation data

 Table road(j,i)  road distances (km)

              abu-kir  kafr-el-zt  talkha  abu-zaabal  helwan  suez  assiout  aswan

  alexandria      16        119       187      210       244    362     607    1135
  behera          76         42       120       50       184    288     547    1065
  gharbia        150         20        55       65       122    226     485    1003
  kafr-el-sh     145         20        35      105       162    266     525    1043
  dakahlia       208         58         3      138       152    219     515    1033
  damietta       267        131        66      216       233    286     596    1114
  sharkia        240         78        58       60       110    214     473     991
  ismailia       365        241       146      142       173     89     536    1054
  suez           370        246       298      224       178            541    1059
  menoufia       157         33        90      154       109    213     472     990
  kalubia        190         66        81       97        76    180     439     957
  giza           287        133       146       48         9    169     372     890
  beni-suef      359        248       261      163       105    270     257     775
  fayoum         341        230       243      145        88    252     308     826
  minia          384        372       386      288       230    394     132     650
  assiout        616        504       518      420       362    527             518
  new-valley     815        703       717      619       561    726     199     519
  sohag          715        603       617      519       461    626      99     419
  quena          858        746       760      662       604    769     242     276
  aswan         1134       1022      1036      938       880   1045     518

$Eject

 Table rail(i,ip)  interplant rail distances  (km)

              abu-kir  kafr-el-zt  talkha  abu-zaabal  helwan  suez  assiout  aswan

  kafr-el-zt     128
  talkha         196         58
  abu-zaabal     219         85       138
  helwan         253        142       155       57
  suez           371        246       298      224       178
  assiout        616        504       518      420       362    527
  aswan         1134       1022      1036      938       880   1045     518


 Table ied(i,*) import export distances (kms)

               barge      road     rail-e

 abu-kir          16                   16
 kafr-el-zt      104         6        104
 talkha          199                  199
 abu-zaabal      210        .1        210
 helwan          183                  166
 suez            346        50         10
 assiout         583                  583
 aswan          1087        10       1087


 Parameters muf(i,j)   transport cost (le per ton): final products
            mufv(j)    transport cost (le per ton): imported final products
            mue(i)     transport cost (le per ton): exports
            mui(i,ip)  transport cost (le per ton): interplant shipment
            mur(i)     transport cost (le per ton): imported raw materials ;

   rail(i,ip)  = rail(i,ip) + rail(ip,i);

   muf(i,j)    = ( .5 + .0144*road(j,i)            )$road(j,i);
   mufv(j)     = ( .5 + .0144*min(road(j,"abu-kir"),road(j,"suez")) )$min(road(j,"abu-kir"),road(j,"suez"));
   mue(i)      = ( .5 + .0300*ied(i,"rail-e") )$ied(i,"rail-e");
   mui(i,ip)   = (3.5 + .0300*rail(i,ip)          )$rail(i,ip);
   mur(i)      = (1.0 + .0030*ied(i,"barge")      )$ied(i,"barge")
               + ( .5 + .0144*ied(i,"road" )      )$ied(i,"road ");

 Display road, muf, mufv, mue, mui, mur;

$Stitle Technology Data
$Eject

 Parameter a(c,p)  input-output coefficients

 Table a0(c,p)   input-output coefficients

            sulf-a-s  sulf-a-p  nitr-acid  amm-elec  amm-c-gas  amm-n-gas  amm-r-gas  phos-acid  c-nitr  amm-sulf   urea

  nitr-acid                           1.00                                                          -.66
  phos-acid                                                                                 1.00
  c-nitr                                                                                           1.00
  amm-sulf                                                                                                   1.00
  urea                                                                                                              1.00
  ammonia                           -.292      1.00       1.00      1.00       1.00                          -.26   -.58
  co2                                                               1.00                                            -.58
  sulf-acid      1.00      1.00                                                            -1.80              -.76
  el-aswan                                   -12.00
  coke-gas                                               -2.00
  nat-gas                                                         -33.00
  ref-gas                                                                      -.98
  phos-rock                                                                                -2.35
  limestone                                                                                         -.35
  el-sulfur     -.334
  pyrites                -.826
  electric    -50.00    -75.00    -231.00             -1960.00    -33.00     -50.00     -144.00            -19.00 -75.00
  bf-gas                                               -609.00
  water       -20.00    -60.00       -.60              -700.00    -10.00     -14.00       -4.00            -17.00
  steam                                                  -4.00                                                     -1.50
  bags                                                                                           -22.00    -22.00 -22.00

      +        tsp   can-310  can-335    map    dap  ssp-155  tsp-pow  nitrophos

  nitr-acid             -.71     -.76                                      -.51
  phos-acid   -.74                      -.99   -.87              -.74
  c-nitr                                                                    .57
  tsp         1.00
  can-310               1.00
  can-335                        1.00
  map                                   1.00
  dap                                          1.00
  ssp-155                                               1.00
  tsp-pow                                                        1.00
  np-20-20                                                                  .43
  ammonia               -.20     -.21   -.15   -.23                        -.06
  sulf-acid                                             -.41
  phos-rock   -.35                                      -.62     -.35      -.27
  limestone             -.12     -.04
  electric  -28.00                    -22.00 -22.00   -14.00   -23.00    -52.00
  water               -49.00   -49.00                  -6.00    -2.00    -19.00
  steam       -.10      -.40     -.40   -.10   -.15              -.20      -.30
  bags      -22.00    -23.00   -23.00 -22.00 -22.00   -22.00   -23.00    -23.00

$Eject

 Table b(m,p)  capacity utilization matrix

            sulf-a-s  sulf-a-p  nitr-acid  amm-elec  amm-c-gas  amm-n-gas  amm-r-gas  phos-acid  c-nitr  amm-sulf  urea

 sulf-a-s      1.0
 sulf-a-p                1.0
 nitr-acid                           1.0
 amm-elec                                     1.0
 amm-c-gas                                                1.0
 amm-n-gas                                                           1.0
 amm-r-gas                                                                      1.0
 phos-acid                                                                                 1.0
 c-nitr                                                                                            1.0
 amm-sulf                                                                                                   1.0
 urea                                                                                                               1.0

      +      tsp  can-310  can-335  map  dap  ssp-155  tsp-pow  nitrophos

 c-nitr                                                              .6
 c-amm-nitr          1.0      1.0
 amm-phos                           1.0  1.0
 ssp                                             1.0      1.0
 tsp         1.0
 nitro-phos                                                         1.0


$Stitle prices

 Parameter pv(c)  import price (cif us$ per ton 1975)   /

 pyrites       17.5
 el-sulfur     55

 urea         150
 can-260      100
 can-310      110
 can-335      120
 amm-sulf      75
 map          220
 dap          210
 ssp-155       80
 tsp          150
 np-20-20     150   /


         table pd(i,c)  domestic raw material prices

            limestone  nat-gas  coke-gas  ref-gas  el-aswan  phos-rock  sulf-acid
*              le/ton  le/mscf   le/mncm  le/mncm    le/mwh     le/ton     le/ton

 abu-kir                   .56
 kafr-el-zt                                                        5.0
 talkha           1.2      .56
 abu-zaabal                                                        4.0
 helwan           1.2      .60        16                                       3.0
 suez             1.2      .65                  8                  6.0
 assiout                                                           3.5
 aswan            1.2                                   1


 Parameter pmisc(c)   miscellanous material cost /

$Maxcol 20
  electric    .007    le/kwh
  bf-gas      .0075   le/m3
  water       .031    le/m3
  steam      1.25     le/ton
  bags        .28     le/unit
$Maxcol 120
                                             /

 Scalar    plab    price of labor (le per man year) / 360 /
 Parameter pe(c)   export price (us$ per ton 1975)
           oc(c,p) process operating cost for miscellenous inputs (le per unit level);

  pe(cf)                 = .7*pv(cf);
  a(c,p)$(not cd(c))     = a0(c,p);
  oc(cd,p)               = - pmisc(cd)*a0(cd,p);

 Display pv,pe,a,oc;

$Stitle capacity data
$Eject

 Table dcap(i,m)  design capacities of plants (tons per day)

            sulf-a-s sulf-a-p nitr-acid amm-elec amm-c-gas amm-n-gas amm-r-gas c-nitr c-amm-nitr amm-sulf urea ssp

 abu-kir                                                      1000                                        1500
 kafr-el-zt    200       50                                                                                    600
 talkha                          1050                         1600                        1000            1650
 abu-zaabal    542      227                                                                                    600
 helwan                           282                172                                   364       35
 suez                             572                                    230     758                200
 assiout       250                                                                                             600
 aswan                            800      450                                            1100

*  talkha.ammonia =  400 talkha i + 1200 talkha ii    ???


 Parameter caput(i)  capacity utilization factor     /

 abu-kir    .9  ,  kafr-el-zt     .85 ,  talkha    .9  ,  abu-zaabal  .85
 helwan     .7  ,  suez           .7  ,  assiout   .9  ,  aswan      1.0   /



 Parameter k(m,i)   initial capacity (1000 tpy);


  k(m,i)   = .33*caput(i)*dcap(i,m);
 Display k;

$Stitle investment costs

 Table  inv(m,*)   investment cost

*   fix       fixed cost in mill. us$
*   prop      variable cost in 1000 us$/ton/year

             fix      prop

 amm-sulf    3.2      32.1
 urea       16.7      52.2
 amm-phos    4.5      32.4
 ssp         7.5      25.5

 tsp         7.0      34.2
 nitro-phos  8.0      70.0
 sulf-a-s    8.5      33.0
 amm-n-gas  47.9     103.8
 phos-acid  10.0      57.0


 Parameter omega(m)     fixed-charge portion of investment      (million le per year)
            omegag(g)    fixed-charge for capacity conversion    (million le per year)
            omegal       fixed-charge portion for labor                        (units)
            nu(m)        variable portion of investment      (million le per 1000 tpy)
            nul          variable charge portion for labor        (units per 1000 tpy)
            hb(m)        maximum capacity expansion                         (1000 tpy)
            f(m,g,i)     capacity  conversion                               (1000 tpy)
            sf           site factor;

  sf               = 1.3;
  omega(m)         = 1000*sf*inv(m,"fix");
  omegag("amm-c-n") = 20 * 1000 * sf;
  nu(m)            = sf*inv(m,"prop");
  omegal           = .5;
  nul              = .00125;

  hb(m)  = 600 ;

  f("amm-n-gas","amm-c-n","helwan") =  k("amm-c-gas","helwan");
  f("amm-c-gas","amm-c-n","helwan") = -k("amm-c-gas","helwan");



 Parameters sigma    capital recovery factor
            delta    discount factor
            life     life of productive unit         (years)
            oer      official exchange rate     (le per us$)
            rho      opportunity cost of capital;

  life = 15;  rho = .1; oer = .4;

  sigma    = rho*(1+rho)**life/((1+rho)**life-1);
  delta(tg) = (1+rho)**(1976-midyear(tg))
           + (1+rho)**(1975-midyear(tg))
           + (1+rho)**(1974-midyear(tg));

 Display omega, nu, f, sigma, delta;

 Sets  mpos(m,i)      productive unit possibilities
       ppos(p,i)      process possibilities
       cposp(c,i)     commodity production possibilities
       cposn(c,i)     commodity consumption possibilities
       cposi(c,ip,i)  commodity production and consumption possibilities - interplant
       cposr(c,i)     imported input commodity consumption possibilities
       cpose(c,i)     export commodity possibilities
       cposd(c,i)     domestic commodity purchase possibilities
       fpos(g,i)      upgrading possibilities
       hpos(m,i)      expansion unit possibilities;

 mpos(m,i)    = no; ppos(p,i)   = no; cposp(c,i)   = no; cposn(c,i)   = no; cposi(c,i,ip) = no;
 cposr(c,i)   = no; cpose(c,i)  = no; cposd(c,i)   = no; fpos(g,i)    = no; hpos(m,i)     = no;

 Set t(tg)  time periods  /  1979-81, 1982-84, 1985-87  /
 Alias(t,tp);
 Parameter ts(t,tp) time summation matrix;
 ts(t,tp) = 1$(ord(t) ge ord(tp));
 Display ts;

$Stitle equations

 Variables  z(p,i,t)       process level                                                       (1000 tpy)
            xf(c,i,j,t)    domestic shipment activity: final products                          (1000 tpy)
            xi(c,i,ip,t)   domestic shipment activity: intermediates                           (1000 tpy)
            vf(c,j,t)      imports: final products                                             (1000 tpy)
            vr(c,i,t)      imports: raw materials                                              (1000 tpy)

            e(c,i,t)       exports                                                             (1000 tpy)
            et(t)          total exports in year                                               (1000 tpy)
            u(c,i,t)       domestic raw material purchases                                        (units)
            h(m,i,t)       capacity expansion                                                  (1000 tpy)
            up(g,i,t)      binary variable: upgrading
            y(m,i,t)       binary variable: expansion

            psi            total cost (discounted)                                           (million le)
            psic(q,t)      total cost components (undiscounted)                        (mill le per year)

 Positive Variables z, xf, xi, vf, vr, e, u, h
 Binary   Variables up, y


 Equations  obj          objective function                                     (million le discounted)
            mbd(cq,j,t)  material balance: demand                                            (1000 tpy)
            mbu(j,t)     material balance: urea consumption                                  (1000 tpy)
            mb(c,i,t)    material balance: plants                                            (1000 tpy)

            cc(i,m,t)    capaciy constraint                                                 (1000 tpy)
            mm(i,m,t)    maximum capacity expansion                                         (1000 tpy)
            ex           mutual exclusivity constraint                                         (unity)

            eca(t)       aggregate export constraint                                        (1000 tpy)
            ecmax(t)     export constraint by market share: maximum                         (1000 tpy)
            ecmin(t)     export constraint by market share: minimum                         (1000 tpy)

            ak           accounting: capital cost charges                           (mill le per year)
            ap           accounting: domestic recurrent cost                        (mill le per year)
            ao           accounting: operating cost                                 (mill le per year)
            al           accounting: transport cost                                 (mill le per year)
            am           accounting: working capital                                (mill le per year)
            air          accounting: import cost for raw materials                  (mill le per year)
            aif          accounting: import cost for final products                 (mill le per year)
            ae           accounting: export revenue                                 (mill le per year);

$Double

 mbd(cq,j,t)..  sum(cf, alpha(cf,cq)*( vf(cf,j,t)$pv(cf) + sum(i$cposp(cf,i), xf(cf,i,j,t)) )) =g= db(cq,j,t);

 mbu(j,t)..  alpha("urea","n")*( vf("urea",j,t) + sum(i$cposp("urea",i), xf("urea",i,j,t)) ) =l= eta(t)*db("n",j,t);

 mb(c,i,t).. sum(p$ppos(p,i), a(c,p)*z(p,i,t)) + sum(ip,  xi(c,ip,i,t)$cposi(c,ip,i) - xi(c,i,ip,t)$cposi(c,i,ip))
           + u(c,i,t)$cposd(c,i) + vr(c,i,t)$cposr(c,i) =g= sum(j, xf(c,i,j,t))$cposp(c,i) + e(c,i,t)$cpose(c,i);

 cc(i,m,t)$mpos(m,i).. sum(p$ppos(p,i), b(m,p)*z(p,i,t)) =l= k(m,i) + sum(tp$ts(t,tp), .9*h(m,i,tp)$hpos(m,i)
                                                                                       + sum(g, f(m,g,i)*up(g,i,tp)) );

 mm(i,me,t)$hpos(me,i)..    h(me,i,t) =l= hb(me)*y(me,i,t);

 ex(g,i)$fpos(g,i)..  sum(t, up(g,i,t)) =l= 1;


 eca(t)..      et(t) =e= sum((cf,i)$cpose(cf,i), e(cf,i,t));

**** something fishy
  ecmax(t+1)..     et(t+1) =l= 1.3*et(t);

  ecmin(t+1)..     et(t+1) =g= et(t);

  obj..    psi =e= sum(t, delta(t)*sum(q, psic(q,t)) );

  ak(t)..  psic("capital-ch",t) =e= oer*sum(tp$ts(t,tp), sigma*(
                                               sum((i,me)$hpos(me,i), omega(me)*y(me,i,tp) + nu(me)*h(me,i,tp))
                                             + sum((i,g)$fpos(g,i), omegag(g)*up(g,i,tp)) ) ) / 1000;

  ap(t)..  psic("d-r-c",t) =e= sum((c,i)$cposd(c,i), pd(i,c)*u(c,i,t)) / 1000;

  ao(t)..  psic("operating",t) =e= (sum((cd,p,i)$ppos(p,i), oc(cd,p)*z(p,i,t))
                                   + plab*sum(tp$ts(t,tp), sum((me,i)$hpos(me,i), omegal*y(me,i,tp) + nul*h(me,i,tp)) )
                                     ) / 1000;

  al(t)..  psic("transport",t) =e= (sum(cf, sum((i,j)$cposp(cf,i), muf(i,j)*xf(cf,i,j,t))
                                          + sum(j, mufv(j)*vf(cf,j,t))
                                          + sum(i$cpose(cf,i), mue(i)*e(cf,i,t)) )
                                  + sum((cs,i,ip)$cposi(cs,i,ip), mui(i,ip)*xi(cs,i,ip,t))
                                  + sum((cr,i)$cposr(cr,i), mur(i)*vr(cr,i,t))             ) / 1000;

  am(t)..  psic("work-cap",t) =e= .025*(psic("d-r-c",t) + psic("operating",t) + psic("import-raw",t));

  air(t).. psic("import-raw",t) =e= oer*sum((cr,i)$cposn(cr,i), pv(cr)*vr(cr,i,t)) / 1000;

  aif(t).. psic("import-fp",t) =e= oer*sum((cf,j), pv(cf)*vf(cf,j,t)) / 1000;

  ae(t)..  psic("export",t) =e= - oer*sum((cf,i)$cpose(cf,i), pe(cf)*e(cf,i,t)) / 1000;


$single

 Model model1   base case model /
                mbd, mb, mbu, cc, mm, ex, eca, obj, ak, ap, ao, al, am, air, aif, ae /

       model2   basecase without urea requirments /
                mbd, mb, cc, mm, ex, eca, obj, ak, ap, ao, al, am, air, aif, ae /

       model3   basecase with bounds on exports /
                mbd, mb, mbu, cc, mm, ex, eca, ecmax, ecmin, obj, ak, ap, ao, al, am, air, aif, ae /;



$Ontext
  Scenario Definitions:
  basecase : model1 with: et.up(t) = 100; e.up(cf,i,t) = 25; y.fx("phos-acid","abu-zaabal","1979-81") = 1;
  scenario1: basecase with: y.fx("nitro-phos","suez","1979-81") = 1;
  scenario2: basecase with: z.lo("c-nitr","suez",t) = 150;
  scenario3: model1 with: et.up(t) = +inf; e.up(cf,i,t) = +inf; y.fx(m,i,t) = 0;
  scenario4: model3 with: et(.up("1979-81") = 500; e.up(cf,i,t) = +inf; y.fx("phos-acid","abu-zaabal","1979-81") = 1;
                                                                        y.fx("amm-n-gas","suez","1982-84")       = 1;
                                                                        y.fx("urea","suez","1982-84")            = 1;
                                                                        y.fx("urea","suez","1985-87")            = 1;
  scenario5: model3 with: et.up("1979-81") = 250; y.fx("phos-acid","abu-zaabal","1979-81") = 1;
  scenario6: model1 with: et.up(t) = 100; e.up(cf,i,t) = 25; vf.fx(cf,j,t) = 0;
                          y.fx("phos-acid","abu-zaabal","1979-81") = 1; y.fx("sulf-a-s","abu-zaabal","1982-84")  = 1;
  scenario7: model2 with: et.up(t) = 100; e.up(cf,i,t) = 25; y.fx("phos-acid","abu-zaabal","1979-81") = 1;
$Offtext

$Stitle model reductions and scenarios

* set-up for basecase:
 Set hposx  expansion possibilities /  phos-acid.abu-zaabal / ;

 hpos(me,i) = hposx(me,i);

 mpos(m,i)  = yes$(k(m,i) + sum(g, abs(f(m,g,i)))) + hpos(m,i);
 ppos(p,i)  = yes$(sum(m$(not mpos(m,i)), b(m,p)) eq 0);

 cposp(c,i) = yes$sum(p$ppos(p,i), a(c,p) gt 0);
 cposn(c,i) = yes$sum(p$ppos(p,i), a(c,p) lt 0);
 cposi(cs,i,ip) = yes$(cposp(cs,i)*cposn(cs,ip));
 cposr(cr,i)    = yes$(cposn(cr,i)$pv(cr));
 cposd(cr,i)    = yes$(cposn(cr,i)$pd(i,cr));
 cpose(cf,i)    = yes$(cposp(cf,i)$pe(cf));

 fpos(g,i) = yes$sum(m, f(m,g,i) ne 0);
 Display mpos, ppos, cposp, cposn, cposi, cposr, cposd, cpose, fpos;

 y.fx(me,i,t) = 0;
 y.fx("phos-acid","abu-zaabal","1979-81") = 1;

 e.up(cf,i,t)$cpose(cf,i) = eb(t);
 et.up(t) = eh(t);

 Solve model1 minimizing psi using mip;

* define summary reports:

 Parameter imports, sumxf, sumxi, production, exports;
 imports("final-prod",t)  = sum((cf,j), vf.l(cf,j,t));
 imports("inter-prod",t)  = sum((cr,i), vr.l(cr,i,t));
 sumxf(i,t,cf)  = sum(j, xf.l(cf,i,j,t));
 sumxf(i,t,"total") = sum(cf, sumxf(i,t,cf));
 sumxi(i,t,cs)   = sum(ip, xi.l(cs,i,ip,t));
 sumxi(i,t,"total") = sum(cs, sumxi(i,t,cs));
 production("final-prod",t) = sum((p,i)$(sum(cf, a(cf,p)) eq 1), z.l(p,i,t));
 production("inter-prod",t) = sum((p,i), z.l(p,i,t)) - production("final-prod",t);
 exports("final-prod",t)  = sum((cf,i), e.l(cf,i,t));
 exports("inter-prod",t)  = sum((c,i), e.l(c,i,t)) - exports("final-prod",t);
 Display psic.l,production,imports,exports,sumxf,sumxi;


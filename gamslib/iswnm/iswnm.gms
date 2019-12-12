option LP=convert;
option LP=convert;
option LP=convert;
$Title Indus Surface Water Network Submodule (ISWNM,SEQ=89)
$Stitle Network Nodes and Arc Definition

$Ontext

   This is the surface water network submodel of the integrated
   Indus river basin model.


Duloy, J H, and O'Mara, G T, Issues of Efficiency and Interdependence
in Water Resource Investments: Lessons from the Indus Basin of Pakistan.
Tech. rep., The World Bank, 1984.

$Offtext


 Set n  nodes of the indus river system/
          feroz-b    ferozepur barrage                 - sutlej river
          sulem-b    sulemanki barrage                 - sutlej river
          islam-b    islam barrage                     - sutlej river
          panjnad-b  panjnad barrage                   - panjnad river
          ravi-i     ravi inflow at madhopur           - ravi river
          mr-tail    tail of marrala ravi link cannal  - ravi river
          balloki-b  balloki barrage                   - ravi river
          sidhnai-b  sidhani barrage                   - ravi river
          tp-tail    tail of taunsa panjnad link canal - jhelum+chenab
          marala-b   marrala barrage                   - chenab river
          khanki-b   khanki barrage                    - chenab river
          qadira-b   qadirabad barrage                 - chenab river
          trimmu-b   trimmu barrage                    - chenab river
          mangla-r   mangla reservoir                  - jehlum river
          rasul-b    rasul barrage                     - jhelum river
          cj-tail    tail of chasma jehlum link        - jehlum river
          tarbela-r  tarbela reservoir                 - indus river
          amanda-h   amandara head works               - swat river
          munda-h    munda head works                  - swat river
          warsak-d   warsak reservoir                  - kabul river
          k-s-jct    kabul and swat river jct          - kabul river
          kabul-tail kabul river tail                  - indus river
          kalabagh-r kalabagh reservoir                - indus river
          chasma-r   chasma reservoir                  - indus river
          taunsa-b   taunsa barrage                    - indus river
          mithankot  indus and panjnad river jct       - indus river
          gudu-b     gudu barrage                      - indus river
          sukkur-b   sukkur barrage                    - indus river
          kotri-b    kotri barrage                     - indus river
          a-sea      arabian sea
          a1         diversion point for uj uj link and r.p.c
          a2         div. for brbd link uc link and uc int.
          a3         div. for mr cross link
          a4         mr cross tail and brbd link
          a5         div. for cbd and ud canals
          a6         diversion to lcc feeder
          a7         div. for gugera and jhang canals
          a8         divesion point for maili+l pakpattan canals
          a9         smb link to l-bahawl canal
          a10        diversion point for lj
          /
      c  irrigation canals in the indus river irrigation system/
          ud          upper dipalpur
          cbd         central bari doab canal
          ray         raya canal
          uc          upper chenab canal
          mr          marala ravi canal
          sad         sadiqia canal
          foc         fordwah canal
          pak         upper pakpattan+u-bahawal+qaim+u-mailsi canal
          ld          lower dipalpur canal
          lbd         lower bari doab canal
          jha         jhang canal (lcc)
          gug         gugera branch canal (lcc)
          uj          upper jehlum canal
          lj          lower jehlum canal
          bah         bahawal canal
          mai         lowwer mailsi+ lower pakpattan canal
          sid         sidhnai canal
          hav         haveli canal
          ran         rangpur canal
          pan         panjnad canal
          abb         abbasia canal
          lsw         lower swat canal
          usw         upper swat canal
          war         warsak canal
          kab         kabul river canal
          tha         thal canal
          pah         paharpur canal
          muz         muzffgarh canal
          dgk         dera ghazi khan canal
          p+d         pat plus desert canal
          beg         begari canal
          gho         ghotki canal
          nw          north west canal
          ric         rice canal
          dad         dadu canal
          kw          khairpur west canal
          ke          khairpur east canal
          roh         rohri canal
          nar         nara canal
          kal         kalri canal
          lch         lined channel
          ful         fuleli canal
          pin         pinyari canal/
     i  system inflows /
          swat     swat river at chakdara
          kabul    kabul river at warsak
          indus    indus river at tarbela
          haro     haro river at gariall
          soan     soan river at dhok pathan
          jehlum   jehlum river at mangls
          chenab   chenab river at marrala
          ravi     ravi river below madhopur
          sutlej   sutlej river below ferozpur /

     nc(n,c)  node to canal map/
          sulem-b.   (sad,foc,pak),     a8.         mai
          a9.         bah         ,     panjnad-b. (pan,abb)

          balloki-b. (lbd,ld)     ,     sidhnai-b.  sid

          marala-b.   mr          ,     a2.        (uc,ray)
          a5.        (cbd,ud)     ,     a7.        (jha,gug)
          trimmu-b.  (ran,hav)
          a1.         uj          ,     a10.        lj
          amanda-h.   usw         ,     munda-h.    lsw
          warsak-d.   war         ,     k-s-jct.    kab
          kalabagh-r. tha         ,     chasma-r.   pah
          taunsa-b.  (muz,dgk)    ,     gudu-b.    (p+d,beg,gho)
          sukkur-b.  (nw,ric,dad,kw,ke,roh,nar)
          kotri-b.   (kal,lch,ful,pin)/
             ;
 Alias (n,n1);
 Set nn(n,n1) water flow system node to node /
*--  sutlej ravi system
          sulem-b.        (feroz-b,  balloki-b)
          islam-b.         sulem-b
          a9.             (a8,       islam-b)
          a8.              sidhnai-b
          panjnad-b.      (tp-tail,  islam-b)
*--  ravi chenab system
          ravi-i.          a3
          a3.              marala-b
          a4.             (a3,a2)
          a5.              a4
          a2.              marala-b
          balloki-b.      (ravi-i,   a2,        a6)
          a6.              qadira-b
          a7.             (a6,       khanki-b)
          sidhnai-b.      (trimmu-b, balloki-b)
*--  chenab jehlum system
          khanki-b.       (a1,       marala-b)
          qadira-b.       (rasul-b,  khanki-b)
          trimmu-b.       (qadira-b, cj-tail)
          tp-tail.        (trimmu-b, sidhnai-b)
          a1.              mangla-r
          rasul-b.         mangla-r
          a10.            (rasul-b,  a1)
          cj-tail.        (rasul-b,  chasma-r)
*--  kabul swat system
          munda-h.         amanda-h
          k-s-jct.        (munda-h,  warsak-d)
*--  indus river
          kabul-tail.     (k-s-jct,  tarbela-r)
          kalabagh-r.      kabul-tail
          chasma-r.        kalabagh-r
          taunsa-b.        chasma-r
          mithankot.      (panjnad-b,taunsa-b)
          gudu-b.          mithankot
          sukkur-b.        gudu-b
          kotri-b.         sukkur-b
          a-sea.           kotri-b /

     ni(n,i) node to rim station inflow map /
          amanda-h.    swat    ,  warsak-d.    kabul,
          tarbela-r.   indus   ,  kabul-tail.  haro
          kalabagh-r.  soan    ,  mangla-r.    jehlum
          marala-b.    chenab  ,  ravi-i.      ravi
          feroz-b.     sutlej  /

     e    / pex  pan evaporation
            hcx  height of water in link canal from sea(feet)
            hwr  height of groundwater from sea (feet)/

     m        months /jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec/
     s        seasons / rabi,kharif /
     sm(s,m)  season to months mapping
                  /rabi.(jan,feb,mar,oct,nov,dec)
                   kharif.(apr,may,jun,jul,aug,sep)/
     nb(n)    ;
    nb(n) = yes; nb("a-sea")=no;

$Stitle flow capacities

 Parameter ccap(c)  canal capacity at the canal head (maf)/
           ud    .131,   cbd   .163,   ray   .110,   uc    .506
           mr    .166,   sad   .332,   foc   .204,   pak   .478
           ld    .244,   lbd   .518,   jha   .410,   gug   .433
           uj    .345,   lj    .464,   bah   .346,   mai   .362
           sid   .268,   hav   .068,   ran   .176,   pan   .671
           abb   .080,   usw   .117,   lsw   .060,   war   .044
           kab   .027,   tha   .577,   pah   .037,   muz   .495
           dgk   .529,   p+d   .799,   beg  1.155,   gho   .648
           nw    .566,   ric   .829,   dad   .319,   kw    .157
           ke    .207,   roh   .981,   nar   .873,   kal   .546
           lch   .205,   ful   .894,   pin   .831/

    ncap(n,n1) node to node transfer capacity (maf)/
         chasma-r.  cj-tail   1.307,     taunsa-b.  tp-tail    .724

         mangla-r.  a1         .685,      a1.        a10        .199
         rasul-b.   a10        .328,      a1.        khanki-b   .422
         rasul-b.   qadira-b  1.232,

         marala-b.  a3         .985,      a3.        a4         .199
         a3.        ravi-i     .938,      marala-b.  a2         .995
         a2.        balloki-b  .698,      a2.        a4         .310
         a4.        a5         .310

         khanki-b.  a7         .499,      qadira-b.  a6        1.146
         a6.        a7         .270,      a6.        balloki-b  .808

         balloki-b. sulem-b   1.172,      trimmu-b.  sidhnai-b 1.03
         sidhnai-b. a8         .662,      a8.        a9         .640
         islam-b.   a9         .299 /
           ;

  Display n,c,nc,nn, ni;
  Display ccap, ncap ;

$Stitle loss coefficient calculations for link canals


*- following calculation are to compute loss coefficients coeffl(n1,n,m)
*  all the data needed for these calculations is given below except
*  link canal capacity is from above
*

 Table madjust(n1,n,m) monthly adjustment factor for operational losses

                       jan feb mar apr may jun jul aug sep oct nov dec
chasma-r.cj-tail       4   4   4   4   5   6   6   6   5   4   4   4
taunsa-b.tp-tail       4   4   4   4   5   6   6   6   5   4   4   4
mangla-r.a1            4   4   4   4   5   6   6   6   5   4   4   4
a1.khanki-b            4   4   4   4   5   6   6   6   5   4   4   4
rasul-b.qadira-b       4   4   4   4   5   6   6   6   5   4   4   4
marala-b.a3            4   4   4   4   5   6   6   6   5   4   4   4
a3.ravi-i              4   4   4   4   5   6   6   6   5   4   4   4
marala-b.a2            4   4   4   4   5   6   6   6   5   4   4   4
a2.balloki-b           4   4   4   4   5   6   6   6   5   4   4   4
a3.a4                  4   4   4   4   5   6   6   6   5   4   4   4
a2.a4                  4   4   4   4   5   6   6   6   5   4   4   4
a4.a5                  4   4   4   4   5   6   6   6   5   4   4   4
khanki-b.a7            4   4   4   4   5   6   6   6   5   4   4   4
qadira-b.a6            4   4   4   4   5   6   6   6   5   4   4   4
a6.balloki-b           4   4   4   4   5   6   6   6   5   4   4   4
a6.a7                  4   4   4   4   5   6   6   6   5   4   4   4
balloki-b.sulem-b      4   4   4   4   5   6   6   6   5   4   4   4
trimmu-b.sidhnai-b     4   4   4   4   5   6   6   6   5   4   4   4
sidhnai-b.a8           2   2   2   2   3   3   3   3   3   2   2   2
a8.a9                  2   2   2   2   3   3   3   3   3   2   2   2
rasul-b.a10            4   4   4   4   5   6   6   6   5   4   4   4
a1.a10                 4   4   4   4   5   6   6   6   5   4   4   4

 Table linkpar(e,n1,n,m) evaporation(ft) height of canal and gw(ft)

                             jan     feb     mar     apr     may    jun
 pex.chasma-r.cj-tail       0.260   0.331   0.517   0.760   1.057   1.143
 pex.taunsa-b.tp-tail       0.260   0.331   0.517   0.760   1.057   1.143
 pex.mangla-r.a1            0.240   0.306   0.531   0.752   0.973   1.018
 pex.a1.khanki-b            0.240   0.306   0.531   0.752   0.973   1.018
 pex.rasul-b.qadira-b       0.240   0.306   0.531   0.752   0.973   1.018
 pex.marala-b.a3            0.208   0.297   0.517   0.762   0.957   0.998
 pex.a3.ravi-i              0.208   0.297   0.517   0.762   0.957   0.998
 pex.marala-b.a2            0.208   0.297   0.517   0.762   0.957   0.998
 pex.a2.balloki-b           0.208   0.297   0.517   0.762   0.957   0.998
 pex.a3.a4                  0.208   0.297   0.517   0.762   0.957   0.998
 pex.a2.a4                  0.208   0.297   0.517   0.762   0.957   0.998
 pex.a4.a5                  0.243   0.313   0.565   0.785   0.975   1.048
 pex.khanki-b.a7            0.208   0.297   0.517   0.762   0.957   0.998
 pex.qadira-b.a6            0.208   0.297   0.517   0.762   0.957   0.998
 pex.a6.balloki-b           0.208   0.297   0.517   0.762   0.957   0.998
 pex.a6.a7                  0.208   0.297   0.517   0.762   0.957   0.998
 pex.balloki-b.sulem-b      0.243   0.313   0.565   0.785   0.975   1.048
 pex.trimmu-b.sidhnai-b     0.214   0.310   0.526   0.769   0.964   1.008
 pex.sidhnai-b.a8           0.260   0.331   0.583   0.813   1.002   1.051
 pex.a8.a9                  0.260   0.331   0.583   0.813   1.002   1.051
 pex.rasul-b.a10            0.240   0.306   0.531   0.752   0.973   1.018
 pex.a1.a10                 0.240   0.306   0.531   0.752   0.973   1.018

 hcx.chasma-r.cj-tail      648.32  650.13  650.60  651.31  651.73  652.01
 hcx.taunsa-b.tp-tail      409.40  410.55  410.85  411.29  411.56  411.73
 hcx.mangla-r.a1           630.16  630.54  630.41  630.93  631.85  631.94
 hcx.a1.khanki-b           630.16  630.54  630.41  630.93  631.85  631.94
 hcx.rasul-b.qadira-b      630.16  630.54  630.41  630.93  631.85  631.94
 hcx.marala-b.a3           669.05  669.07  669.34  670.22  671.23  672.12
 hcx.a3.ravi-i             669.05  669.07  669.34  670.22  671.23  672.12
 hcx.marala-b.a2           669.05  669.07  669.34  670.22  671.23  672.12
 hcx.a2.balloki-b          669.05  669.07  669.34  670.22  671.23  672.12
 hcx.a3.a4                 669.05  669.07  669.34  670.22  671.23  672.12
 hcx.a2.a4                 669.05  669.07  669.34  670.22  671.23  672.12
 hcx.a4.a5                 628.69  629.09  628.92  629.72  631.18  631.95
 hcx.khanki-b.a7           669.05  669.07  669.34  670.22  671.23  672.12
 hcx.qadira-b.a6           669.05  669.07  669.34  670.22  671.23  672.12
 hcx.a6.balloki-b          669.05  669.07  669.34  670.22  671.23  672.12
 hcx.a6.a7                 669.05  669.07  669.34  670.22  671.23  672.12
 hcx.balloki-b.sulem-b     628.69  629.09  628.92  629.72  631.18  631.95
 hcx.trimmu-b.sidhnai-b    540.08  540.94  541.66  541.67  541.95  542.23
 hcx.sidhnai-b.a8          454.64  455.00  455.55  455.68  456.00  456.57
 hcx.a8.a9                 454.64  455.00  455.55  455.68  456.00  456.57
 hcx.rasul-b.a10           630.16  630.54  630.41  630.93  631.85  631.94
 hcx.a1.a10                630.16  630.54  630.41  630.93  631.85  631.94

 hwr.chasma-r.cj-tail       640.0   640.0   640.0   640.0   640.0   640.0
 hwr.taunsa-b.tp-tail       403.0   403.0   403.0   403.0   403.0   403.0
 hwr.mangla-r.a1            620.0   620.0   620.0   620.0   620.0   620.0
 hwr.a1.khanki-b            620.0   620.0   620.0   620.0   620.0   620.0
 hwr.rasul-b.qadira-b       620.0   620.0   620.0   620.0   620.0   620.0
 hwr.marala-b.a3            655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a3.ravi-i              655.0   655.0   655.0   655.0   655.0   655.0
 hwr.marala-b.a2            655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a2.balloki-b           655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a3.a4                  655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a2.a4                  655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a4.a5                  613.0   613.0   613.0   613.0   613.0   613.0
 hwr.khanki-b.a7            655.0   655.0   655.0   655.0   655.0   655.0
 hwr.qadira-b.a6            655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a6.balloki-b           655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a6.a7                  655.0   655.0   655.0   655.0   655.0   655.0
 hwr.balloki-b.sulem-b      613.0   613.0   613.0   613.0   613.0   613.0
 hwr.trimmu-b.sidhnai-b     523.0   523.0   523.0   523.0   523.0   523.0
 hwr.sidhnai-b.a8           435.0   435.0   435.0   435.0   435.0   435.0
 hwr.a8.a9                  435.0   435.0   435.0   435.0   435.0   435.0
 hwr.rasul-b.a10            620.0   620.0   620.0   620.0   620.0   620.0
 hwr.a1.a10                 620.0   620.0   620.0   620.0   620.0   620.0


   +                         jul     aug     sep     oct     nov    dec
 pex.chasma-r.cj-tail       1.057   0.899   0.721   0.631   0.402   0.245
 pex.taunsa-b.tp-tail       1.057   0.899   0.721   0.631   0.402   0.245
 pex.mangla-r.a1            0.894   0.793   0.717   0.583   0.354   0.232
 pex.a1.khanki-b            0.894   0.793   0.717   0.583   0.354   0.232
 pex.rasul-b.qadira-b       0.894   0.793   0.717   0.583   0.354   0.232
 pex.marala-b.a3            0.835   0.745   0.679   0.533   0.329   0.217
 pex.a3.ravi-i              0.835   0.745   0.679   0.533   0.329   0.217
 pex.marala-b.a2            0.835   0.745   0.679   0.533   0.329   0.217
 pex.a2.balloki-b           0.835   0.745   0.679   0.533   0.329   0.217
 pex.a3.a4                  0.835   0.745   0.679   0.533   0.329   0.217
 pex.a2.a4                  0.835   0.745   0.679   0.533   0.329   0.217
 pex.a4.a5                  0.934   0.843   0.750   0.579   0.364   0.264
 pex.khanki-b.a7            0.835   0.745   0.679   0.533   0.329   0.217
 pex.qadira-b.a6            0.835   0.745   0.679   0.533   0.329   0.217
 pex.a6.balloki-b           0.835   0.745   0.679   0.533   0.329   0.217
 pex.a6.a7                  0.835   0.745   0.679   0.533   0.329   0.217
 pex.balloki-b.sulem-b      0.934   0.843   0.750   0.579   0.364   0.264
 pex.trimmu-b.sidhnai-b     0.826   0.741   0.683   0.554   0.326   0.226
 pex.sidhnai-b.a8           0.952   0.898   0.762   0.604   0.385   0.273
 pex.a8.a9                  0.952   0.898   0.762   0.604   0.385   0.273
 pex.rasul-b.a10            0.894   0.793   0.717   0.583   0.354   0.232
 pex.a1.a10                 0.894   0.793   0.717   0.583   0.354   0.232

 hcx.chasma-r.cj-tail      652.33  651.92  651.79  652.06  651.75  649.83
 hcx.taunsa-b.tp-tail      411.94  411.67  411.59  411.76  411.57  410.36
 hcx.mangla-r.a1           632.27  632.12  632.02  631.25  630.76  630.69
 hcx.a1.khanki-b           632.27  632.12  632.02  631.25  630.76  630.69
 hcx.rasul-b.qadira-b      632.27  632.12  632.02  631.25  630.76  630.69
 hcx.marala-b.a3           671.97  671.95  671.74  669.81  668.93  668.80
 hcx.a3.ravi-i             671.97  671.95  671.74  669.81  668.93  668.80
 hcx.marala-b.a2           671.97  671.95  671.74  669.81  668.93  668.80
 hcx.a2.balloki-b          671.97  671.95  671.74  669.81  668.93  668.80
 hcx.a3.a4                 671.97  671.95  671.74  669.81  668.93  668.80
 hcx.a2.a4                 671.97  671.95  671.74  669.81  668.93  668.80
 hcx.a4.a5                 632.10  631.88  631.92  630.60  628.97  628.69
 hcx.khanki-b.a7           671.97  671.95  671.74  669.81  668.93  668.80
 hcx.qadira-b.a6           671.97  671.95  671.74  669.81  668.93  668.80
 hcx.a6.balloki-b          671.97  671.95  671.74  669.81  668.93  668.80
 hcx.a6.a7                 671.97  671.95  671.74  669.81  668.93  668.80
 hcx.balloki-b.sulem-b     632.10  631.88  631.92  630.60  628.97  628.69
 hcx.trimmu-b.sidhnai-b    542.01  541.75  542.06  541.88  541.61  541.23
 hcx.sidhnai-b.a8          457.19  457.13  457.07  456.22  455.45  454.81
 hcx.a8.a9                 457.19  457.13  457.07  456.22  455.45  454.81
 hcx.rasul-b.a10           632.27  632.12  632.02  631.25  630.76  630.69
 hcx.a1.a10                632.27  632.12  632.02  631.25  630.76  630.69

 hwr.chasma-r.cj-tail       640.0   640.0   640.0   640.0   640.0   640.0
 hwr.taunsa-b.tp-tail       403.0   403.0   403.0   403.0   403.0   403.0
 hwr.mangla-r.a1            620.0   620.0   620.0   620.0   620.0   620.0
 hwr.a1.khanki-b            620.0   620.0   620.0   620.0   620.0   620.0
 hwr.rasul-b.qadira-b       620.0   620.0   620.0   620.0   620.0   620.0
 hwr.marala-b.a3            655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a3.ravi-i              655.0   655.0   655.0   655.0   655.0   655.0
 hwr.marala-b.a2            655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a2.balloki-b           655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a3.a4                  655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a2.a4                  655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a4.a5                  613.0   613.0   613.0   613.0   613.0   613.0
 hwr.khanki-b.a7            655.0   655.0   655.0   655.0   655.0   655.0
 hwr.qadira-b.a6            655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a6.balloki-b           655.0   655.0   655.0   655.0   655.0   655.0
 hwr.a6.a7                  655.0   655.0   655.0   655.0   655.0   655.0
 hwr.balloki-b.sulem-b      613.0   613.0   613.0   613.0   613.0   613.0
 hwr.trimmu-b.sidhnai-b     523.0   523.0   523.0   523.0   523.0   523.0
 hwr.sidhnai-b.a8           435.0   435.0   435.0   435.0   435.0   435.0
 hwr.a8.a9                  435.0   435.0   435.0   435.0   435.0   435.0
 hwr.rasul-b.a10            620.0   620.0   620.0   620.0   620.0   620.0
 hwr.a1.a10                 620.0   620.0   620.0   620.0   620.0   620.0

 Set e1 /length, width /

 Table lw(n1,n,e1) length(miles) and width( feet) of link canals

                     length     width
 chasma-r.cj-tail       56       362
 taunsa-b.tp-tail       39       190
 mangla-r.a1            44       180
 a1.khanki-b            36       120
 rasul-b.qadira-b       27       350
 marala-b.a3            56.8     250
 a3.ravi-i               4       250
 marala-b.a2            23       250
 a2.balloki-b           68       150
 a3.a4                   4        50
 a2.a4                  35.2      90
 a4.a5                  75.6      90
 khanki-b.a7            41.6     120
 qadira-b.a6            14       320
 a6.balloki-b           55       160
 a6.a7                  18        90
 balloki-b.sulem-b      47       325
 trimmu-b.sidhnai-b     41       253
 sidhnai-b.a8           39       140
 a8.a9                  26        90
 rasul-b.a10            12       100
 a1.a10                 15        50

 Parameter caf    conversion factor from cfs to acre feet per month
           cmft   conversion from mile-feet to acre-feet
           per    permeability in cfs per square feet
           philc  seepage proportionality contant
           coeffl node to node transfer efficiency for link canals
           ;
*  note : canal mile = 5000 feet
 caf = 3600*24*30/43560 ;  cmft = 5000/43560 ;
 per = 2e-5 ;

 Set g / 1,2,3,4,5,6/

 Table function(*,g)  function of canal width

                        1    2      3      4       5      6
         input          0    10    30     100     300     500
         output         0   .36    .67    .90    1.30    1.90

     Parameter step  grid point for function
               ftn   function value
               ftna  interpolated function output
               ftni  function input
               ftno  function output
               ;
 ftni(g) = function("input",g);  ftno(g) = function("output",g);
 step(n1,n,g) = (ftni(g) le lw(n1,n,"width")) and
                (ftni(g+1) gt lw(n1,n,"width") );
 ftna(n1,n,g) = (ftno(g) +(lw(n1,n,"width")-ftni(g))*(ftno(g+1)-
                 ftno(g))/(ftni(g+1)-ftni(g)))$step(n1,n,g);
 ftn(n1,n) = sum(g, ftna(n1,n,g))  ;

 philc(n1,n)  = lw(n1,n,"length")*5000*ftn(n1,n)*per*caf;

 coeffl(n1,n,m)$(ncap(n1,n) ne 0) =1-(lw(n1,n,"length")*lw(n1,n,"width")
             *cmft*linkpar("pex",n1,n,m) + philc(n1,n)*madjust(n1,n,m)*(
               linkpar("hcx",n1,n,m)-linkpar("hwr",n1,n,m)))/
               ncap(n1,n)/1000000;
 Display coeffl ;
*-- link canal loss calculations finished

$Stitle runoff and seepage

 Table seepage(n1,n,m) seepage from river reaches(000 acre feet)

                         jan     feb     mar     apr     may     jun
sukkur-b.kotri-b         2.0
gudu-b.sukkur-b        -11.0   -10.5     2.0     2.0
taunsa-b.mithankot      -6.3    -7.5     3.2     1.6
tp-tail.panjnad-b      -14.3   -16.6     0.8     0.4
kalabagh-r.chasma-r    -39.8   -36.0     0.2     0.2
chasma-r.taunsa-b     -154.2  -159.0     3.8     0.8
sidhnai-b.tp-tail      -16.5   -17.4
trimmu-b.tp-tail                -0.6
panjnad-b.mithankot      1.0     1.0     1.0     1.0
islam-b.panjnad-b
sulem-b.islam-b       -127.0  -127.0
balloki-b.sidhnai-b   -120.0  -120.0
ravi-i.balloki-b
qadira-b.trimmu-b       -1.5    -2.2    -0.4    -0.9    -0.9     1.1
khanki-b.qadira-b       -1.2    -1.2            -0.4    -0.4     1.2
marala-b.khanki-b                3.0            -1.0    -1.0     3.0
rasul-b.cj-tail                 -0.9    -0.4    -0.4    -0.4    -0.4
cj-tail.trimmu-b                -0.1    -0.2    -0.2    -0.2    -0.2
mangla-r.rasul-b        -0.3    -0.3            -0.1    -0.1     0.3
amanda-h.munda-h       -54.0   -54.0
munda-h.k-s-jct        -41.0   -41.0
warsak-d.k-s-jct       -18.0   -18.0
k-s-jct.kabul-tail      -7.0    -7.0

  +                      jul     aug     sep     oct     nov     dec
sukkur-b.kotri-b                 9.0     3.0    16.0     7.0     1.0
gudu-b.sukkur-b                  8.0    14.0    18.0    -8.0    -9.0
taunsa-b.mithankot      -0.6     3.2    13.8    24.4    -2.8    -5.3
tp-tail.panjnad-b       -1.4     0.8     0.3     5.6   -16.2   -16.4
kalabagh-r.chasma-r              0.1     2.2     3.2   -35.0   -35.6
chasma-r.taunsa-b                2.9    10.8    16.8  -154.0  -157.4
sidhnai-b.tp-tail       -1.8                           -16.5   -16.5
trimmu-b.tp-tail        -1.2
panjnad-b.mithankot              2.0     4.0     7.0     4.0     2.0
islam-b.panjnad-b                8.0
sulem-b.islam-b                 12.0                  -127.0  -127.0
balloki-b.sidhnai-b              5.0                  -120.0  -120.0
ravi-i.balloki-b                 5.0
qadira-b.trimmu-b       -6.1     1.0     6.1     5.1            -0.7
khanki-b.qadira-b       -3.7     0.8     0.4     0.8    -0.6    -0.6
marala-b.khanki-b       -9.0     2.0     5.0     2.0
rasul-b.cj-tail         -0.9             1.3     4.7     0.9
cj-tail.trimmu-b        -0.4             0.6     2.2     0.4
mangla-r.rasul-b        -0.9     0.2     1.0     2.0    -1.5    -1.5
amanda-h.munda-h                                       -54.0   -54.0
munda-h.k-s-jct                                        -41.0   -41.0
warsak-d.k-s-jct                                       -18.0   -18.0
k-s-jct.kabul-tail                                      -7.0    -7.0

$Eject

 Table runoff(n,m) rainfall runoff to nodes (000 af)

                 jan     feb     mar     apr     may     jun
 chasma-r        4.2     4.5     5.1     3.5     2.6     5.4
 taunsa-b       22.8    28.4    36.5    25.8    17.5    30.4
 gudu-b          9.1    10.4    11.0     7.4     6.5    10.6
 rasul-b         2.2     2.2     2.3     1.6     1.3     2.8
 trimmu-b       36.5    36.2    36.5    26.0    22.5    53.9
 panjnad-b      10.6    12.3    14.7     9.9     8.4    14.0
 khanki-b        6.5     6.2     6.0     4.2     3.8     9.3
 qadira-b        6.5     6.2     6.0     4.2     3.8     9.3
 balloki-b      23.3    21.5    20.5    14.6    14.0    35.9
 sidhnai-b      15.7    16.1    16.4    12.2    11.5    26.5
 sulem-b         8.9     6.0     7.7     5.5     5.2    13.7
 islam-b        13.7    13.5    13.9     9.6     8.4    20.0
 tp-tail         9.0     9.5     9.4     6.7     7.5    13.4
 cj-tail        22.7    22.4    24.2    16.6    13.2    28.3
 kabul-tail     30.7    32.7    52.1    37.6    16.4     6.6

   +             jul     aug     sep     oct     nov     dec
 chasma-r       19.3    19.5     7.0      .8      .7     1.8
 taunsa-b      111.6   102.0    34.6     5.1     5.5    11.4
 gudu-b         55.5    52.3     9.3     1.0     3.1     5.8
 rasul-b         9.8    10.4     3.7      .4      .3      .9
 trimmu-b      170.4   191.0    71.4     7.2     5.1    15.5
 panjnad-b      86.4    70.2    12.8     1.6     3.7     6.2
 khanki-b       29.9    33.5    12.6     1.2      .8     2.6
 qadira-b       29.9    33.5    12.6     1.2      .8     2.6
 balloki-b     113.0   126.9    48.3     4.6     3.1     9.8
 sidhnai-b      94.4    95.5    34.1     3.4     3.5     8.4
 sulem-b        52.1    47.3    17.8     1.9     2.6     4.2
 islam-b        93.4    80.7    24.2     2.5     3.2     6.6
 tp-tail        49.1    48.6    16.9     2.0     1.5     5.4
 cj-tail       100.7   105.3    38.0     4.4     3.2     9.1
 kabul-tail     26.9    43.3    17.3     4.9     6.6    14.3

$Stitle rim station inflows and tributories

 Table inflow(i,m) system inflows measured atthe rim stations (maf)

               jan     feb     mar     apr     may     jun
 swat         0.081   0.078   0.124   0.329   0.588   0.760
 kabul        0.395   0.297   0.297   0.862   2.171   3.038
 indus        0.979   0.954   1.183   1.618   2.716   8.227
 haro         0.021   0.023   0.033   0.030   0.016   0.041
 soan         0.020   0.025   0.035   0.027   0.012   0.032
 jehlum       0.450   0.543   1.213   2.037   2.921   3.990
 chenab       0.419   0.607   1.096   1.732   2.049   2.813
 ravi          .131    .129    .168    .069    .057    .149
 sutlej        .0      .021    .111    .190    .360    .375

    +          jul     aug     sep     oct     nov     dec
 swat         0.908   0.850   0.518   0.226   0.128   0.103
 kabul        2.928   2.413   1.576   0.820   0.524   0.458
 indus       13.540  13.039   9.306   4.518   1.837   1.206
 haro         0.089   0.142   0.128   0.058   0.027   0.020
 soan         0.164   0.404   0.293   0.033   0.013   0.016
 jehlum       4.039   2.898   1.938   1.255   0.782   0.620
 chenab       4.610   5.286   3.492   1.284   0.400   0.343
 ravi          .526   2.051   1.994    .510    .214    .154
 sutlej        .340   1.535   2.63    1.348    .028    .0

 Table trib(n1,n,m) tributory inflows (maf)

                         jan     feb     mar     apr     may     jun
 marala-b.khanki-b     0.007   0.006   0.007   0.050   0.141   0.731
 mangla-r.rasul-b                              0.120   0.180   0.150
 balloki-b.sidhnai-b   0.005   0.007   0.006           0.001   0.009
 amanda-h.munda-h      0.115   0.105   0.249   0.278   0.418   0.596
 munda-h.k-s-jct       0.004   0.003   0.009   0.014   0.011   0.006
 warsak-d.k-s-jct      0.032   0.029   0.059   0.113   0.093   0.054
 tarbela-r.kalabagh-r  0.064   0.077   0.121   0.073   0.067   0.079

    +                   jul     aug     sep     oct     nov     dec
 marala-b.khanki-b     0.691   0.859   0.409   0.017   0.007   0.008
 mangla-r.rasul-b      0.170   0.320   0.210   0.060
 balloki-b.sidhnai-b   0.096   0.206   0.040   0.002   0.003   0.009
 amanda-h.munda-h      0.687   0.247   0.103   0.105   0.114   0.232
 munda-h.k-s-jct       0.007   0.006   0.006   0.004   0.004   0.004
 warsak-d.k-s-jct      0.063   0.051   0.046   0.036   0.032   0.033
 tarbela-r.kalabagh-r  0.379   0.740   0.190   0.080   0.045   0.069

$Stitle reservoir chracteristics

 Parameter  rcap(n)  live capacity of reservoirs (maf)/
                     tarbela-r   9.093
                     mangla-r    5.251
                     chasma-r    0.500 /
           ircont(n) initial reservoir contenst (maf)/
                     tarbela-r       9.093
                     mangla-r        5.251
                     chasma-r        0.500 /

 Table rulelo(n,m)  lower rule curve(ratio of reservoir contents to capacity)

            jan feb mar apr may jun jul aug sep oct nov dec
 tarbela-r   43  30  14   4   0  10  46 100 100  64  59  53
 chasma-r     0   0   0   0   0   0   0   0   0   0   0   0
 mangla-r    16   6   0   7  21  48  74  95  83  55  35  24

 Table ruleup(n,m) upper rule curve

                 jan feb mar apr may jun jul aug sep oct nov dec
 tarbela-r        69  47  37  26  13  48  73 100 100 100  87  77
 chasma-r        100 100 100 100 100 100 100 100 100 100 100 100
 mangla-r         39  28  19  31  42  59  87 100 100  90  68  49

 Table  revapl(n,m)  evaporation losses from reservoirs in 000 af

             jan feb mar apr may jun   jul   aug sep oct nov dec
 tarbela-r    1   5   7   9   16  28    10     1  12  29  12   5
 chasma-r     3   3   1                  6     3   7  15   6   3
 mangla-r     1   5   4   5   12  17  -1.9  -2.5   4  22  10  50

$Stitle report on the input data

   Parameter rep1
             rep2
               ;
 rep1(i,m) = inflow(i,m);  rep1(i,s)=sum(m$sm(s,m), inflow(i,m));
 rep1(i,"annual") = sum(m, inflow(i,m) );
 rep1("total",m) = sum(i, rep1(i,m));
 rep1("total",s) = sum(i, rep1(i,s));
 rep1("total","annual") = sum(s, rep1("total", s)) ;
 display " system inflows at rim stations maf ", rep1;
 rep1(i,m) = 0; rep1(i,s) = 0; rep1(i,"annual")=0;

 rep1(n,m) = runoff(n,m);  rep1(n,s)=sum(m$sm(s,m), runoff(n,m));
 rep1(n,"annual") = sum(m, runoff(n,m)) ;
 rep1("total",m) = sum(n, rep1(n,m));
 rep1("total",s) = sum(n, rep1(n,s));
 rep1("total","annual") = sum(s, rep1("total", s)) ;
 display " runoff to nodes from rainfall 000 af", rep1;
 rep1(n,m) = 0; rep1(n,s) = 0; rep1(n,"annual")=0;
*
 rep2(n,n1,m)=trib(n,n1,m); rep2(n,n1,s) = sum(m$sm(s,m), trib(n,n1,m));
 rep2(n,n1,"annual") = sum(s, rep2(n,n1,s) );
 display " tributory inflow in maf", rep2;
 rep2(n,n1,m) = 0; rep2(n,n1,s) = 0; rep2(n,n1,"annual")=0;
 rep2(n,n1,m)=seepage(n,n1,m);
 rep2(n,n1,s)=sum(m$sm(s,m), seepage(n,n1,m));
 rep2(n,n1,"annual") = sum(s, rep2(n,n1,s) );
 display " seepage from/to river reaches 000 af", rep2;
 rep2(n,n1,m) = 0; rep2(n,n1,s) = 0; rep2(n,n1,"annual")=0;

$Stitle model definition

 Positive Variables
           rcont(n,m)    end of the month reservoir contents (maf)
           canaldiv(c,m) monthly diversion to canal         (maf)
           f(n,n1,m)     flow to node n from node n1        (maf)
  variable vol           total reservoir volumne

 Equations nbal(n,m)   water balance at a node (maf)
           defvol      ;

 defvol.. vol =e= sum((n,m)$rcap(n), rcont(n,m));
    ;
 nbal(n,m)$nb(n)..
              sum(i$ni(n,i), inflow(i,m)) + runoff(n,m)/1000 +
              sum(n1, trib(n,n1,m)) +  sum(n1$nn(n,n1),
              f(n,n1,m)*coeffl(n1,n,m)$coeffl(n1,n,m) + (f(n,n1,m) -
              seepage(n1,n,m)/1000 )$(coeffl(n1,n,m) eq 0)) -
              sum(n1$nn(n1,n), f(n1,n,m)) +
              (rcont(n,m--1) -rcont(n,m)-revapl(n,m)/1000)$rcap(n)-
              sum(c$nc(n,c), canaldiv(c,m)) =e= 0 ;


 canaldiv.up(c,m) = ccap(c);
 f.up(n,n1,m) = inf            ;
 f.up(n,n1,m)$( ncap(n1,n) ne 0 ) = ncap(n1,n);
 rcont.lo(n,m) = rulelo(n,m)*rcap(n)/100 ;
 rcont.up(n,m) = ruleup(n,m)*rcap(n)/100 ;
 rcont.fx(n,"sep")$rcap(n) = ircont(n) ;

model canal / all /; solve canal max vol using lp;

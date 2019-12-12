option LP=convert;
option LP=convert;
option LP=convert;
$Title Sea Distances for a World Phosphate Model (PHOSDIS,SEQ=78)

$Ontext

   This model has been used to estimate the sea distances between phosphate
   mines, fertilizer plants and final product markets. This example
   demonstrates how one can expand the existing data set of distances from
   basic nautical distance tables.


Meeraus, A, and Smeers, Y, Transport Cost Estimates via Linear
Programming. The World Bank, 1985.

$Offtext


    Set  n nodes      /

       odessa, trieste

 aden,       alexandria, alger,      al-aqabah,  al-bahrayn, al-basrah,  annaba,     antalya,    ashdod-yam
 belawan,    belem,      bishop-rck, bombay,     bunbury,    bur-safaja, calcutta,   cartagena,  casablanca
 christ-isl, colombo,    c-g-hope,   c-leeuwin,  dakar,      douala,     durban,     fastnet,    freetown
 guayaquil,  inchon,     inishtrahu, istanbul,   kiel-canal, lagos,      leningrad,  lombok-str, lome
 lourenco-m, masqat,     mobile,     mombasa,    montreal,   new-york,   oulu,       panama,     paramaribo
 pentland-f, perth,      pnt-arenas, portland,   port-said,  prt-madryn, rio-de-jan, rotterdam,  sfax
 shang-hai,  singapore,  skagens-o,  sunda-str,  sydney,     s-florida,  s-gibraltr, tampa,      tampico
 tarabulus,  tokyo,      torres-str, townsville, ushant,     valparaiso, vancouver,  veracruz,   vladivosto
 wetar-psg,  wilson-prm, yucatan-ch /

Set orig(n,n)  origins
 Set  cnmap(*,n) closest country and node mapping   /

   algeria.   ( alger, annaba )
   argentina. ( prt-madryn )
   australia. ( bunbury, c-leeuwin, perth, sydney, torres-str, townsville, wilson-prm )
   bahrain.   ( al-bahrayn )
   brazil.    ( belem, rio-de-jan )
   cameroon.  ( douala )
   canada.    ( montreal, vancouver )
   chile.     ( pnt-arenas, valparaiso )
   china.     ( shang-hai )
   colombia.  ( cartagena )
   cuba.      ( yucatan-ch )
   denmark.   ( skagens-o )
   egypt.     ( alexandria, bur-safaja, port-said )
   equator.   ( guayaquil )
   france.    ( ushant )
   finland.   ( oulu )
   germany.   ( kiel-canal )
   india.     ( bombay, calcutta )
   indonesia. ( belawan, lombok-str, sunda-str, wetar-psg )
   iraq.      ( al-basrah )
   ireland.   ( fastnet, inishtrahu )
   israel.    ( ashdod-yam )
   japan.     ( tokyo )
   jordan.    ( al-aqabah )
   kenya.     ( mombasa )
   korea.     ( inchon )
   lebanon.   ( tarabulus )
   mexico.    ( tampico, veracruz )
   morocco.   ( casablanca )
   mozambique.( lourenco-m )
   netherland.( rotterdam )
   nigeria.   ( lagos )
   oman.      ( masqat )
   panama.    ( panama )
   s-africa.  ( c-g-hope, durban )
   senegal.   ( dakar )
   sier-leone.( freetown )
   sinagapore.( singapore )
   spain.     ( s-gibraltr )
   sri-lanka. ( colombo )
   surinam.   ( paramaribo )
   togo.      ( lome )
   tunesia.   ( sfax )
   turkey.    (antalya, istanbul )
   uk.        ( bishop-rck, pentland-f )
   usa.       ( mobile, new-york, portland, s-florida, tampa )
   ussr.      ( leningrad, vladivosto )
   yemen.     ( aden )

   italy.     ( trieste )
   ussr.      ( odessa )
                                  /

 Alias (n,np,npp)

     Parameter dist(n,np)  arc distances (nautical miles)      /

*   only the upper triangle will be entered. The alphabetical ordering is used
*   to assure triangularity. For additions the lower triangle should be entered
*   at the beginning.


******************** insert additions *****************

 odessa.istanbul               352

 trieste.port-said            1293
 trieste.s-gibraltr           1687
 trieste.alger                1254
 trieste.istanbul             1063
 trieste.tarabulus             921


 aden.al-aqabah               1251
 aden.al-basrah               1979
 aden.bombay                  1678
 aden.bur-safaja              1109
 aden.colombo                 2105
 aden.c-g-hope                4175
 aden.c-leeuwin               4973
 aden.lourenco-m              2973
 aden.mombasa                 1619
 aden.port-said               1400
 aden.singapore               3646
 aden.sunda-str               3842
 aden.torres-str              6034

 alexandria.alger             1393
 alexandria.annaba            1169
 alexandria.antalya            349
 alexandria.ashdod-yam         266
 alexandria.istanbul           742
 alexandria.port-said          164
 alexandria.s-gibraltr        1222

 alger.annaba                  246
 alger.istanbul               1393
 alger.port-said              1514
 alger.s-gibraltr              437

 al-aqabah.port-said           380

 al-bahrayn.belawan           3316
 al-bahrayn.c-g-hope          4957
 al-bahrayn.perth             5215
 al-bahrayn.port-said         3132
 al-bahrayn.singapore         3652

 al-basrah.bombay             1594
 al-basrah.colombo            2359
 al-basrah.c-g-hope           5211
 al-basrah.masqat              773
 al-basrah.port-said          3371
 al-basrah.singapore          3916

 annaba.istanbul              1168
 annaba.port-said             1289
 annaba.s-gibraltr             675

 antalya.port-said             346
 antalya.s-gibraltr           1822

 ashdod-yam.port-said          126
 ashdod-yam.s-gibraltr        2031

 belawan.bombay               2109
 belawan.calcutta             1326
 belawan.c-g-hope             5246
 belawan.lombok-str           1342
 belawan.port-said            4688
 belawan.singapore             368
 belawan.sunda-str             870
 belawan.torres-str           2839

 belem.bishop-rck             3760
 belem.c-g-hope               4368
 belem.fastnet                3741
 belem.inishtrahu             3972
 belem.montreal               3709
 belem.new-york               2975
 belem.paramaribo              747
 belem.pentland-f             4219
 belem.pnt-arenas             4363
 belem.rio-de-jan             2174
 belem.s-florida              2653
 belem.s-gibraltr             3285
 belem.ushant                 3748
 belem.yucatan-ch             2739

 bishop-rck.cartagena         4214
 bishop-rck.c-g-hope          5790
 bishop-rck.dakar             2195
 bishop-rck.fastnet            149
 bishop-rck.freetown          2673
 bishop-rck.inishtrahu         395
 bishop-rck.kiel-canal         727
 bishop-rck.montreal          2989
 bishop-rck.new-york          3019
 bishop-rck.panama            4388
 bishop-rck.paramaribo        3602
 bishop-rck.pentland-f         636
 bishop-rck.pnt-arenas        7019
 bishop-rck.rio-de-jan        4846
 bishop-rck.rotterdam          454
 bishop-rck.skagens-o          851
 bishop-rck.s-florida         3876
 bishop-rck.s-gibraltr         969
 bishop-rck.yucatan-ch        4193

 bombay.calcutta              2128
 bombay.colombo                895
 bombay.c-g-hope              4679
 bombay.c-leeuwin             4059
 bombay.durban                3826
 bombay.masqat                 852
 bombay.mombasa               2596
 bombay.perth                 3998
 bombay.port-said             3743
 bombay.singapore             2441
 bombay.sunda-str             2664
 bombay.torres-str            4849

 bunbury.c-leeuwin              97
 bunbury.lombok-str           1510
 bunbury.port-said            6343

 bur-safaja.c-g-hope          5016
 bur-safaja.port-said          310
 bur-safaja.singapore         4729

 calcutta.colombo             1258
 calcutta.c-g-hope            5491
 calcutta.c-leeuwin           3796
 calcutta.lombok-str          2641
 calcutta.port-said           4695
 calcutta.singapore           1649
 calcutta.sunda-str           2141

 cartagena.new-york           1853
 cartagena.panama              324
 cartagena.s-gibraltr         4087
 cartagena.tampa              1295
 cartagena.tampico            1575
 cartagena.yucatan-ch          891

 casablanca.dakar             1333
 casablanca.s-gibraltr         166
 casablanca.ushant             960

 christ-isl.panama            4751
 christ-isl.sydney            3620
 christ-isl.torres-str        3500

 colombo.c-g-hope             4447
 colombo.c-leeuwin            3203
 colombo.durban               3703
 colombo.mombasa              2555
 colombo.port-said            3668
 colombo.singapore            1581
 colombo.sunda-str            1781
 colombo.torres-str           3978

 c-g-hope.c-leeuwin           4660
 c-g-hope.dakar               3610
 c-g-hope.durban               764
 c-g-hope.freetown            3190
 c-g-hope.inishtrahu          6141
 c-g-hope.lombok-str          5461
 c-g-hope.lourenco-m          1057
 c-g-hope.masqat              4464
 c-g-hope.mombasa             2472
 c-g-hope.montreal            7134
 c-g-hope.new-york            6801
 c-g-hope.pentland-f          6389
 c-g-hope.perth               4767
 c-g-hope.pnt-arenas          4618
 c-g-hope.port-said           5340
 c-g-hope.rio-de-jan          3323
 c-g-hope.singapore           5579
 c-g-hope.sunda-str           5164
 c-g-hope.s-florida           6770
 c-g-hope.s-gibraltr          5082
 c-g-hope.torres-str          6854
 c-g-hope.ushant              5746

 c-leeuwin.lombok-str         1571
 c-leeuwin.perth               193
 c-leeuwin.port-said          6389
 c-leeuwin.sunda-str          1815
 c-leeuwin.townsville         3023
 c-leeuwin.wilson-prm         1524

 dakar.inishtrahu             2546
 dakar.lagos                  1550
 dakar.lome                   1500
 dakar.montreal               3566
 dakar.new-york               3335
 dakar.panama                 3738
 dakar.pentland-f             2794
 dakar.pnt-arenas             4928
 dakar.rio-de-jan             2763
 dakar.s-florida              3768
 dakar.s-gibraltr             1487
 dakar.ushant                 2152

 douala.s-florida             5526

 durban.lourenco-m             307
 durban.mombasa               1718
 durban.port-said             4567
 durban.singapore             4872

 fastnet.montreal             2872
 fastnet.new-york             2913
 fastnet.paramaribo           3554
 fastnet.pentland-f            625
 fastnet.rio-de-jan           4873
 fastnet.s-florida            3773
 fastnet.yucatan-ch           4087

 freetown.inishtrahu          3024
 freetown.montreal            4019
 freetown.new-york            3757
 freetown.pentland-f          3272
 freetown.pnt-arenas          4731
 freetown.rio-de-jan          2613
 freetown.s-florida           4137
 freetown.s-gibraltr          1966
 freetown.ushant              2630
 freetown.yucatan-ch          4229

 guayaquil.panama             1074
 guayaquil.pnt-arenas         3057
 guayaquil.shang-hai          8872
 guayaquil.singapore         10726
 guayaquil.sydney             7268
 guayaquil.tokyo              7987
 guayaquil.torres-str         8270
 guayaquil.valparaiso         1730

 inchon.lombok-str            2885
 inchon.panama                8474
 inchon.shang-hai              503
 inchon.singapore             2560
 inchon.sunda-str             2913
 inchon.tokyo                 1070
 inchon.wetar-psg             2767

 inishtrahu.montreal          2964
 inishtrahu.new-york          3032
 inishtrahu.pentland-f         272
 inishtrahu.pnt-arenas        7315
 inishtrahu.rio-de-jan        5143
 inishtrahu.s-florida         3892
 inishtrahu.s-gibraltr        1350
 inishtrahu.yucatan-ch        4207

 istanbul.port-said            804
 istanbul.s-gibraltr          1821

 kiel-canal.leningrad          779
 kiel-canal.oulu               918
 kiel-canal.pentland-f         565
 kiel-canal.rotterdam          323
 kiel-canal.ushant             716

 lagos.lome                     50
 lagos.new-york               4883
 lagos.rio-de-jan             2850
 lagos.s-florida              5225
 lagos.s-gibraltr             3100
 lagos.ushant                 3746

 leningrad.skagens-o           971

 lombok-str.perth             1452
 lombok-str.shang-hai         2577
 lombok-str.singapore          963
 lombok-str.sunda-str          677

 lome.rio-de-jan              2800

 lourenco-m.mombasa           1508
 lourenco-m.port-said         4348
 lourenco-m.singapore         4769

 masqat.singapore             3153

 mobile.s-florida              471
 mobile.veracruz               825
 mobile.yucatan-ch             558

 mombasa.port-said            3006
 mombasa.singapore            3987

 montreal.new-york            1520
 montreal.panama              3204
 montreal.paramaribo          3150
 montreal.pentland-f          3214
 montreal.pnt-arenas          7527
 montreal.rio-de-jan          5357
 montreal.s-florida           2531
 montreal.s-gibraltr          3283

 new-york.panama              2018
 new-york.paramaribo          2334
 new-york.pentland-f          3303
 new-york.pnt-arenas          6947
 new-york.rio-de-jan          4770
 new-york.s-florida           1237
 new-york.s-gibraltr          3208
 new-york.yucatan-ch          1366

 oulu.skagens-o                979

 panama.paramaribo            1691
 panama.pnt-arenas            3932
 panama.portland              3869
 panama.prt-madryn            6012
 panama.shang-hai             8648
 panama.singapore            10505
 panama.sydney                7674
 panama.s-gibraltr            4351
 panama.tampico               1528
 panama.tokyo                 7682
 panama.torres-str            8451
 panama.valparaiso            2616
 panama.vancouver             4032
 panama.veracruz              1463
 panama.vladivosto            7833
 panama.wilson-prm            7842
 panama.yucatan-ch             855

 paramaribo.rio-de-jan        2713
 paramaribo.s-florida         2014
 paramaribo.s-gibraltr        3275
 paramaribo.ushant            3613

 pentland-f.pnt-arenas        7563
 pentland-f.rio-de-jan        5391
 pentland-f.rotterdam          495
 pentland-f.skagens-o          450
 pentland-f.s-florida         4100
 pentland-f.s-gibraltr        1598
 pentland-f.yucatan-ch        4406

 perth.port-said              6322
 perth.sunda-str              1703
 perth.torres-str             2543

 pnt-arenas.portland          6813
 pnt-arenas.prt-madryn         760
 pnt-arenas.rio-de-jan        2238
 pnt-arenas.shang-hai        10465
 pnt-arenas.sydney            5398
 pnt-arenas.s-florida         6783
 pnt-arenas.s-gibraltr        6352
 pnt-arenas.tokyo             9642
 pnt-arenas.torres-str        8348
 pnt-arenas.ushant            6986
 pnt-arenas.valparaiso        1432
 pnt-arenas.vancouver         6978
 pnt-arenas.wilson-prm        5820
 pnt-arenas.yucatan-ch        6794

 portland.singapore           7142
 portland.sydney              6737
 portland.tokyo               4338
 portland.valparaiso          5764
 portland.vancouver            371
 portland.vladivosto          4278
 portland.wilson-prm          7121

 port-said.sfax               1131
 port-said.singapore          5035
 port-said.sunda-str          5232
 port-said.s-gibraltr         1943
 port-said.tarabulus           268
 port-said.torres-str         7423

 rio-de-jan.s-florida         4612
 rio-de-jan.s-gibraltr        4180
 rio-de-jan.ushant            4815
 rio-de-jan.yucatan-ch        4622

 rotterdam.skagens-o           447
 rotterdam.ushant              444

 sfax.s-gibraltr              1043

 shang-hai.singapore          2207
 shang-hai.sunda-str          2535
 shang-hai.sydney             4642
 shang-hai.tokyo              1117
 shang-hai.valparaiso        10148
 shang-hai.vladivosto          997
 shang-hai.wetar-psg          2553

 singapore.sunda-str           532
 singapore.tokyo              2889
 singapore.vancouver          7078
 singapore.vladivosto         3004
 singapore.wetar-psg          1587

 skagens-o.ushant              833

 sunda-str.vladivosto         3357
 sunda-str.wetar-psg          1330

 sydney.tokyo                 4330
 sydney.torres-str            1754
 sydney.townsville             950
 sydney.valparaiso            6294
 sydney.vladivosto            5105
 sydney.wilson-prm             440

 s-florida.s-gibraltr         4024
 s-florida.tampa               232
 s-florida.tampico             832

 s-gibraltr.tarabulus         2047
 s-gibraltr.ushant             918
 s-gibraltr.yucatan-ch        4185

 tampa.tampico                 921
 tampa.yucatan-ch              404

 tampico.yucatan-ch            716

 tokyo.valparaiso             9280
 tokyo.vancouver              4272
 tokyo.vladivosto              962

 torres-str.townsville         662
 torres-str.valparaiso        7670
 torres-str.wetar-psg          881
 torres-str.wilson-prm        2183

 townsville.wilson-prm        1499

 valparaiso.vladivosto        9606
 valparaiso.wilson-prm        6031

 veracruz.yucatan-ch           654

 vladivosto.wetar-psg         3133          / ;

 Parameters darc(n,np)  directed arcs  (nautical miles)  ;

   darc(n,np) = max(dist(n,np),dist(np,n));
   orig(n,n)  = yes;
   Display darc, orig ;

 Variables x(n,np,npp)    flow on arcs
           cost           total cost or length

 Positive variable x;

 Equations nb(n,np)  node balance
           cd        cost definition ;

 Sets  s(n)  source nodes - dynamic
       d(n)  destination nodes - dynamic ; s(n) = no; d(n) = no;

 nb(s,n)$(not orig(s,n))..  sum(np$darc(np,n), x(s,np,n)) =g= sum(np$darc(n,np), x(s,n,np)) + 1;

 cd.. cost =e= sum((s,n,np), darc(n,np)*x(s,n,np));

 Model route   shortes route model  / all /;


*  Two distance matrices will be needed: (1) producer to producer and (2)
*  producer to market. Instead of solving two problems we find all needed
*  origins and then remap the result in to the i and j sets. To fit
*  smaller machines the problem is solved piecemeal. Also observe the use
*  of the solveopt= replace option to discard previous solutions.


Sets j    markets /   wn-america , en-america , mex+cam , ws-america , es-america , n-europe , s-europe
                      ee+ussr ,    m-east , n-e-africa , nw-africa , w-africa , s-africa , e-africa
                      persian-g , ws-asia , es-asia , asean , oceania , china , japan+kor /

     i    producers / n-america , mexico, w-europe, peru, brazil, senegal, morocco, caribbean, oth-samer,
                      algeria, tunisia, togo, oth-africa, egypt, jordan, israel, ot-mideast,
                      syria      , ee+ussr    , india    , china       , christ-isl , japan+kor  , oceania
                      oth-easia, persian-g /
     jn(j,n) market port mapping  / wn-america.vancouver, en-america.tampa, mex+cam.yucatan-ch
                ws-america.valparaiso, es-america.rio-de-jan, n-europe.rotterdam, s-europe.trieste
                ee+ussr.odessa, m-east.tarabulus, n-e-africa.alexandria,nw-africa.s-gibraltr
                w-africa.lagos, s-africa.c-g-hope, e-africa.mombasa, persian-g.al-basrah
                ws-asia.bombay, es-asia.calcutta, asean.singapore,oceania.sydney, china.shang-hai, japan+kor.tokyo /

     in(i,n) producer port mapping  /

                n-america.tampa, mexico.veracruz, w-europe.rotterdam, peru.guayaquil, brazil.rio-de-jan
                senegal.dakar, morocco.casablanca, caribbean.yucatan-ch, oth-samer.valparaiso, algeria.annaba
                tunisia.sfax, togo.lome, oth-africa.c-g-hope, egypt.bur-safaja, jordan.al-aqabah, israel.ashdod-yam
                ot-mideast.istanbul, syria.tarabulus, ee+ussr.odessa, india.bombay, china.shang-hai
                christ-isl.christ-isl, japan+kor.tokyo, oceania.sydney, oth-easia.inchon, persian-g.al-basrah  /
Alias (i,ip)

Set ss(n)  all sources ;  Scalar count;
   ss(n) = sum(i, in(i,n));  d(n) = ss(n) + sum(j, jn(j,n));
   Display ss, d;

Options iterlim=8000, solveopt=replace;

Parameter sroute(n,np) shortes sea distance (nautical miles);

* get first four sources and set-up model run

 count=0; loop(ss$(count lt 4), s(ss) = yes; count = count+1 ) ; ss(s) = no;
 Solve route minimizing cost using lp; sroute(s,d) = round(-nb.m(s,d),-1); s(s) = no;

 count=0; loop(ss$(count lt 4), s(ss) = yes; count = count+1 ) ; ss(s) = no;
 Solve route minimizing cost using lp; sroute(s,d) = round(-nb.m(s,d),-1); s(s) = no;

 count=0; loop(ss$(count lt 4), s(ss) = yes; count = count+1 ) ; ss(s) = no;
 Solve route minimizing cost using lp; sroute(s,d) = round(-nb.m(s,d),-1); s(s) = no;

 count=0; loop(ss$(count lt 4), s(ss) = yes; count = count+1 ) ; ss(s) = no;
 Solve route minimizing cost using lp; sroute(s,d) = round(-nb.m(s,d),-1); s(s) = no;

 count=0; loop(ss$(count lt 4), s(ss) = yes; count = count+1 ) ; ss(s) = no;
 Solve route minimizing cost using lp; sroute(s,d) = round(-nb.m(s,d),-1); s(s) = no;

 count=0; loop(ss$(count lt 4), s(ss) = yes; count = count+1 ) ; ss(s) = no;
 Solve route minimizing cost using lp; sroute(s,d) = round(-nb.m(s,d),-1); s(s) = no;

 count=0; loop(ss$(count lt 4), s(ss) = yes; count = count+1 ) ; ss(s) = no;
 Solve route minimizing cost using lp; sroute(s,d) = round(-nb.m(s,d),-1); s(s) = no;

 Display sroute;

* remap from nodes into producing and demand regions

 Parameter disii(i,ip) interplant distances (nautical miles)
           disiia(i,n) intermediate step
           disij(i,j)  market distances    (nautical miles) ;

    disiia(i,n) = sum(np$in(i,np), sroute(np,n));

    disii(i,ip) = sum(n$in(ip,n), disiia(i,n)); disij(i,j) = sum(n$jn(j,n), disiia(i,n));

 Display disii, disij ;


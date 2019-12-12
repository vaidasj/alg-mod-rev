option LP=convert;
option LP=convert;
option LP=convert;
$title Agreste Farm Level Model of NE Brazil (AGRESTE,SEQ=88)
$stitle set definitions
$Ontext

This is a farm level model of the north east region of brazil. There is
only one farm type - medium sized. There are 3 types of land and risk
on revenue is considered.


Kutcher, G P, and Scandizzo, P L, The Agricultural Economy of Northeast
Brazil. The Johns Hopkins University Press, Baltimore and London, 1981.

$Offtext

 set c           crops /
                 cotton-h     cotton-herbaceo
                 banana       banana
                 sugar-cane  sugar-cane
                 beans-arr    beans-de-arranca
                 beans-cor    beans-de-corda
                 oranges      oranges
                 manioc       manioc
                 corn         corn
                 sisal        sisal          /



     tm           months  / jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec /

     p           cropping activities /
                 crop-02        cotton-herbaceo
                 crop-05        banana
                 crop-10       sugar cane
                 crop-15       oranges
                 crop-16       manioc
                 crop-17       corn
                 crop-19       sisal
                 crop-25       beans-de-corda   corn
                 crop-29       cotton-herbaceo  beans-de-arranca corn
                 crop-30       cotton-herbaceo  beans-de-corda   corn
                 crop-33       beans-de-arranca corn
                 crop-36       beans-de-arranca manioc           corn /


     s           land types / good    flat and near water or humid and low lying
                              medium  hilly or more arid than good
                              pasture cultivated pasture or tree crops                /

     sc(s)       crop lands / good , medium /

     r           livestock feeding alternatives / rec-1*rec-3 /

     ty           year / 1960*1969 /

     dr           family consumption bundle alternatives / one , two , three /

     km          technology characteristics /
                 equipment, fertilizer, seeds, sprouts, itech /

    ps(p,s)      process-land possibilities


 alias (s,sp);

$stitle
  parameter
      landc(s)    land data                             (ha)          / good = 8.775, medium = 11.64, pasture = 21.92/
      rations(r)  livestock rations feeding alternative (cr per head) / rec-1  5.141 , rec-2  21.646 , rec-3  49.845/
      xcropl(p,s) limits on cropping activities
                 ;

 xcropl("crop-19","good") = 0.036 ;   xcropl("crop-19","medium") = 0.298

 table ldp(s,s) land downgrading possibilities

                good     medium
 good             1
 medium          -1         1
 pasture                   -1


* land requirements for livestock seems high but ok - pg 65 para 3
 table lio(s,r) land requirements for livestock feed alternatives (ha per head)

               rec-1   rec-2    rec-3
 medium        1.407    .611     .631
 pasture        .209   2.03      .9


 table labor(p,tm)  labor requirements for cropping (man-days per ha)

                jan       feb       mar       apr       may       jun       jul       aug       sep       oct

 crop-02       4.79     10.89     18.70      9.83      8.03     20.95     15.67     15.48     11.35      8.38
 crop-05       8.24      0.89      5.43      3.31     11.13     10.33      3.27      2.65      5.47      3.67
 crop-10       5.78      3.37      4.03      7.09      4.64      5.91      7.67      9.23      5.93      9.05
 crop-15       2.00      2.36      4.13      2.13      7.18      5.88      3.21      9.20      6.89      3.30
 crop-16       5.71      7.60      7.28      8.15      8.48     10.71      9.34     12.76      8.93     10.22
 crop-17       9.19     14.42     10.59     12.01      3.47     10.75      5.88      7.30      4.14      4.25
 crop-19       1.22      1.11      0.56      0.78      1.19      0.44      1.89      3.04      2.93      4.99
 crop-25      12.46     11.35     24.38     22.03     16.91      9.47     10.97      9.70      4.93      6.41
 crop-29       5.54     10.30      9.24      8.97     15.82     13.00     14.74     10.64      5.64      4.90
 crop-30       9.18      3.94     16.15     23.69     28.12     20.58     17.73     15.06      4.58      9.76
 crop-33       6.87     10.19     10.61      9.14     18.38     11.50      9.22     13.36      3.85      3.87
 crop-36       7.44     10.21      9.63     16.18     20.11     16.86     14.86     14.00      8.04      6.69

      +         nov       dec

 crop-02       8.23      4.54
 crop-05       3.18      1.44
 crop-10       7.59      6.37
 crop-15       9.70      8.87
 crop-16       6.18      8.34
 crop-17       3.49      2.11
 crop-19       7.73      9.44
 crop-25       0.53      0.89
 crop-29       4.73      4.92
 crop-30       7.39      2.67
 crop-33       2.65      1.09
 crop-36       5.49      5.26


 table llab(tm,r) labor requirement for livestock feed (man-days per head)

                  rec-1       rec-2       rec-3

 jan              4.261       1.873       1.933
 feb              2.854       1.262       1.302
 mar               .040        .040        .040
 apr               .040        .040        .040
 may               .040        .040        .040
 jun               .040        .040        .040
 jul               .040        .040        .040
 aug               .040        .040        .040
 sep               .040        .040        .040
 oct               .040        .040        .040
 nov              7.075       3.095       3.195
 dec              7.075       3.095       3.195


 table cbndl(c,dr)  consumption bundles (tons per bundle)

                  one        two       three

 beans-arr       .225       .152       .15
 manioc          .965      2.64        .935
 corn            .235       .232       .581


 table crev(c,ty)  crop revenue time series (cr per ha)

                 1960      1961      1962      1963      1964      1965      1966      1967      1968      1969
 banana          6399      8193      9215      8581      7988      7228      5923      6738      7221      7842
 sugar-cane      1667      1899      1898      2230      2265      2067      1499      1903      1901      1929
 beans-cor        546       585      1091       651       470       621       605       518       519       772
 manioc           986      1543      2658      1639      1146      1380      1357      1702      1560      1580
 corn             267       378       544       329       320       351       310       322       294       349


 parameter price(c) crop reference prices (cr per kg) / cotton-h   = 1.9 , banana   = 4   , sugar-cane = 35
                                                        beans-arr  = 2.5 , beans-cor = 1.5 , oranges    = 10
                                                        manioc     =  .17, corn      =  .15, sisal         1  /
           ravg(c)  average crop revenues (cr per ha)
           prdev(c,ty) price deviations for crops (cr per ton)


* wage data: pg 159
* working capital: is this correct: = 6.4 * 1113
* family labor available: correct?
 scalar fwage     family reservation wage rate (cr per man-month) /     75 /
        twage     temporary labor wage rate    (cr per man-month) /    250 /
        pwage     permanent labor wage rate    (cr per man-year)  /   2054 /
        vsc       value of self-consumption       (cr per bundle) /    934 /
        wcbar     working capital                            (cr) /   7123.2  /
        famlab    family labor              (man equivalent wrks) /     70.5  /
        lprice    livestock price                   (cr per head) /    211   /
        vetpr     cost of veterinary service        (cr per head) /     1    /
        dpm       man-days per man month                          /     25    /
        phi       risk factor


* some of these yields look odd: medium land has higher land than good
 table yield(p,c,s)  crop yields (kg per ha)
                       good    medium

 crop-02.cotton-h       848     569
 crop-05.banana         221     174
 crop-10.sugar-cane      45      30
 crop-15.oranges         92
 crop-16.manioc        4456    3964
 crop-17.corn           725     563
 crop-19.sisal         2244    1666
 crop-25.beans-cor      251     211
 crop-25.corn           373     264
 crop-29.cotton-h       269     149
 crop-29.beans-arr      285     221
 crop-29.corn           536     544
 crop-30.cotton-h       403     133
 crop-30.beans-cor      115     352
 crop-30.corn           361     212
 crop-33.beans-arr      274     260
 crop-33.corn           594     442
 crop-36.beans-arr      288     287
 crop-36.manioc        3408    1031
 crop-36.corn           503     328
                                   ;

 ps(p,s)   = yes$sum(c, yield(p,c,s));
 ravg(c)      = sum(ty, crev(c,ty))/card(ty);
 prdev(c,ty)$ravg(c)  = 1000*price(c)*(crev(c,ty)/ravg(c) - 1);
 phi          = 1;
 display ravg,prdev;


 table techc(p,km) cropping technology requirements (cr per ha)

           equipment  fertilizer  seeds  sprouts
 crop-02                   31       91
 crop-05                                   45
 crop-10                   36
 crop-15                  106        1     184
 crop-16                   20
 crop-17                   42       55
 crop-29        4          22               19
 crop-30                            27
 crop-33       11          42
 crop-36                   98        6       1


 parameter pcost(p)   cropping technology costs          (cr per ha)
           a(p)       cropping constants;


 pcost(p)    = sum(km, techc(p,km)); display pcost;
 a(p) = 1;  a(p)$sum(s, yield(p,"cotton-h",s)) = 0;
 display pcost,a;
$stitle model definition
 variables xcrop(p,s)   cropping activities                                   (ha)
           xliver(r)    livestock activity defined on feed techniques       (head)
           xlive        livestock production                                (head)
           lswitch(s)   land downgrading                                      (ha)
           xprod(c)     crop production                                      (ton)
           cons(dr)     on-farm consumption                                  (ton)
           sales(c)     crop sales                                           (ton)
           flab(tm)     family labor                                    (man-days)
           tlab(tm)     temporary labor                                 (man-days)
           plab         permanent labor                                  (workers)
           rationr      livestock ration requirements                         (cr)
           pdev(ty)     positive price deviations                             (cr)
           ndev(ty)     negative price deviations                             (cr)
           yfarm        farm income                                           (cr)
           revenue      from crop and livestock sales                         (cr)
           cropcost     accounting: cropping activities cost                  (cr)
           labcost      accounting: labor costs - including family            (cr)
           vetcost      accounting: veterinary services cost                  (cr)

 positive variables xcrop,xliver,lswitch,sales,cons,flab,tlab,plab,pdev,ndev

 equations landb(s)     land balance
           lbal         livestock balance                                             ( )
           rliv         livestock ration requirements definition                      ( )
           mbalc(c)     material balance: crops                                       ( )
           dprod(c)     crop production definition                                    ( )
           cond         on farm consumption definition                                ( )
           labc(tm)     labor supply-demand relation                                  ( )
           ddev(ty)     crop price deviation definition                               ( )
           income       farm income definition                                        ( )
           arev         accounting: revenue definition                                ( )
           acrop        accounting: cropping cost definition                          ( )
           alab         accounting: labor cost definition                             ( )
           awcc         accounting: working capital requirements                      ( )
           avet         accounting: veterinary costs                                  (cr)

                                                       ;
 landb(s).. sum(p$ps(p,s), a(p)*xcrop(p,s))$sc(s) + sum(sp, ldp(s,sp)*lswitch(sp)) + sum(r, lio(s,r)*xliver(r))
          =l= landc(s);

 lbal.. xlive =e= sum(r, xliver(r));

 rliv..   rationr =e= sum(r, rations(r)*xliver(r));

 mbalc(c).. sum((s,p), yield(p,c,s)*xcrop(p,s))/1000 =g= sales(c) + sum(dr, cbndl(c,dr)*cons(dr));

 dprod(c).. xprod(c) =e= sum((p,s), yield(p,c,s)*xcrop(p,s))/1000;

 labc(tm).. sum((p,s)$ps(p,s), labor(p,tm)*xcrop(p,s)) + sum(r, llab(tm,r)*xliver(r))
                     =l= flab(tm) + tlab(tm) + dpm*plab;

 cond..     sum(dr, cons(dr)) =e= 1;

 ddev(ty).. sum(c, prdev(c,ty)*sales(c)) =e= pdev(ty) - ndev(ty);

 arev..  revenue =e= lprice*xlive + 1000*sum(c, price(c)*sales(c));

 acrop.. cropcost =e= sum((p,s)$ps(p,s), pcost(p)*xcrop(p,s));

 alab..  labcost =e= (fwage*sum(tm, flab(tm)) + twage*sum(tm, tlab(tm)))/dpm + pwage*plab;

 awcc..  cropcost + rationr + vetcost + twage/dpm*sum(tm, tlab(tm)) + pwage*plab =l= wcbar;

 avet..  vetcost =e= vetpr*xlive;

 income..    yfarm =e= revenue + vsc*sum(dr, cons(dr)) - labcost - rationr - vetcost - cropcost
             - phi*sum(ty, pdev(ty) + ndev(ty))/card(ty);


 model agreste farm level model / all /;

 xcrop.up(p,s)$xcropl(p,s) = xcropl(p,s);
 flab.up(tm) = famlab;

 solve agreste maximizing yfarm using lp;

 phi = 0;
 solve agreste maximizing yfarm using lp;

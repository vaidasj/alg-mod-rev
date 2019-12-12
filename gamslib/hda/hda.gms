option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$title Synthesis: Hydrodealkylation of Toluene  (HDA,SEQ=123)
$Ontext
  The chemical plant performed the hydro-dealkylation of toluene
  into benzene and methane. The flowsheet model was used to make
  decisions on choosing between alternative process units at
  various stages of the process. The resulting model is nonlinear
  and mixed integer.


Kocis, G R, and Grossmann, I E, Computational Experience with DICOPT
Solving Minlp Problems in Process Synthesis. Computers and Chemical
Engineering 13, 3 (1989), 307-315.

                   -----------------
                   - process units -
                   -----------------


        absorber                           abs
        compressors                        comp
        distillation                       dist
        flash                              flsh
        furnace                            furn
        utility-stream exchangers          hec & heh
        stream-stream exchanger            exch
        membrane separator                 memb
        mixers (single inlet stream)       mxr1
        mixers                             mxr
        pump                               pump
        reactor                            rct
        splitters (single outlet stream)   spl1
        splitters                          spl
        expansion valve                    valve





                   -----------------------
                   - process unit models -
                   -----------------------


   absorber                         kremser equation
                                    (douglas, page 431)
                                       neglect heat effects
                                       assume:  pure solvent
                                                33 % tray efficiency
                                                l / m g = 1.4 (benzene)
                                                fixed recoveries for
                                                      h2 , ch4 , dip


   compressors                      isentropic compression of ideal gas
                                    (mccabe and smith, page 201)


   distillation                     rmin from underwood equation
                                    (douglas, page 441)

                                    r = 1.2 * rmin  (heuristic)

                                    nmin from fenske equation
                                    (douglas, page 441)

                                    nt = 2 * nmin (gillilands approx.)
                                    (douglas, page 443)

                                    n = nt / efficiency


   expansion valve                  isentropic expansion of ideal gas
                                    (mccabe and smith, page 200)


   flash                            ideal flash (raoult's law)
                                    (mccabe and smith, page 484)


   furnace                          50 % efficiency


   heat exchangers


   membrane separator               shortcut method (driving force
                                    approximated as arithmetic mean)
                                    (grossmann, design notes)


   mixers (single inlet stream)     linear model for heat & mass balances
                                    (kocis and grossmann, 1988)


   mixers                           nonlinear heat balance
                                    (kocis and grossmann, 1988)


   pump                             pout > pin


   reactor                          plug flow reactor
                                    1.  isothermal
                                    2.  adiabatic - use average temp


   splitters (single outlet stream) linear model for heat & mass balances
                                    (kocis and grossmann, 1988)


   splitters                        split fraction model
                                    (kocis and grossmann, 1988)


$offtext



 scalars
         alpha          compressor coefficient             / 0.3665 /
         compeff        compressor efficiency              / 0.750  /
         gam            ratio of cp to cv                  / 1.300  /
         abseff         absorber tray efficiency           / 0.333  /
         disteff        column tray efficiency             / 0.500  /
         uflow          upper bound - flow logicals        / 50     /
         upress         upper bound - pressure logicals    / 4.0    /
         utemp          upper bound - temperature logicals / 7.0    /


*   want costs in units of  $1000. per year

         costelec       electricity cost ($340. per kw-yr) / 0.340 /
         costqc         cooling cost   ($700  per 1e9 kj)  / 0.700 /
         costqh         heating cost   ($8000 per 1e9 kj)  / 8.000 /
         costfuel       fuel cost furnace ($4 per 1e6 btu) / 4.0   /

$ontext

   user must fill in the data for the following sets to define
   the number of process streams, components, and process units

$offtext

 sets    str            process streams               / 1 * 35 ,
                                                       37 * 73  /

         compon         chemical components           /

                                  h2    hydrogen
                                  ch4   methane
                                  ben   benzene
                                  tol   toluene
                                  dip   diphenyl                /


         abs            absorber                      / 1   /

         comp           compressors                   / 1 * 4   /

         dist           distillation                  / 1 * 3   /

         flsh           flash separators              / 1 * 3   /

         furn           furnace                       / 1       /

         hec            cooling units                 / 1 * 2   /

         heh            heating units                 / 1 * 4   /

         exch           exchanger                     / 1   /

         memb           membrane separators           / 1 * 2   /

         mxr1           mixers (1 input stream)       / 1 * 5   /

         mxr            mixers                        / 1 * 5   /

         pump           pump                          / 1 * 2   /

         rct            reactors                      / 1 * 2   /

         spl1           splitters (1 input stream)    / 1 * 6   /

         spl            splitters                     / 1 * 3   /

         valve          expansion valves              / 1 * 6   /



$ontext

   user must fill in the data for the following sets to
   define the input-output structure of the superstructure
   by defining which streams are input and/or output streams
   for the process units

$offtext



*                       =======================
*                       =                     =
*                       =   a b s o r b e r   =
*                       =                     =
*                       =======================


         ilabs(abs,str)      abs-stream (inlet liquid) matches  /
                        1.67                                    /

         olabs(abs,str)      abs-stream (outlet liquid) matches /
                        1.68                                    /

         ivabs(abs,str)      abs-stream (inlet vapor) matches   /
                        1.63                                    /

         ovabs(abs,str)      abs-stream (outlet vapor) matches  /
                        1.64                                    /

         asolv(abs,compon)   abs-solvent component matches      /
                        1.tol                                   /

         anorm(abs,compon)    abs-comp matches (normal model)   /
                        1.ben                                   /

         asimp(abs,compon)    abs-heavy component matches       /
                        1.(h2,ch4,dip)                          /




*                       ===========================
*                       =                         =
*                       =   c o m p r e s s o r   =
*                       =                         =
*                       ===========================


         icomp(comp,str)     compressor-stream (inlet) matches  /
                         1.5 , 2.59 , 3.64 , 4.56               /

         ocomp(comp,str)     compressor-stream (outlet) matches /
                         1.6 , 2.60 , 3.65 , 4.57               /





*                       ===============================
*                       =                             =
*                       =   d i s t i l l a t i o n   =
*                       =                             =
*                       ===============================


         idist(dist,str)     dist-stream (inlet) matches        /
                        1.25 , 2.30 , 3.33                      /

         vdist(dist,str)     dist-stream (vapor) matches        /
                        1.26 , 2.31 , 3.34                      /

         ldist(dist,str)     dist-stream (liquid) matches       /
                        1.27 , 2.32 , 3.35                      /

         dl(dist,compon)     dist-light components matches      /
                        1.h2        , 2.ch4 , 3.ben             /

         dlkey(dist,compon)  dist-light key component matches   /
                        1.ch4       , 2.ben , 3.tol             /

         dhkey(dist,compon)  dist-heavy key component matches   /
                        1.ben       , 2.tol , 3.dip             /

         dh(dist,compon)     dist-heavy components matches      /
                        1.(tol,dip) , 2.dip                     /

         dkey(dist,compon)   dist-key component matches         ;


 dkey(dist,compon) = dlkey(dist,compon) + dhkey(dist,compon)    ;





*                       =================
*                       =               =
*                       =   f l a s h   =
*                       =               =
*                       =================


 sets

         iflsh(flsh,str)     flsh-stream (inlet) matches        /
                        1.17  , 2.46  , 3.39                    /

         vflsh(flsh,str)     flsh-stream (vapor) matches        /
                        1.18  , 2.47  , 3.40                    /

         lflsh(flsh,str)     flsh-stream (liquid) matches       /
                        1.19  , 2.48  , 3.41                    /

         fkey(flsh,compon)   flash-key component matches        /
                        1.ch4 , 2.ch4 , 3.tol                   /




*                       =======================
*                       =                     =
*                       =    f u r n a c e    =
*                       =                     =
*                       =======================


         ifurn(furn,str)     furn-stream (inlet) matches        /
                        1.70                                    /

         ofurn(furn,str)     furn-stream (outlet) matches       /
                        1.9                                     /




*                       ===================
*                       =                 =
*                       =   c o o l e r   =
*                       =                 =
*                       ===================


         ihec(hec,str)       hec-stream (inlet) matches         /
                        1.71 , 2.45                             /

         ohec(hec,str)       hec-stream (outlet) matches        /
                        1.17 , 2.46                             /




*                       ===================
*                       =                 =
*                       =   h e a t e r   =
*                       =                 =
*                       ===================


         iheh(heh,str)       heh-stream (inlet) matches         /
                        1.24 , 2.23 , 3.37 , 4.61               /

         oheh(heh,str)       heh-stream (outlet) matches        /
                        1.25 , 2.44 , 3.38 , 4.73               /




*                       =========================
*                       =                       =
*                       =   e x c h a n g e r   =
*                       =                       =
*                       =========================


         icexch(exch,str)     exch-cold stream (inlet)  matches /
                        1.8                                     /

         ocexch(exch,str)     exch-cold stream (outlet) matches /
                        1.70                                    /

         ihexch(exch,str)     exch-hot  stream (inlet)  matches /
                        1.16                                    /

         ohexch(exch,str)     exch-hot  stream (outlet) matches /
                        1.71                                    /




*                       =======================
*                       =                     =
*                       =   m e m b r a n e   =
*                       =                     =
*                       =======================


         imemb(memb,str)     memb-stream (inlet) matches        /
                        1.3 , 2.54                              /

         nmemb(memb,str)     memb-stream (non-permeate) matches /
                        1.4 , 2.55                              /

         pmemb(memb,str)     memb-stream (permeate) matches     /
                        1.5 , 2.56                              /

         mnorm(memb,compon)  normal components                  /
                        1.(h2,ch4)      , 2.(h2,ch4)            /

         msimp(memb,compon)  simplified flux components         /
                        1.(ben,tol,dip) , 2.(ben,tol,dip)       /


*                       ==================
*                       =                =
*                       =   m i x e r    =
*                       = (single input) =
*                       =                =
*                       ==================


         imxr1(mxr1,str)     mixer-stream (inlet) matches       /
                        1.(2,6)   , 2.(11,13) , 3.(27,48) ,
                        4.(34,40) , 5.(49,50)                   /

         omxr1(mxr1,str)     mixer-stream (outlet) matches      /
                        1.7       , 2.14      , 3.30      ,
                        4.42      , 5.51                        /


         mxr1spl1(mxr1,str,str)    1-mxr-inlet 1-spl-outlet matches  /
                        1.(2.2,6.3)     , 2.(11.10,13.12) ,
                        3.(27.24,48.23) , 4.(34.33,40.37) ,
                        5.(49.23,50.24)                              /



*                       =================
*                       =               =
*                       =   m i x e r   =
*                       =               =
*                       =================


         imxr(mxr,str)       mixer-stream (inlet) matches       /
                        1.(7,43,66,72) , 2.(15,20) ,
                        3.(21,69)      , 4.(51,62) ,
                        5.(57,60,65)                            /

         omxr(mxr,str)       mixer-stream (outlet) matches      /
                        1.8            , 2.16      ,
                        3.22           , 4.63      ,
                        5.72                                    /


*                       ===============
*                       =             =
*                       =   p u m p   =
*                       =             =
*                       ===============


         ipump(pump,str)     pump-stream (inlet) matches        /
                        1.42  , 2.68                            /

         opump(pump,str)     pump-stream (outlet) matches       /
                        1.43  , 2.69                            /



*                       =====================
*                       =                   =
*                       =   r e a c t o r   =
*                       =                   =
*                       =====================


         irct(rct,str)       reactor-stream (inlet) matches     /
                        1.10  , 2.12                            /

         orct(rct,str)       reactor-stream (outlet) matches    /
                        1.11  , 2.13                            /

         rkey(rct,compon)    reactor-key component matches      /
                        1.tol , 2.tol                           /




*                       =======================
*                       =                     =
*                       =   s p l i t t e r   =
*                       =   (single output)   =
*                       =                     =
*                       =======================


         ispl1(spl1,str)     splitter-stream (inlet) matches    /
                        1.1       , 2.9       , 3.22      ,
                        4.32      , 5.52      , 6.58            /

         ospl1(spl1,str)     splitter-stream (outlet) matches   /
                        1.(2,3)   , 2.(10,12) , 3.(23,24) ,
                        4.(33,37) , 5.(53,54) , 6.(59,61)       /




*                       =======================
*                       =                     =
*                       =   s p l i t t e r   =
*                       =                     =
*                       =======================


         ispl(spl,str)       splitter-stream (inlet) matches    /
                        1.19      , 2.18      , 3.26            /


         ospl(spl,str)       splitter-stream (outlet) matches   /
                        1.(20,21) , 2.(52,58) , 3.(28,29)       /




*                       =========================
*                       =                       =
*                       =   e x p   v a l v e   =
*                       =                       =
*                       =========================


         ival(valve,str)     exp.valve-stream (inlet) matches   /
                        1.44 , 2.38 , 3.14 ,
                        4.47 , 5.29 , 6.73                      /

         oval(valve,str)     exp.valve-stream (outlet) matches  /
                        1.45 , 2.39 , 3.15 ,
                        4.49 , 5.50 , 6.62                      /




 alias        (str , str2) , (compon , compon2)                      ;


$ontext

 heat capacities for pure components  ( kj per kg-mol k ) -


                              vapor          liquid

         h2                    30

         ch4                   40

         ben & tol            220             230

         dip                  440             460


( h2 , ch4 , and tol vapor values from douglas
  tol                liquid value from mccabe and smith
  ben                liquid and vapor values assumed the same as tol
  dip                liquid and vapor values assumed 2 times ben
                     i.e. molecular weight of dip = 2 * ben )


 approximate bulk stream cp by guessing a stream composition
 and calculating a weighted average.



 heat of vaporization of toluene taken from reid , prausnitz & sherwood

                             30890 kj per kg-mole

 ( same value assumed for ben if needed )


$offtext

 parameter    heatvap(compon)   heat of vaporization (kj per kg-mol) ;

         heatvap('tol') = 30890.                                     ;



 parameter    cppure(compon)    pure component heat capacities  /

                            h2 = 30   , ch4 = 40  , ben = 225 ,
                            tol = 225 , dip = 450               /    ;

 parameter    cp(str)   heat capacities ( kj per kgmole-k)           ;


 table        gcomp(str,compon) guess composition values


              h2        ch4       ben       tol       dip

 7            0.95      0.05
 8            0.50      0.40                0.10
 9            0.50      0.40                0.10
10            0.50      0.40                0.10
11            0.45      0.45      0.05      0.05
12            0.50      0.40                0.10
13            0.45      0.45      0.05      0.05
14            0.45      0.45      0.05      0.05
15            0.45      0.45      0.05      0.05
16            0.40      0.40      0.10      0.10
17            0.40      0.40      0.10      0.10
20            0.03      0.07      0.55      0.35
21            0.03      0.07      0.55      0.35
22            0.03      0.07      0.55      0.35
24            0.03      0.07      0.55      0.35
25            0.03      0.07      0.55      0.35
37                                          1.00
38                                          1.00
43                                0.05      0.95
44            0.03      0.07      0.55      0.35
45            0.03      0.07      0.55      0.35
46            0.03      0.07      0.55      0.35
51            0.30      0.70
57            0.80      0.20
60            0.50      0.50
62            0.50      0.50
* Line for stream 63 estimated by Adrud based on Mixer data
63            0.47      0.40      0.01      0.12
65            0.50      0.50
66                                          1.00
69                                          1.00
70            0.50      0.40                0.10
71            0.40      0.40      0.10      0.10
72            0.50      0.50                                         ;


 cp(str) = sum( compon , cppure(compon) * gcomp(str,compon) )        ;

 display  cp   ;



 parameter    anta(compon)   antoine coefficient                     /
               h2  = 13.6333 , ch4 = 15.2243 , ben = 15.9008 ,
               tol = 16.0137 , dip = 16.6832                         /

              antb(compon)   antoine coefficient                     /
               h2  = 164.9   , ch4 = 897.84  , ben = 2788.51 ,
               tol = 3096.52 , dip = 4602.23                         /

              antc(compon)   antoine coefficient                     /
               h2  = 3.19    , ch4 = -7.16   , ben = -52.36  ,
               tol = -53.67  , dip = -70.42                          /



 parameter  perm(compon)     permeability                            /
               h2  = 55.0e-06 , ch4 = 2.3e-06                        /


              cbeta(compon)  constant values (exp(beta)) in absorber /
               h2  = 1.0003  , ch4 = 1.0008  , dip = 1.0e+04         /

              aabs(compon)   absorption factors                      /
               ben = 1.4     , tol = 4.0                             / ;

$ontext

  aabs(ben)  fixed at 1.4 (hueristic) and
  aabs(tol)  calculated as:  aabs(ben) * vp(tol) / vp(ben) at
             t=3.0 (temperature of absorber)  --->  4.0

$offtext


$ontext

   units:  cc (stp) / cm**2 - sec - cm hg
           vol      / area - time - pressure

           1 g-mol = 22.4 l = 22.4 * 1000 cc

           1000 g-mol = 1 kg-mole

           1 m**2  = ( 100 cm )**2 = 1.0e+04 cm**2

           76 cm hg = 1 atm = 0.101325 mpa
           --->     750.062 cm hg = 1 mpa

           60 sec = 1 min

   convert units to:   kg-mol / m**2 - min - mpa



           1 psia = 6.894757e+03 pa = 6.894757e-03 mpa

$offtext

 perm(compon) = perm(compon) * ( 1. / 22400. ) * 1.0e+04 * 750.062
                             *  60.  /  1000.                        ;


 scalar     eps1       small number to avoid div. by zero / 1.e-04 / ;


 parameter
              heatrxn(rct)   heat of reaction  (kj per kg-mol)       /
                             1 = 50100. , 2 = 50100.                 /

              f1comp(compon) feedstock compositions  (h2 feed)       /
                             h2  = 0.95 , ch4 = 0.05 , ben = 0.00 ,
                             tol = 0.00 , dip = 0.00                 /

              f66comp(compon) feedstock compositions  (tol feed)     /
                             h2  = 0.00 , ch4 = 0.00 , ben = 0.00 ,
                             tol = 1.00 , dip = 0.00                 /

              f67comp(compon) feedstock compositions  (tol feed)     /
                             h2  = 0.00 , ch4 = 0.00 , ben = 0.00 ,
                             tol = 1.00 , dip = 0.00                 /

$ontext


             reaction:  tol + h2   --->  ben + ch4  (desired)
                        2 ben      --->  dip + h2   (undesired)


$offtext




*                       =======================
*                       =                     =
*                       =   a b s o r b e r   =
*                       =                     =
*                       =======================


 positive variables

              nabs(abs)           number of absorber trays            ;


 variables

              gamma(abs,compon)
              beta(abs,compon)




*                       ===========================
*                       =                         =
*                       =   c o m p r e s s o r   =
*                       =                         =
*                       ===========================


 positive variables

              elec(comp)          electricity requirement (kw)
              presrat(comp)       ratio of outlet to inlet pressure





*                       ===============================
*                       =                             =
*                       =   d i s t i l l a t i o n   =
*                       =                             =
*                       ===============================


              nmin(dist)          minimum number of trays in column
              ndist(dist)         number of trays in column
              rmin(dist)          minimum reflux ratio
              reflux(dist)        reflux ratio
              distp(dist)         column pressure
              distt(dist)         column temperature
              avevlt(dist)        average volatility





*                       =================
*                       =               =
*                       =   f l a s h   =
*                       =               =
*                       =================


              flsht(flsh)         flash temperature   (100 k)
              flshp(flsh)         flash pressure      (mega-pascal)
              eflsh(flsh,compon)  vapor phase recovery in flash





*                       =======================
*                       =                     =
*                       =    f u r n a c e    =
*                       =                     =
*                       =======================


              qfuel(furn)         heating requied (1.e+12 kj per yr)





*                       ===================
*                       =                 =
*                       =   c o o l e r   =
*                       =                 =
*                       ===================


              qc(hec)             utility requirement (1.e+12 kj per yr)





*                       ===================
*                       =                 =
*                       =   h e a t e r   =
*                       =                 =
*                       ===================


              qh(heh)             utility requirement (1.e+12 kj per yr)






*                       =========================
*                       =                       =
*                       =   e x c h a n g e r   =
*                       =                       =
*                       =========================


              qexch(exch)         heat exchanged (1.e+12 kj per yr)





*                       =======================
*                       =                     =
*                       =   m e m b r a n e   =
*                       =                     =
*                       =======================

            a(memb)     surface area for mass transfer ( m**2 )




*                       =================
*                       =               =
*                       =   m i x e r   =
*                       =   (1 input)   =
*                       =               =
*                       =================


              mxr1t(mxr1)         mixer temperature     (100 k)
              mxr1p(mxr1)         mixer pressure        (m-pa)





*                       =================
*                       =               =
*                       =   m i x e r   =
*                       =               =
*                       =================


              mxrt(mxr)           mixer temperature     (100 k)
              mxrp(mxr)           mixer pressure        (m-pa)



*                       ===============
*                       =             =
*                       =   p u m p   =
*                       =             =
*                       ===============





*                       =====================
*                       =                   =
*                       =   r e a c t o r   =
*                       =                   =
*                       =====================


              rctt(rct)           reactor temperature    (100 k)
              rctp(rct)           reactor pressure       (m-pa)
              rctvol(rct)         reactor volume         (cubic meter)
              krct(rct)           rate constant
              conv(rct,compon)    conversion of key component
              sel(rct)            selectivity to benzene
              consum(rct,compon)  consumption rate of key
              q(rct)              heat removed   (1.e+9  kj per yr)





*                       =======================
*                       =                     =
*                       =   s p l i t t e r   =
*                       =     (1 output)      =
*                       =                     =
*                       =======================


              spl1t(spl1)         splitter temperature     (100 k)
              spl1p(spl1)         splitter pressure        (m-pa)





*                       =======================
*                       =                     =
*                       =   s p l i t t e r   =
*                       =                     =
*                       =======================


              splt(spl)           splitter temperature     (100 k)
              splp(spl)           splitter pressure        (m-pa)





*                       =====================
*                       =                   =
*                       =   s t r e a m s   =
*                       =                   =
*                       =====================


              vp(str,compon)      vapor pressure      (mega-pascal)
              e(str)              split fraction
              f(str)              stream flowrates    (kg-mole per min)
              fc(str,compon)      component flowrates (kg-mole per min)
              p(str)              stream pressure     (mega_pascal)
              t(str)              stream temperature  (100 k)

 binary   variable
*positive variable
              y(str)              binary variable



 variable

              const               constant term in obj fcn
              profit              overall profit      ($1000 per year)  ;







*                       =======================
*                       =                     =
*                       =   a b s o r b e r   =
*                       =                     =
*                       =======================


 equations

    absfact(abs,compon)                absorbption factor equation
    gameqn(abs,compon)                 definition of gamma
    betaeqn(abs,compon)                definition of beta
    abssvrec(abs,compon)               recovery of solvent
    absrec(abs,compon)                 recovery of non-solvent
    abssimp(abs,compon)                recovery of simplified components
    abscmb(abs,compon)                 overall component mass balance
    abslogc                            logical constraint
    abspl(abs)                         pressure relation for liquid
    abstl(abs)                         temperature relation for liquid
    abspv(abs)                         pressure relation for vapor
    absp(abs)                          pressure relation for inlets
    abst(abs)                          temperature relation at top   ;



 absfact(abs,compon) $ anorm(abs,compon) ..
     sum( str $ ilabs(abs,str) , f(str) * p(str) )  =e=
     sum( str $ ivabs(abs,str) , f(str) ) * aabs(compon) *
     sum( str $ ilabs(abs,str) , vp.l(str,compon) )                    ;


 gameqn(abs,compon) $ asolv(abs,compon) ..
     gamma(abs,compon)  =e=
     log(  ( 1 - aabs(compon) ** ( nabs(abs) * abseff + eps1 ) )  /
           ( 1 - aabs(compon) )  )                                ;


 betaeqn(abs,compon) $ ( not asimp(abs,compon) ) ..
     beta(abs,compon)  =e=
     log(  ( 1 - aabs(compon) ** ( ( nabs(abs) * abseff ) + 1 ) )  /
           ( 1 - aabs(compon) )  )                                 ;


 abssvrec(abs,compon) $ asolv(abs,compon) ..
     sum( str $ ovabs(abs,str) , fc(str,compon) ) *
     exp( beta(abs,compon) )  =e=
     sum( str $ ivabs(abs,str) , fc(str,compon) )  +
     exp( gamma(abs,compon) )  *
     sum( str $ ilabs(abs,str) , fc(str,compon) )                      ;


 absrec(abs,compon) $ anorm(abs,compon) ..
     sum( str $ ovabs(abs,str) , fc(str,compon) ) *
     exp( beta(abs,compon) )  =e=
     sum( str $ ivabs(abs,str) , fc(str,compon) )                      ;


 abssimp(abs,compon) $ asimp(abs,compon) ..
     sum( str $ ovabs(abs,str) , fc(str,compon) )  =e=
     sum( str $ ivabs(abs,str) , fc(str,compon) )  /  cbeta(compon)    ;


 abscmb(abs,compon)..
     sum( str $ ilabs(abs,str) , fc(str,compon) )  +
     sum( str $ ivabs(abs,str) , fc(str,compon) )  =e=
     sum( str $ olabs(abs,str) , fc(str,compon) )  +
     sum( str $ ovabs(abs,str) , fc(str,compon) )                      ;


 abslogc..
     f('63') + f('67')  =l=  25. * y('63')                            ;

 abspl(abs)..
     sum( str $ ilabs(abs,str) , p(str) )  =e=
     sum( str $ olabs(abs,str) , p(str) )                              ;


 abstl(abs)..
     sum( str $ ilabs(abs,str) , t(str) )  =e=
     sum( str $ olabs(abs,str) , t(str) )                              ;


 abspv(abs)..
     sum( str $ ivabs(abs,str) , p(str) )  =e=
     sum( str $ ovabs(abs,str) , p(str) )                              ;


 absp(abs)..
     sum( str $ ilabs(abs,str) , p(str) )  =e=
     sum( str $ ivabs(abs,str) , p(str) )                              ;


 abst(abs)..
     sum( str $ ilabs(abs,str) , t(str) )  =e=
     sum( str $ ovabs(abs,str) , t(str) )                              ;





*                       ===========================
*                       =                         =
*                       =   c o m p r e s s o r   =
*                       =                         =
*                       ===========================


 equations

    compcmb(comp,compon)               component balance for compressor
    comphb(comp)                       heat balance for compressor
    compelec(comp)                     energy balance for compressor
    ratio(comp)                        pressure ratio (out to in)      ;




 compcmb(comp,compon)..
     sum( str $ ocomp(comp,str) , fc(str,compon) )  =e=
     sum( str $ icomp(comp,str) , fc(str,compon) )                     ;


 comphb(comp)..
     sum( str $ ocomp(comp,str) , t(str) )  =e=
     presrat(comp) * sum( str $ icomp(comp,str) , t(str) )             ;


 compelec(comp)..
     elec(comp)  =e=
     alpha * ( presrat(comp) - 1) *
     sum( str $ icomp(comp,str) , 100. * t(str) * f(str) / 60. ) *
     (1 / compeff) * ( gam / ( gam - 1. ) )                            ;


 ratio(comp)..
     presrat(comp) ** ( gam / ( gam - 1. ) ) =e=
     sum( str $ ocomp(comp,str) , p(str) ) /
     sum( str $ icomp(comp,str) , p(str) )                             ;





*                       ===============================
*                       =                             =
*                       =   d i s t i l l a t i o n   =
*                       =                             =
*                       ===============================


 equations

    distcmb(dist,compon)               component mass balance
    antdistb(dist,str,compon)          vapor pressure correlation (bot)
    antdistt(dist,str,compon)          vapor pressure correlation (top)
    relvol(dist)                       average relative volatilty
    undwood(dist)                      minimum reflux ratio equation
    actreflux(dist)                    actual reflux ratio
    fenske(dist)                       minimum number of trays
    acttray(dist)                      actual number of trays
    distspec(dist,str,compon)          recovery specification
    distheav(dist,compon)              heavy components
    distlite(dist,compon)              light components
    distpi(dist,str)                   inlet pressure relation
    distvpl(dist,str)                  bottom vapor pressure relation
    distvpv(dist,str)                  top vapor pressure relation
    distpl(dist,str)                   outlet pressure relation(liquid)
    distpv(dist,str)                   outlet pressure relation(vapor)  ;




 distcmb(dist,compon)..
     sum( str $ idist(dist,str) , fc(str,compon) )  =e=
     sum( str $ vdist(dist,str) , fc(str,compon) )  +
     sum( str $ ldist(dist,str) , fc(str,compon) )                     ;


 antdistb(dist,str,compon) $ ( ldist(dist,str) $ dkey(dist,compon) )..
     log( vp(str,compon) * 7500.6168 )  =e=
     anta(compon) - antb(compon) / ( t(str) * 100. + antc(compon) )    ;


 antdistt(dist,str,compon) $ ( vdist(dist,str) $ dkey(dist,compon) )..
     log( vp(str,compon) * 7500.6168 )  =e=
     anta(compon) - antb(compon) / ( t(str) * 100. + antc(compon) )    ;


 relvol(dist)..
     avevlt(dist)  =e=
     sqrt(  sum( str $    ldist(dist,str)    ,
            sum( compon $ dlkey(dist,compon) , vp(str,compon) ) /
            sum( compon $ dhkey(dist,compon) , vp(str,compon) )  ) *
            sum( str $    vdist(dist,str)    ,
            sum( compon $ dlkey(dist,compon) , vp(str,compon) ) /
            sum( compon $ dhkey(dist,compon) , vp(str,compon) )  )  )   ;


 undwood(dist)..
     sum( str $ idist(dist,str) ,
     sum( compon $ dlkey(dist,compon) , fc(str,compon) ) ) *
     rmin(dist) * ( avevlt(dist) - 1 )  =e=
     sum( str $ idist(dist,str) ,
     sum( compon $ dlkey(dist,compon) , f(str) ) )                    ;


 actreflux(dist)..
     reflux(dist)  =e=
     1.2 * rmin(dist)                                                 ;


fenske(dist)..
     nmin(dist) * log( avevlt(dist) )  =e=
     log( sum( str $    vdist(dist,str)    ,
     sum( compon $ dhkey(dist,compon) ,
             ( f(str) + eps1 ) / ( fc(str,compon) + eps1 ) ) ) *
          sum( str $    ldist(dist,str)    ,
     sum( compon $ dlkey(dist,compon) ,
             ( f(str) + eps1 ) / ( fc(str,compon) + eps1 ) ) ) ) ;


 acttray(dist)..
     ndist(dist)  =e=
     nmin(dist) * 2. / disteff                                        ;


 distspec(dist,str,compon) $ ( vdist(dist,str) $ dhkey(dist,compon) ) ..
     fc(str,compon)  =l=
     0.05 * sum( str2 $ idist(dist,str2) , fc(str2,compon) )          ;


 distheav(dist,compon) $ dh(dist,compon) ..
     sum(str $ idist(dist,str) , fc(str,compon) )  =e=
     sum(str $ ldist(dist,str) , fc(str,compon) )                     ;


 distlite(dist,compon) $ dl(dist,compon) ..
     sum(str $ idist(dist,str) , fc(str,compon) )  =e=
     sum(str $ vdist(dist,str) , fc(str,compon) )                     ;


 distpi(dist,str) $ idist(dist,str)..
     distp(dist)  =l=
     p(str)                                                            ;


 distvpl(dist,str) $ ldist(dist,str)..
     distp(dist)  =e=
     sum( compon $ dhkey(dist,compon) , vp(str,compon) )               ;


 distvpv(dist,str) $ ( (ord(dist) ne 1) $ vdist(dist,str) ) ..
     distp(dist)  =e=
     sum( compon $ dlkey(dist,compon) , vp(str,compon) )               ;


 distpl(dist,str) $ ldist(dist,str)..
     distp(dist)  =e=
     p(str)                                                            ;


 distpv(dist,str) $ vdist(dist,str) ..
     distp(dist)  =e=
     p(str)                                                            ;






*                       =================
*                       =               =
*                       =   f l a s h   =
*                       =               =
*                       =================


 equations

    flshcmb(flsh,compon)               component mass balance
    flshpr(flsh,str)                   flash pressure relation
    flshpi(flsh,str)                   inlet pressure relation
    flshpl(flsh,str)                   outlet pressure relation(liquid)
    flshpv(flsh,str)                   outlet pressure relation(vapor)
    flshti(flsh,str)                   inlet temp. relation
    flshtl(flsh,str)                   outlet temp. relation(liquid)
    flshtv(flsh,str)                   outlet temp. relation(vapor)
    flshrec(flsh,str,compon)           vapor recovery relation
    flsheql(flsh,compon)               equilibrium relation
    antflsh(flsh,str,compon)           vapor pressure correlation      ;




 flshcmb(flsh,compon)..
     sum( str $ iflsh(flsh,str) , fc(str,compon) )  =e=
     sum( str $ vflsh(flsh,str) , fc(str,compon) )  +
     sum( str $ lflsh(flsh,str) , fc(str,compon) )                     ;


 antflsh(flsh,str,compon) $ lflsh(flsh,str) ..
     log( vp(str,compon) * 7500.6168 )  =e=
     anta(compon) - antb(compon) / ( t(str) * 100. + antc(compon) )    ;


 flshrec(flsh,str,compon) $ lflsh(flsh,str) ..
     sum( compon2 $ fkey(flsh,compon2) , eflsh(flsh,compon2) ) *
     ( eflsh(flsh,compon) *
       sum( compon2 $ fkey(flsh,compon2) , vp(str,compon2) )  +
       ( 1. - eflsh(flsh,compon) ) * vp(str,compon) )  =e=
     sum( compon2 $ fkey(flsh,compon2) , vp(str,compon2) )
     * eflsh(flsh,compon)                                              ;


 flsheql(flsh,compon)..
     sum( str $ vflsh(flsh,str) , fc(str,compon) )  =e=
     sum( str $ iflsh(flsh,str) , fc(str,compon) ) * eflsh(flsh,compon) ;


 flshpr(flsh,str) $ lflsh(flsh,str) ..
     flshp(flsh)  * f(str)  =e=
     sum( compon , vp(str,compon) * fc(str,compon) )                   ;


 flshpi(flsh,str) $ iflsh(flsh,str)..
     flshp(flsh)  =e=  p(str)                                          ;


 flshpl(flsh,str) $ lflsh(flsh,str)..
     flshp(flsh)  =e=  p(str)                                          ;


 flshpv(flsh,str) $ vflsh(flsh,str)..
     flshp(flsh)  =e=  p(str)                                          ;


 flshti(flsh,str) $ iflsh(flsh,str)..
     flsht(flsh)  =e=  t(str)                                          ;


 flshtl(flsh,str) $ lflsh(flsh,str)..
     flsht(flsh)  =e=  t(str)                                          ;


 flshtv(flsh,str) $ vflsh(flsh,str)..
     flsht(flsh)  =e=  t(str)                                          ;





*                       =======================
*                       =                     =
*                       =    f u r n a c e    =
*                       =                     =
*                       =======================


 equations

    furnhb(furn)                       heat balance
    furncmb(furn,compon)               component mass balance
    furnp(furn)                        pressure relation               ;




 furnhb(furn)..
     qfuel(furn)  =e=
     ( sum( str $ ofurn(furn,str) , cp(str) * f(str) * 100. * t(str) )  -
       sum( str $ ifurn(furn,str) , cp(str) * f(str) * 100. * t(str) ) )
     * 3600. * 8500. * 1.0e-12 / 60.                                   ;


 furncmb(furn,compon)..
     sum( str $ ofurn(furn,str) , fc(str,compon) )  =e=
     sum( str $ ifurn(furn,str) , fc(str,compon) )                     ;

 furnp(furn)..
     sum( str $ ofurn(furn,str) , p(str) ) =e=
     sum( str $ ifurn(furn,str) , p(str) )  -  0.4826                  ;




*                       ===================
*                       =                 =
*                       =   c o o l e r   =
*                       =                 =
*                       ===================


 equations

    heccmb(hec,compon)                 component balance in cooler
    hechb(hec)                         heat balance for cooler
    hecp(hec)                          no pressure drop thru cooler    ;




 heccmb(hec,compon)..
     sum( str $ ohec(hec,str) , fc(str,compon) )  =e=
     sum( str $ ihec(hec,str) , fc(str,compon) )                       ;


 hechb(hec)..
     qc(hec)  =e=
     ( sum( str $ ihec(hec,str) , cp(str) * f(str) * 100. * t(str) )  -
       sum( str $ ohec(hec,str) , cp(str) * f(str) * 100. * t(str) ) ) *
     3600. * 8500. * 1.0e-12 / 60.                                     ;


 hecp(hec)..
     sum( str $ ihec(hec,str) , p(str) )  =e=
     sum( str $ ohec(hec,str) , p(str) )                               ;






*                       ===================
*                       =                 =
*                       =   h e a t e r   =
*                       =                 =
*                       ===================


 equations

    hehcmb(heh,compon)                 component balance in heater
    hehhb(heh)                         heat balance for heater
    hehp(heh)                          no pressure drop thru heater    ;




 hehcmb(heh,compon)..
     sum( str $ oheh(heh,str) , fc(str,compon) )  =e=
     sum( str $ iheh(heh,str) , fc(str,compon) )                       ;


 hehhb(heh)..
     qh(heh)  =e=
     ( sum( str $ oheh(heh,str) , cp(str) * f(str) * 100. * t(str) ) -
       sum( str $ iheh(heh,str) , cp(str) * f(str) * 100. * t(str) ) ) *
     3600. * 8500. * 1.0e-12 / 60.                                     ;


 hehp(heh)..
     sum( str $ iheh(heh,str) , p(str) )  =e=
     sum( str $ oheh(heh,str) , p(str) )                               ;


*                       =========================
*                       =                       =
*                       =   e x c h a n g e r   =
*                       =                       =
*                       =========================


 equations

    exchcmbc(exch,compon)              component balance (cold)
    exchcmbh(exch,compon)              component balance (hot)
    exchhbc(exch)                      heat balance for cold stream
    exchhbh(exch)                      heat balance for hot  stream
    exchdtm1(exch)                     delta t min condition
    exchdtm2(exch)                     delta t min condition
    exchpc(exch)                       pressure relation  (cold)
    exchph(exch)                       pressure relation  (hot)       ;


 exchcmbc(exch,compon)..
     sum( str $ ocexch(exch,str) , fc(str,compon) )  =e=
     sum( str $ icexch(exch,str) , fc(str,compon) )                   ;


 exchcmbh(exch,compon)..
     sum( str $ ohexch(exch,str) , fc(str,compon) )  =e=
     sum( str $ ihexch(exch,str) , fc(str,compon) )                   ;


 exchhbc(exch)..
     qexch(exch)  =e=
     ( sum( str $ ocexch(exch,str) , cp(str) * f(str) * 100. * t(str) ) -
       sum( str $ icexch(exch,str) , cp(str) * f(str) * 100. * t(str) ) )
   * 3600. * 8500. * 1.0e-12 / 60.                                     ;


 exchhbh(exch)..
     qexch(exch)  =e=
     ( sum( str $ ihexch(exch,str) , cp(str) * f(str) * 100. * t(str) ) -
       sum( str $ ohexch(exch,str) , cp(str) * f(str) * 100. * t(str) ) )
   * 3600. * 8500. * 1.0e-12 / 60.                                     ;


 exchdtm1(exch)..
     sum( str $ ohexch(exch,str) , t(str) )  =g=
     sum( str $ icexch(exch,str) , t(str) )  +  0.25                  ;


 exchdtm2(exch)..
     sum( str $ ocexch(exch,str) , t(str) )  =l=
     sum( str $ ihexch(exch,str) , t(str) )  -  0.25                  ;


 exchpc(exch)..
     sum( str $ ocexch(exch,str) , p(str) )  =e=
     sum( str $ icexch(exch,str) , p(str) )                           ;


 exchph(exch)..
     sum( str $ ohexch(exch,str) , p(str) )  =e=
     sum( str $ ihexch(exch,str) , p(str) )                           ;





*                       =======================
*                       =                     =
*                       =   m e m b r a n e   =
*                       =                     =
*                       =======================


 equations

    memcmb(memb,str,compon)            component mass balance
    flux(memb,str,compon)              mass flux relation
    simp(memb,str,compon)              mass flux relation (simplified)
    memtp(memb,str)                    temp relation for permeate
    mempp(memb,str)                    pressure relation for permeate
    memtn(memb,str)                    temp relation for non-permeate
    mempn(memb,str)                    pressure relation for non-permeate
    rec(memb,str)                      recovery spec
    pure(memb,str)                     purity spec                    ;




 memcmb(memb,str,compon) $ imemb(memb,str) ..
     fc(str,compon)  =e=
     sum( str2 $ pmemb(memb,str2) , fc(str2,compon) ) +
     sum( str2 $ nmemb(memb,str2) , fc(str2,compon) )                 ;


 flux(memb,str,compon) $ ( pmemb(memb,str) $ mnorm(memb,compon) ) ..
     fc(str,compon)  =e=
     a(memb) * perm(compon) / 2.0  *         (
     sum( str2 $ imemb(memb,str2) , p(str2) ) *
     (  sum( str2 $ imemb(memb,str2) , ( fc(str2,compon) + eps1 )
                                     / ( f(str2) + eps1 ) )  +
        sum( str2 $ nmemb(memb,str2) , ( fc(str2,compon) + eps1 )
                                     / ( f(str2) + eps1 ) )  )  -
     2. * p(str) * ( fc(str,compon) + eps1 ) / ( f(str) + eps1)   )   ;


 simp(memb,str,compon) $ ( pmemb(memb,str) $ msimp(memb,compon) ) ..
     fc(str,compon)  =e=  0.0                                        ;


 memtp(memb,str) $ pmemb(memb,str) ..
     t(str)  =e=
     sum( str2 $ imemb(memb,str2) , t(str2) )                         ;


 mempp(memb,str) $ pmemb(memb,str) ..
     p(str)  =l=
     sum( str2 $ imemb(memb,str2) , p(str2) )                         ;


 memtn(memb,str) $ nmemb(memb,str) ..
     t(str)  =e=
     sum( str2 $ imemb(memb,str2) , t(str2) )                         ;


 mempn(memb,str) $ nmemb(memb,str) ..
     p(str)  =e=
     sum( str2 $ imemb(memb,str2) , p(str2) )                         ;


 rec(memb,str) $ pmemb(memb,str) ..
     fc(str,'h2')  =g=
     0.50 * sum( str2 $ imemb(memb,str2) , fc(str2,'h2') )            ;


 pure(memb,str) $ pmemb(memb,str) ..
     fc(str,'h2')  =g=
     0.50 * f(str)                                                    ;





*                       ==================
*                       =                =
*                       =   m i x e r    =
*                       = (single input) =
*                       =                =
*                       ==================


 equations

    mxr1cmb(mxr1,str,compon)           component balance in mixer
    mxr1hbl(mxr1,str)                  heat balance in mixer (ls than)
    mxr1hbg(mxr1,str)                  heat balance in mixer (grt than)
    mxr1pl(mxr1,str)                   pressure relation (less than)
    mxr1pg(mxr1,str)                   pressure relation (greater than) ;



 mxr1cmb(mxr1,str,compon) $ omxr1(mxr1,str) ..
     fc(str,compon)  =e=
     sum( str2 $ imxr1(mxr1,str2) , fc(str2,compon) )                  ;


 mxr1hbl(mxr1,str) $ imxr1(mxr1,str) ..
     sum( str2 $ omxr1(mxr1,str2) , t(str2) )  =l=
     t(str)  +
     utemp * sum( str2 $ mxr1spl1(mxr1,str,str2) , (1 - y(str2)) )     ;


 mxr1hbg(mxr1,str) $ imxr1(mxr1,str) ..
     sum( str2 $ omxr1(mxr1,str2) , t(str2) )  =g=
     t(str)  -
     utemp * sum( str2 $ mxr1spl1(mxr1,str,str2) , (1 - y(str2)) )     ;


 mxr1pl(mxr1,str) $ imxr1(mxr1,str) ..
     sum( str2 $ omxr1(mxr1,str2) , p(str2) )  =l=
     p(str)  +
     upress * sum( str2 $ mxr1spl1(mxr1,str,str2) , (1 - y(str2)) )    ;


 mxr1pg(mxr1,str) $ imxr1(mxr1,str) ..
     sum( str2 $ omxr1(mxr1,str2) , p(str2) )  =g=
     p(str)  -
     upress * sum( str2 $ mxr1spl1(mxr1,str,str2) , (1 - y(str2)) )    ;






*                       =================
*                       =               =
*                       =   m i x e r   =
*                       =               =
*                       =================


 equations

    mxrcmb(mxr,compon)                 component balance in mixer
    mxrhb(mxr)                         heat balance in mixer
    mxrhbq(mxr)                        heat balance in quench
    mxrpi(mxr,str)                     inlet pressure relation
    mxrpo(mxr,str)                     outlet pressure relation        ;




 mxrcmb(mxr,compon)..
     sum( str $ omxr(mxr,str) , fc(str,compon) )  =e=
     sum( str $ imxr(mxr,str) , fc(str,compon) )                       ;


 mxrhb(mxr) $ ( ord(mxr) ne 2 ) ..
     sum( str $ imxr(mxr,str) , f(str) * t(str) * cp(str) )  =e=
     sum( str $ omxr(mxr,str) , f(str) * t(str) * cp(str) )            ;


 mxrhbq(mxr) $ ( ord(mxr) eq 2 ) ..
     f('16') * t('16')  =e=
     f('15') * t('15')   -
     ( fc('20','ben') + fc('20','tol') ) * heatvap('tol')
     / ( 100. * cp('15') )                                           ;

 mxrpi(mxr,str) $ imxr(mxr,str)..
     mxrp(mxr)  =e=
     p(str)                                                            ;


 mxrpo(mxr,str) $ omxr(mxr,str)..
     mxrp(mxr)  =e=
     p(str)                                                            ;





*                       ===============
*                       =             =
*                       =   p u m p   =
*                       =             =
*                       ===============


 equations

    pumpcmb(pump,compon)               component balance
    pumphb(pump)                       heat balance
    pumppr(pump)                       pressure relation               ;



 pumpcmb(pump,compon)..
     sum( str $ opump(pump,str) , fc(str,compon) )  =e=
     sum( str $ ipump(pump,str) , fc(str,compon) )                     ;


 pumphb(pump)..
     sum( str $ opump(pump,str) , t(str) )  =e=
     sum( str $ ipump(pump,str) , t(str) )                             ;


 pumppr(pump)..
     sum( str $ opump(pump,str) , p(str) )  =g=
     sum( str $ ipump(pump,str) , p(str) )                             ;





*                       =====================
*                       =                   =
*                       =   r e a c t o r   =
*                       =                   =
*                       =====================


 equations

    rctspec(rct,str)                   spec. on reactor feed stream
    rxnrate(rct)                       reaction rate constant
    rctconv(rct,str,compon)            conversion of key component
    rctsel(rct)                        selectivity to benzene
    rctcns(rct,str,compon)             consumption rate of key comp.
    rctmbtol(rct)                      mass balance in reactor (tol)
    rctmbben(rct)                      mass balance in reactor (ben)
    rctmbdip(rct)                      mass balance in reactor (dip)
    rctmbh2(rct)                       mass balance in reactor (h2)
    rctmbch4(rct)                      mass balance in reactor (ch4)
    rcthbadb(rct)                      heat balance (adiabatic)
    rcthbiso(rct)                      heat balance (isothermal)
    rctisot(rct)                       temp relation (isothermal)
    rctpi(rct,str)                     inlet pressure relation
    rctpo(rct,str)                     outlet pressure relation
    rcttave(rct)                       average temperature relation   ;




 rctspec(rct,str) $ irct(rct,str) ..
     fc(str,'h2')  =g=
     5. * ( fc(str,'ben') + fc(str,'tol') + fc(str,'dip') )            ;


 rxnrate(rct)..
     krct(rct)  =e=
     6.3e+10 * exp( -26167. / ( rctt(rct) * 100. )  )                  ;


 rctconv(rct,str,compon) $ ( rkey(rct,compon) $ irct(rct,str) ) ..
     1. - conv(rct,compon)  =e=
     sqr( 1.  /  ( 1. + 0.372 * krct(rct)  *
                        rctvol(rct) * sqrt( fc(str,compon) / 60 + eps1 ) *
                        ( f(str) / 60. + eps1 ) ** (-3./2.) )  )      ;


 rctsel(rct)..
     ( 1. - sel(rct) )  =e=
     0.0036 * ( 1. - conv(rct,'tol') ) ** (-1.544)                     ;


 rctcns(rct,str,compon) $ ( rkey(rct,compon) $ irct(rct,str) ) ..
     consum(rct,compon)  =e=
     conv(rct,compon) * fc(str,compon)                                 ;


 rctmbtol(rct)..
     sum( str $ orct(rct,str) , fc(str,'tol') )  =e=
     sum( str $ irct(rct,str) , fc(str,'tol') )  -
     consum( rct,'tol')                                                ;


 rctmbben(rct)..
     sum( str $ orct(rct,str) , fc(str,'ben') )  =e=
     sum( str $ irct(rct,str) , fc(str,'ben') )  +
     consum( rct,'tol' ) * sel(rct)                                    ;


 rctmbdip(rct)..
     sum( str $ orct(rct,str) , fc(str,'dip') )  =e=
     sum( str $ irct(rct,str) , fc(str,'dip') )  +
     consum( rct,'tol' )  *  0.5  +
  (  sum( str $ irct(rct,str) , fc(str,'ben') )  -
     sum( str $ orct(rct,str) , fc(str,'ben') )  )  *  0.5             ;


 rctmbh2(rct)..
     sum( str $ orct(rct,str) , fc(str,'h2') )  =e=
     sum( str $ irct(rct,str) , fc(str,'h2') )  -
     consum( rct,'tol' )  +
     sum( str $ orct(rct,str) , fc(str,'dip') )  -
     sum( str $ irct(rct,str) , fc(str,'dip') )                        ;


 rctmbch4(rct)..
     sum( str $ orct(rct,str) , fc(str,'ch4') )  =e=
     sum( str $ irct(rct,str) , fc(str,'ch4') )  +
     consum( rct,'tol' )                                               ;


 rcthbadb(rct) $ ( ord(rct) eq 1) ..
     heatrxn(rct) * consum(rct,'tol') / 100.  =e=
     sum( str $ orct(rct,str) , cp(str) * f(str) * t(str) )  -
     sum( str $ irct(rct,str) , cp(str) * f(str) * t(str) )            ;


 rcthbiso(rct) $ ( ord(rct) eq 2 ) ..
     heatrxn(rct) * consum(rct,'tol') * 60. * 8500 * 1.0e-09  =e=
     q(rct)                                                            ;


rctisot(rct) $ ( ord(rct) eq 2 ) ..
     sum( str $ orct(rct,str) , t(str) )  =e=
     sum( str $ irct(rct,str) , t(str) )                              ;


 rctpi(rct,str) $ irct(rct,str)..
     rctp(rct)  =e=  p(str)                                            ;


 rctpo(rct,str) $ orct(rct,str)..
     p(str)  =e=
     rctp(rct)  -  0.20684                                             ;


 rcttave(rct)..
     rctt(rct)  =e=
     (  sum( str $ irct(rct,str) , t(str) )  +
        sum( str $ orct(rct,str) , t(str) )  )  /  2.                  ;






*                       =======================
*                       =                     =
*                       =   s p l i t t e r   =
*                       =   (single output)   =
*                       =                     =
*                       =======================


 equations

    spl1logc(spl1,str)                 splitter logical constraint
    spl1ysum(spl1)                     single choice
    spl1cmb(spl1,compon)               component balance in splitter
    spl1pi(spl1,str)                   inlet pressure relation
    spl1po(spl1,str)                   outlet pressure relation
    spl1ti(spl1,str)                   inlet temperature relation
    spl1to(spl1,str)                   outlet temperature relation    ;




 spl1logc(spl1,str) $ ospl1(spl1,str) ..
     f(str)  =l=
     uflow * y(str)                                                   ;


 spl1ysum(spl1)..
     sum( str $ ospl1(spl1,str) , y(str) )  =e=  1                    ;


spl1cmb(spl1,compon)..
     sum( str $ ospl1(spl1,str) , fc(str,compon) )  =e=
     sum( str $ ispl1(spl1,str) , fc(str,compon) )                    ;


 spl1pi(spl1,str) $ ispl1(spl1,str)..
     spl1p(spl1)  =e=  p(str)                                         ;


 spl1po(spl1,str) $ ospl1(spl1,str)..
     spl1p(spl1)  =e=  p(str)                                         ;


 spl1ti(spl1,str) $ ispl1(spl1,str)..
     spl1t(spl1)  =e=  t(str)                                         ;


 spl1to(spl1,str) $ ospl1(spl1,str)..
     spl1t(spl1)  =e=  t(str)                                         ;






*                       =======================
*                       =                     =
*                       =   s p l i t t e r   =
*                       =                     =
*                       =======================


 equations

    splcmb(spl,str,compon)             component balance in splitter
    esum(spl)                          split fraction relation
    splpi(spl,str)                     inlet pressure relation
    splpo(spl,str)                     outlet pressure relation
    splti(spl,str)                     inlet temperature relation
    splto(spl,str)                     outlet temperature relation    ;




 splcmb(spl,str,compon) $ ospl(spl,str)..
     fc(str,compon)  =e=
     sum( str2 $ ispl(spl,str2) , fc(str2,compon) * e(str) )          ;


 esum(spl)..
     sum( str $ ospl(spl,str) , e(str) )  =e=  1.0                    ;


 splpi(spl,str) $ ispl(spl,str)..
     splp(spl)  =e=  p(str)                                           ;


 splpo(spl,str) $ ospl(spl,str)..
     splp(spl)  =e=  p(str)                                           ;


 splti(spl,str) $ ispl(spl,str)..
     splt(spl)  =e=  t(str)                                           ;


 splto(spl,str) $ ospl(spl,str)..
     splt(spl)  =e=  t(str)                                           ;






*                       ==========================
*                       =                        =
*                       =   e x p    v a l v e   =
*                       =                        =
*                       ==========================


 equations

    valcmb(valve,compon)               component mass balance
    valt(valve)                        temperature relation
    valp(valve)                        pressure relation              ;




 valcmb(valve,compon)..
     sum( str $ oval(valve,str) , fc(str,compon) )  =e=
     sum( str $ ival(valve,str) , fc(str,compon) )                    ;


 valt(valve)..
     sum( str $ oval(valve,str) , t(str) / ( p(str) **
          ( ( gam - 1. ) / gam ) ) )  =e=
     sum( str $ ival(valve,str) , t(str) / ( p(str) **
          ( ( gam - 1. ) / gam ) ) )                                  ;


 valp(valve)..
     sum( str $ oval(valve,str) , p(str) )  =l=
     sum( str $ ival(valve,str) , p(str) )                            ;






*                       ===================
*                       =                 =
*                       =   s t r e a m   =
*                       =                 =
*                       ===================


 equations

    h2feed(compon)                     define h2  feed component flows
    tolfeed(compon)                    define tol feed component flows
    tolabs(compon)                     define tol absorber compon flows
    specrec                            spec on h2 recycle
    specprod                           spec on ben product
    fbal(str)                          stream flow = sum of comp. flows ;



 specrec..
     fc('72','h2')  =g=  0.5 * f('72')                                ;


 specprod..
     fc('31','ben')  =g=  0.9997 * f('31')                            ;


 fbal(str)..
     f(str)  =e=  sum( compon, fc(str,compon) )                       ;


 h2feed(compon)..
     fc('1',compon)  =e=  f('1') * f1comp(compon)                     ;


 tolfeed(compon)..
     fc('66',compon)  =e=  f('66') * f66comp(compon)                  ;


 tolabs(compon)..
     fc('67',compon)  =e=  f('67') * f67comp(compon)                  ;



*                       =========================
*                       =                       =
*                       =   o b j e c t i v e   =
*                       =                       =
*                       =========================


 equations

    abound                             fake bound on a(1)

    obj                                cost function definition       ;


 abound..   a('1')  =g=  0.0  ;

 obj..
     profit  =e=
     510. * ( -  2.5 * f('1')  -  14. * ( f('66') + f('67') )

              +  19.9 * f('31')  +  11.84 * f('35')

              +  1.08 * ( fc('4','h2')    +  fc('28','h2')   +
                          fc('53','h2')   +  fc('55','h2')   )

              +  3.37 * ( fc('4','ch4')   +  fc('28','ch4')  +
                          fc('53','ch4')  +  fc('55','ch4')  )  )

     - 0.815 * ( elec('1') + elec('2') + elec('3') )
     - 0.887 *   elec('4')
     - 7.155 * ( y('3') + y('59') + y('63') )
     - 4.866 * y('54')

     - sum( comp , costelec * elec(comp) )

     - ( 74.3 * y('10')  +  1.257 * rctvol('1') )
     - 1.25 * ( 74.3 * y('12')  +  1.257 * rctvol('2') )
     - 0.7 * q('2')

     - ( 1.126 * y('24')  +  0.375 * ndist('1') )
     - (        + 1.55 * ndist('2') )
     - ( 3.9 * y('33')  +  1.12 * ndist('3') )

     - ( 43.24 * y('3')   +  49.0 * f('3')  )
     - ( 43.24 * y('54')  +  49.0 * f('54') )

     - ( 3.0 * y('63')  +  1.2 * nabs('1') )

     - (        + 1171.7 * qfuel('1') + 4000. * qfuel('1') )

     - sum( hec ,  700 * qc(hec) )
     - sum( heh , 8000 * qh(heh) )

     - const                        ;





*                   + + + + + + + + + + + + + + + +
*                   +                             +
*                   +       b  o  u  n  d  s      +
*                   +                             +
*                   + + + + + + + + + + + + + + + +

profit.up = 1.0e+08 ;
 const.fx = 22.5                  ;

*    ===================
*    =   s t r e a m   =
*    ===================

 y.lo(str) = 0.0    ;
 y.up(str) = 1.0    ;


 e.up(str)         = 1.0          ;

 e.up('20')        = 0.50         ;
 e.lo('21')        = 0.50         ;
*e.up('52')        = 0.50         ;
*e.lo('58')        = 0.50         ;

 f.lo(str)         = 0.           ;
 f.up(str)         = 10.          ;

 f.up('8')         = 50.          ;
 f.up('9')         = 50.          ;
 f.up('10')        = 50.          ;
 f.up('11')        = 50.          ;
 f.up('12')        = 50.          ;
 f.up('13')        = 50.          ;
 f.up('14')        = 50.          ;
 f.up('15')        = 50.          ;
 f.up('16')        = 50.          ;
 f.up('17')        = 50.          ;
 f.up('18')        = 50.          ;
 f.up('52')        = 50.          ;
 f.up('54')        = 50.          ;
 f.up('56')        = 50.          ;
 f.up('57')        = 50.          ;
 f.up('58')        = 50.          ;
 f.up('59')        = 50.          ;
 f.up('60')        = 50.          ;
 f.up('70')        = 50.          ;
 f.up('71')        = 50.          ;
 f.up('72')        = 50.          ;

 fc.lo(str,compon) = 0.           ;
 fc.up(str,compon) = 10.          ;

 fc.up('8',compon)   = 30.        ;
 fc.up('9',compon)   = 30.        ;
 fc.up('10',compon)  = 30.        ;
 fc.up('11',compon)  = 30.        ;
 fc.up('12',compon)  = 30.        ;
 fc.up('13',compon)  = 30.        ;
 fc.up('14',compon)  = 30.        ;
 fc.up('15',compon)  = 30.        ;
 fc.up('16',compon)  = 30.        ;
 fc.up('17',compon)  = 30.        ;
 fc.up('18',compon)  = 30.        ;
 fc.up('52',compon)  = 30.        ;
 fc.up('54',compon)  = 30.        ;
 fc.up('56',compon)  = 30.        ;
 fc.up('57',compon)  = 30.        ;
 fc.up('58',compon)  = 30.        ;
 fc.up('59',compon)  = 30.        ;
 fc.up('60',compon)  = 30.        ;
 fc.up('70',compon)  = 30.        ;
 fc.up('71',compon)  = 30.        ;
 fc.up('72',compon)  = 30.        ;


 p.lo(str)         = 0.1          ;
 p.up(str)         = 4.0          ;

 t.lo(str)         = 3.00         ;
 t.up(str)         = 10.00        ;

 t.lo('49') = 2.0   ;
 t.lo('50') = 2.0   ;
 t.lo('51') = 2.0   ;


 vp.lo(str,compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.lo(str) * 100. + antc(compon) ) )             ;

 vp.up(str,compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.up(str) * 100. + antc(compon) ) )             ;




*    =======================
*    =   a b s o r b e r   =
*    =======================


 nabs.lo(abs) = 0.                 ;
 nabs.up(abs) = 40.                ;

 gamma.lo(abs,'tol') = log( (1 - aabs('tol') **
  ( nabs.lo('1') * abseff + eps1 )) / (1 - aabs('tol')) )       ;

 gamma.up(abs,'tol') = min(15, log( (1 - aabs('tol') **
  ( nabs.up('1') * abseff + eps1 )) / (1 - aabs('tol')) ) )     ;


 beta.lo(abs,compon) = log( (1 - aabs(compon) **
  ( nabs.lo('1') * abseff + eps1 + 1. )) / (1 - aabs(compon)) )       ;

 beta.up(abs,compon) = min( 15, log( (1 - aabs(compon) **
  ( nabs.up('1') * abseff + eps1 + 1. )) / (1 - aabs(compon)) ) )     ;


 t.fx('67') = 3.0                  ;

 vp.fx('67',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.l('67') * 100. + antc(compon) ) )             ;



*    ===========================
*    =   c o m p r e s s o r   =
*    ===========================


 presrat.lo(comp)  = 1.      ;
 presrat.up(comp)  = 8./3.   ;

 elec.lo(comp)= 0.           ;
 elec.up(comp)= 100.         ;




*    ===============================
*    =   d i s t i l l a t i o n   =
*    ===============================


 nmin.lo('1') = 0.                              ;
 nmin.up('1') = 4.                              ;

 nmin.lo('2') = 8.                              ;
 nmin.up('2') = 14.                             ;

 nmin.lo('3') = 0.                              ;
 nmin.up('3') = 4.                              ;


 ndist.lo(dist) = nmin.lo(dist) * 2. / disteff  ;
 ndist.up(dist) = nmin.up(dist) * 2. / disteff  ;

 rmin.lo('1')  = 0.02                           ;
 rmin.up('1')  = 0.10                           ;

 rmin.lo('2')  = 0.50                           ;
 rmin.up('2')  = 2.00                           ;

 rmin.lo('3')  = 0.02                           ;
 rmin.up('3')  = 0.10                           ;


 reflux.lo(dist) = rmin.lo(dist) * 1.2          ;
 reflux.up(dist) = rmin.up(dist) * 1.2          ;

 distp.lo(dist)  = 0.1                          ;
 distp.up(dist)  = 4.0                          ;

* fix pressure at 1.02 mpa ( 150 psia )
 distp.fx('1')   = 1.020                        ;
 distp.up('2')   = 0.400                        ;
 distp.up('3')   = 0.250                        ;

* fix top temperature at 320 k


 t.fx('26')      = 3.20                         ;


 t.lo('27')  = ( antb('ben') / ( anta('ben') - log( distp.lo('1') *
                7500.6168 ) ) -  antc('ben') ) / 100.    ;

 t.up('27')  = ( antb('ben') / ( anta('ben') - log( distp.up('1') *
                7500.6168 ) ) -  antc('ben') ) / 100.    ;

 t.lo('31')  = ( antb('ben') / ( anta('ben') - log( distp.lo('2') *
                7500.6168 ) ) -  antc('ben') ) / 100.    ;

 t.up('31')  = ( antb('ben') / ( anta('ben') - log( distp.up('2') *
                7500.6168 ) ) -  antc('ben') ) / 100.    ;

 t.lo('32')  = ( antb('tol') / ( anta('tol') - log( distp.lo('2') *
                7500.6168 ) ) -  antc('tol') ) / 100.    ;

 t.up('32')  = ( antb('tol') / ( anta('tol') - log( distp.up('2') *
                7500.6168 ) ) -  antc('tol') ) / 100.    ;

 t.lo('34')  = ( antb('tol') / ( anta('tol') - log( distp.lo('3') *
                7500.6168 ) ) -  antc('tol') ) / 100.    ;

 t.up('34')  = ( antb('tol') / ( anta('tol') - log( distp.up('3') *
                7500.6168 ) ) -  antc('tol') ) / 100.    ;

 t.lo('35')  = ( antb('dip') / ( anta('dip') - log( distp.lo('3') *
                7500.6168 ) ) -  antc('dip') ) / 100.    ;

 t.up('35')  = ( antb('dip') / ( anta('dip') - log( distp.up('3') *
                7500.6168 ) ) -  antc('dip') ) / 100.    ;


 vp.lo(str,compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.lo(str) * 100. + antc(compon) ) )             ;

 vp.up(str,compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.up(str) * 100. + antc(compon) ) )             ;



 avevlt.lo(dist) = sum( compon $ dlkey(dist,compon) ,
              sum( str    $ ldist(dist,str)    , vp.up(str,compon) ) ) /
              sum( compon $ dhkey(dist,compon) ,
              sum( str    $ ldist(dist,str)    , vp.up(str,compon) ) ) ;

 avevlt.up(dist) = sum( compon $ dlkey(dist,compon) ,
              sum( str    $ vdist(dist,str)    , vp.lo(str,compon) ) ) /
              sum( compon $ dhkey(dist,compon) ,
              sum( str    $ vdist(dist,str)    , vp.lo(str,compon) ) ) ;




*    ==================
*    =   f l a s h    =
*    ==================



 eflsh.up(flsh,compon) = 1.           ;
 eflsh.lo(flsh,compon) = 0.           ;

 eflsh.lo('1','h2')   = 0.975    ;
 eflsh.lo('1','ch4')  = 0.975    ;
 eflsh.up('1','ben')  = 0.075    ;
 eflsh.up('1','tol')  = 0.050    ;
 eflsh.up('1','dip')  = 0.001    ;

 eflsh.lo('2','h2')   = 0.975    ;
 eflsh.lo('2','ch4')  = 0.975    ;
 eflsh.up('2','ben')  = 0.20     ;
 eflsh.up('2','tol')  = 0.10     ;
 eflsh.up('2','dip')  = 0.01     ;

 eflsh.lo('3','h2')   = 0.99     ;
 eflsh.lo('3','ch4')  = 0.99     ;
 eflsh.lo('3','ben')  = 0.90     ;
 eflsh.lo('3','tol')  = 0.90     ;
 eflsh.up('3','dip')  = 0.40     ;

 flshp.lo('1') = 2.5        ;
 flshp.up('1') = 3.25       ;

 flshp.lo('2') = 0.1        ;
 flshp.up('2') = 3.25       ;

 flshp.lo('3') = 0.1        ;
 flshp.up('3') = 3.25       ;

 flsht.lo('1') = 3.00       ;
 flsht.up('1') = 4.50       ;

 flsht.lo('2') = 3.00       ;
 flsht.up('2') = 4.50       ;

 flsht.lo('3') = 3.00       ;
 flsht.up('3') = 6.50       ;

 t.lo('19')     = flsht.lo('1') ;
 t.up('19')     = flsht.up('1') ;

 vp.lo('19',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.lo('19') * 100. + antc(compon) ) )            ;

 vp.up('19',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.up('19') * 100. + antc(compon) ) )            ;

 t.lo('48')     = flsht.lo('2') ;
 t.up('48')     = flsht.up('2') ;

 vp.lo('48',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.lo('48') * 100. + antc(compon) ) )            ;

 vp.up('48',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.up('48') * 100. + antc(compon) ) )            ;

*t.lo('41')     = flsht.lo('3') ;
 t.lo('41')     = t.lo('32')    ;
 t.up('41')     = flsht.up('3') ;

 vp.lo('41',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.lo('41') * 100. + antc(compon) ) )            ;

 vp.up('41',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.up('41') * 100. + antc(compon) ) )            ;




*    ======================
*    =   f u r n a c e    =
*    ======================

 qfuel.up(furn)  =  10.   ;




*    ====================
*    =   c o o l e r    =
*    ====================


 qc.up(hec)   = 10.          ;




*    ====================
*    =   h e a t e r    =
*    ====================


 qh.up(heh)   = 10.          ;


*    ==========================
*    =   e x c h a n g e r    =
*    ==========================

 qexch.up(exch) = 10.        ;



*    =======================
*    =   m e m b r a n e   =
*    =======================


 a.lo(memb)          = 100         ;
 a.up(memb)          = 10000       ;




*    ==================
*    =   m i x e r    =
*    =  (1 output)    =
*    ==================


 mxr1t.lo(mxr1) = 3.0          ;
 mxr1t.up(mxr1) = 10.0         ;
 mxr1p.lo(mxr1) = 0.1          ;
 mxr1p.up(mxr1) = 4.0          ;




*    ==================
*    =   m i x e r    =
*    ==================


 mxrt.lo(mxr) = 3.0          ;
 mxrt.up(mxr) = 10.0         ;
 mxrp.lo(mxr) = 0.1          ;
 mxrp.up(mxr) = 4.0          ;




*    =====================
*    =   r e a c t o r   =
*    =====================


 rctt.lo(rct) = 8.9427       ;
 rctt.up(rct) = 9.7760       ;

 rctp.fx(rct) = 3.4474       ;

 rctvol.up(rct) = 200.       ;

 krct.lo(rct)   = 6.3e+10 * exp( -26167. / ( rctt.lo(rct) * 100. ) )  ;
 krct.up(rct)   = 6.3e+10 * exp( -26167. / ( rctt.up(rct) * 100. ) )  ;

 conv.up(rct,'tol') = 0.973  ;

 sel.up(rct)  = 1.0 - 0.0036 ;

 q.up('2')    = 100.         ;



*    =======================
*    =   s p l i t t e r   =
*    =     (1 outlet)      =
*    =======================


 spl1t.lo(spl1) = 3.00         ;
 spl1t.up(spl1) = 10.00        ;

 spl1p.lo(spl1) = 0.1          ;
 spl1p.up(spl1) = 4.0          ;




*    =======================
*    =   s p l i t t e r   =
*    =======================


 splt.lo(spl) = 3.00         ;
 splt.up(spl) = 10.00        ;

 splp.lo(spl) = 0.1          ;
 splp.up(spl) = 4.0          ;




*    =========================
*    =   o  t  h  e  r  s    =
*    =========================


 f.fx('31') = 2.08    ;

 t.lo('9')  =  8.943  ;
 t.up('16') =  8.943  ;

 t.fx('1')  =  3.0    ;
 p.fx('1')  =  3.930  ;

 p.fx('66') =  3.930  ;
 t.fx('66') =  3.00   ;





*                   + + + + + + + + + + + + + + + + + +
*                   +                                 +
*                   +       i  n  i  t  i  a  l       +
*                   +                                 +
*                   +          p  o  i  n  t          +
*                   +                                 +
*                   + + + + + + + + + + + + + + + + + +


* ---------------------------------------
* _  b i n a r y     v a r i a b l e s  _
* _______________________________________

 y.l(str) = 0.0    ;

 y.l('2')  = 1.0    ;
*y.l('10') = 1.0    ;
 y.l('12') = 1.0    ;
 y.l('24') = 1.0    ;
*y.l('33') = 1.0    ;
 y.l('37') = 1.0    ;
*y.l('53') = 1.0    ;
 y.l('54') = 1.0    ;
 y.l('59') = 1.0    ;

*y.fx(str) = y.l(str) ;

* -----------------------------------------------
* _  c o n t i n u o u s    v a r i a b l e s   _
* _______________________________________________


 t.l(str)  =  3.0     ;
 p.l(str)  =  3.0     ;
 f.l('1')  =  4.5  -  2.0 * y.l('54')            ;
 fc.l('1',compon)  =  f.l('1') * f1comp(compon)  ;


*   ---------------
*   - b y p a s s -
*   ---------------

 fc.l('2',compon)  = fc.l('1',compon)  *  y.l('2')    ;
 t.l('2')  =  t.l('1')                                ;
 p.l('2')  =  p.l('1')                                ;


*   -----------------------
*   - m e m b r a n e   1 -
*   -----------------------

 fc.l('3',compon)  = fc.l('1',compon)  *  y.l('3')    ;
 fc.l('4',compon)  = fc.l('3',compon)                 ;
 fc.l('5',compon)  = fc.l('4',compon)                 ;

 t.l('3')  =  t.l('1')                  ;
 t.l('4')  =  t.l('1')                  ;
 t.l('5')  =  t.l('1')                  ;

 p.l('3')  =  p.l('3')                  ;
 p.l('4')  =  p.l('3')                  ;
 p.l('5')  =  p.l('3') * 0.25           ;


*   ---------------------------
*   - c o m p r e s s o r   1 -
*   ---------------------------

 fc.l('6',compon)  = fc.l('5',compon)   ;

 p.l('6')  =  p.l('1')                                 ;
 presrat.l('1')  =  ( p.l('6') / p.l('5') ) ** 0.23    ;
 t.l('6')  =  t.l('5') * presrat.l('1')                ;


*   ---------------------
*   - 1 - m i x e r   1 -
*   ---------------------

 fc.l('7',compon)  = fc.l('1',compon) + fc.l('6',compon)   ;
 t.l('7')  =  t.l('2') * y.l('2')  +  t.l('6') * y.l('3')  ;
 p.l('7')  =  p.l('1')                                     ;


*   -----------------------
*   - h 2   r e c y c l e -
*   -----------------------

 fc.l('57','h2')   = 2.5  *  y.l('54')  ;
 fc.l('57','ch4')  = 0.5  *  y.l('54')  ;
 fc.l('57','ben')  = 0.0  *  y.l('54')  ;
 fc.l('57','tol')  = 0.0  *  y.l('54')  ;
 fc.l('57','dip')  = 0.0  *  y.l('54')  ;
 p.l('57')  =  p.l('1')                 ;


 fc.l('60','h2')   = 14.0 *  y.l('59')  -   2.0  *  y.l('54')  ;
 fc.l('60','ch4')  = 14.0 *  y.l('59')  -   2.0  *  y.l('54')  ;
 fc.l('60','ben')  = 0.0  *  y.l('59')  +   0.0  *  y.l('54')  ;
 fc.l('60','tol')  = 0.0  *  y.l('59')  +   0.0  *  y.l('54')  ;
 fc.l('60','dip')  = 0.0  *  y.l('59')  +   0.0  *  y.l('54')  ;
 p.l('60')  =  p.l('1')                 ;


 fc.l('65','h2')   = 1.0  *  y.l('63')  ;
 fc.l('65','ch4')  = 2.5  *  y.l('63')  ;
 fc.l('65','ben')  = 0.0  *  y.l('63')  ;
 fc.l('65','tol')  = 0.5  *  y.l('63')  ;
 fc.l('65','dip')  = 0.0  *  y.l('63')  ;
 p.l('66')  =  p.l('1')                 ;


 fc.l('72',compon)  = fc.l('60',compon) + fc.l('57',compon) +
                      fc.l('65',compon)                     ;
 p.l('72')  =  p.l('1')                 ;


 fc.l('59',compon)  = fc.l('60',compon)   ;
 fc.l('56',compon)  = fc.l('57',compon)   ;
 fc.l('64',compon)  = fc.l('65',compon)   ;


*   -------------------------
*   - t o l   r e c y c l e -
*   -------------------------

 fc.l('43',compon) =  0.0                 ;
 fc.l('43','ben')  =  0.1                 ;
 fc.l('43','tol')  =  2.0                 ;
 p.l('43')  =  p.l('1')                   ;

 fc.l('42',compon) = fc.l('43',compon)    ;

*   -------------------
*   - t o l   f e e d -
*   -------------------

 f.l('66')  =  2.1                                  ;
 fc.l('66',compon)  =  f.l('66') * f66comp(compon)  ;
 p.l('66')  =  p.l('1')                             ;


*   -----------------
*   - m i x e r   1 -
*   -----------------

 fc.l('8',compon)  = fc.l('7',compon)  + fc.l('43',compon) +
                     fc.l('66',compon) + fc.l('72',compon) ;

 t.l('8')  =  3.5       ;
 p.l('8')  =  p.l('1')  ;


*   -----------------------
*   - e x c h a n g e r   1
*   -----------------------

 fc.l('70',compon)  = fc.l('8',compon)  ;
 t.l('70')          = 8.693             ;
 p.l('70')          = p.l('1')          ;


*   ------------------
*   - f u r n a c e  -
*   ------------------

 fc.l('9',compon)   = fc.l('8',compon)  ;
 t.l('9')  =  8.943                     ;
 p.l('9')  =  p.l('1')  -  0.4826       ;


*   -----------------------------
*   - 1 - s p l i t t e r    2  -
*   -----------------------------

 fc.l('10',compon)  = fc.l('9',compon)  *  y.l('10')  ;
 fc.l('12',compon)  = fc.l('9',compon)  *  y.l('12')  ;

 t.l('10') = t.l('9')          ;
 t.l('12') = t.l('9')          ;

 p.l('10') = p.l('9')          ;
 p.l('12') = p.l('9')          ;

*    ---------------------
*    -   r e a c t o r   -
*    ---------------------

 f.l(str) = sum( compon , fc.l(str,compon) ) ;

 rctt.l(rct) =  9.2                                              ;
 krct.l(rct) = 6.3e+10 * exp( -26167. / ( rctt.l(rct) * 100. ) ) ;

 rctvol.l('1') = 100.  *  y.l('10')                              ;
 rctvol.l('2') = 100.  *  y.l('12')                              ;

 conv.l('1','tol') = 1.  -  sqr( 1.  /  ( 1. + 0.372 * krct.l('1')  *
         rctvol.l('1') * sqrt( fc.l('10','tol') / 60. + eps1 ) *
         ( f.l('10') / 60. + eps1 ) ** (-3./2.) )  )  ;

 conv.l('2','tol') = 1.  -  sqr( 1.  /  ( 1. + 0.372 * krct.l('2')  *
         rctvol.l('2') * sqrt( fc.l('12','tol') / 60. + eps1 ) *
         ( f.l('12') / 60. + eps1 ) ** (-3./2.) )  )  ;

 sel.l(rct) = 1. -  0.0036 *
      ( 1. - conv.l(rct,'tol') ) ** (-1.544)                     ;

 consum.l('1','tol') = conv.l('1','tol') * fc.l('10','tol')      ;
 consum.l('2','tol') = conv.l('2','tol') * fc.l('12','tol')      ;

 fc.l('11','tol') = fc.l('10','tol') - consum.l('1','tol')         ;
 fc.l('11','ben') = fc.l('10','ben') + consum.l('1','tol') * sel.l('1') ;
 fc.l('11','dip') = fc.l('10','dip') + consum.l('1','tol') *
                   ( 1 - sel.l('1') ) / 2.                       ;
 fc.l('11','h2')  = fc.l('10','h2')  -  consum.l('1','tol')  *
                                      ( 1 + sel.l('1') ) / 2.    ;
 fc.l('11','ch4') = fc.l('10','ch4') + consum.l('1','tol')       ;


 fc.l('13','tol') = fc.l('12','tol') - consum.l('2','tol')         ;
 fc.l('13','ben') = fc.l('12','ben') + consum.l('2','tol') * sel.l('2') ;
 fc.l('13','dip') = fc.l('12','dip') + consum.l('2','tol') *
                   ( 1 - sel.l('2') ) / 2.                       ;
 fc.l('13','h2')  = fc.l('12','h2')  -  consum.l('2','tol')  *
                                      ( 1 + sel.l('2') ) / 2.    ;
 fc.l('13','ch4') = fc.l('12','ch4') + consum.l('2','tol')       ;


 f.l(str) = sum( compon , fc.l(str,compon) ) ;

 t.l('11')  =  ( heatrxn('1') * consum.l('1','tol') / ( 100. * cp('10') )
             +  f.l('10') * t.l('10') ) / ( f.l('11') + eps1 )       ;

 t.l('13')  =  ( heatrxn('2') * consum.l('2','tol') / ( 100. * cp('12') )
             +  f.l('12') * t.l('12') ) / ( f.l('13') + eps1 )       ;

 p.l('11') = p.l('9') - 0.2068 ;
 p.l('13') = p.l('9') - 0.2068 ;


*    -------------------------
*    -   1 - m i x e r   2   -
*    -------------------------

 fc.l('14',compon) = fc.l('11',compon) + fc.l('13',compon)           ;
 t.l('14') = t.l('11') * y.l('10')  +  t.l('13') * y.l('12')         ;
 p.l('14') = p.l('11')                                               ;

*    ----------------
*    -   e x p   3  -
*    ----------------

 fc.l('15',compon) = fc.l('14',compon)     ;
 t.l('15') = t.l('14')  ;
 p.l('15') = p.l('14')  ;


*    --------------------
*    -   m i x e r   2  -
*    --------------------

 fc.l('16','h2')  =  fc.l('15','h2')         ;
 fc.l('16','ch4') =  fc.l('15','ch4')        ;
 fc.l('16','ben') =  fc.l('15','ben') * 1.2  ;
 fc.l('16','tol') =  fc.l('15','tol') * 1.2  ;
 fc.l('16','dip') =  fc.l('15','dip') * 1.2  ;

 t.l('16') = 8.943      ;
 p.l('16') = p.l('15')  ;


*   -----------------------
*   - e x c h a n g e r   1
*   -----------------------

 fc.l('71',compon)  = fc.l('16',compon) ;
 t.l('71') = 5.0        ;
 p.l('71') = p.l('16')  ;


*   ------------------
*   - c o o l e r  1 -
*   ------------------

 fc.l('17',compon)  = fc.l('71',compon) ;
 t.l('17') = 3.0        ;
 p.l('17') = p.l('71')  ;


*    ---------------------
*    -   f l a s h   1   -
*    ---------------------

 eflsh.l('1','h2')  = 0.995  ;
 eflsh.l('1','ch4') = 0.99   ;
 eflsh.l('1','ben') = 0.04   ;
 eflsh.l('1','tol') = 0.01   ;
 eflsh.l('1','dip') = 0.0001 ;

 fc.l('18',compon)  = fc.l('17',compon) * eflsh.l('1',compon) ;
 fc.l('19',compon)  = fc.l('17',compon) - fc.l('18',compon)   ;

 t.l('17') = 3.0                                              ;
 t.l('18') = 3.0                                              ;
 t.l('19') = 3.0                                              ;

 p.l('18') = p.l('17')  ;
 p.l('19') = p.l('17')  ;

 vp.l('19',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.l('19') * 100. + antc(compon) ) )     ;


*    -------------------------------------
*    -   q u e n c h    s p l i t t e r  -
*    -------------------------------------

 fc.l('20',compon) = fc.l('19',compon) * 0.20  ;
 fc.l('21',compon) = fc.l('19',compon) * 0.80  ;

 t.l('20') = t.l('19')  ;
 t.l('21') = t.l('19')  ;

 p.l('20') = p.l('19')  ;
 p.l('21') = p.l('19')  ;


*    --------------------
*    -   m i x e r   3  -
*    --------------------

 fc.l('69',compon) = 0.0    *  y.l('63')                   ;
 fc.l('22',compon) = fc.l('21',compon) + fc.l('69',compon) ;

 t.l('22') = t.l('21')  ;
 p.l('22') = p.l('21')  ;


*   ---------------------------
*   - 1 - s p l i t t e r   3 -
*   ---------------------------

 fc.l('23',compon) = fc.l('22',compon) * y.l('23')   ;
 fc.l('24',compon) = fc.l('22',compon) * y.l('24')   ;

 t.l('23') = t.l('22')  ;
 t.l('24') = t.l('22')  ;
 p.l('23') = p.l('22')  ;
 p.l('24') = p.l('22')  ;


*   ------------------
*   - h e a t e r  1 -
*   ------------------

 fc.l('25',compon) = fc.l('24',compon)         ;
 t.l('25') = t.l('24')  ;
 p.l('25') = p.l('24')  ;


*    ------------------------
*    -   c o l u m n - 1    -
*    ------------------------

 nmin.l('1')  = 2.5 * y.l('24')    ;
 ndist.l('1') = nmin.l('1') * 4    ;

 rmin.l('1')   = 0.06              ;
 reflux.l('1') = 1.2 * rmin.l('1') ;

 distp.l('1')  = 1.02              ;
 avevlt.l('1') = 250.              ;

 fc.l('26','h2')   = fc.l('25','h2')  * 1.00   ;
 fc.l('26','ch4')  = fc.l('25','ch4') * 0.99   ;
 fc.l('26','ben')  = fc.l('25','ben') * 0.01   ;
 fc.l('26','tol')  = fc.l('25','tol') * 0.00   ;
 fc.l('26','dip')  = fc.l('25','dip') * 0.00   ;

 fc.l('27',compon) = fc.l('25',compon) - fc.l('26',compon) ;

 p.l('26')  =  distp.l('1')  ;
 p.l('27')  =  distp.l('1')  ;

 t.l('26') =  t.lo('26') ;
 t.l('27') =  t.lo('27') + 0.1 ;

 vp.l('26','ch4') = ( 1. / 7500.6168 ) * exp( anta('ch4')
   - antb('ch4') / ( t.l('26') * 100. + antc('ch4') ) )     ;

 vp.l('26','ben') = ( 1. / 7500.6168 ) * exp( anta('ben')
   - antb('ben') / ( t.l('26') * 100. + antc('ben') ) )     ;

 vp.l('27','ch4') = ( 1. / 7500.6168 ) * exp( anta('ch4')
   - antb('ch4') / ( t.l('27') * 100. + antc('ch4') ) )     ;

 vp.l('27','ben') = ( 1. / 7500.6168 ) * exp( anta('ben')
   - antb('ben') / ( t.l('27') * 100. + antc('ben') ) )     ;


*   ------------------
*   - h e a t e r  1 -
*   ------------------

 fc.l('44',compon)  =  fc.l('23',compon)  ;
 p.l('44') = p.l('23')                    ;
 t.l('44') = 3.0 * ( 3.24 / 0.1 )**0.23   ;


*    ----------------
*    -   e x p   3  -
*    ----------------

 fc.l('45',compon)  =  fc.l('44',compon)  ;
 p.l('45') = 0.1  ;
 t.l('45') = 3.0  ;


*   ------------------
*   - c o o l e r  2 -
*   ------------------

 fc.l('46',compon)  =  fc.l('45',compon)  ;
 p.l('46') = p.l('45') ;
 t.l('46') = t.l('45') ;


*    ---------------------
*    -   f l a s h   2   -
*    ---------------------

 t.l('47') = t.l('46')                                        ;
 t.l('48') = t.l('46')                                        ;

 p.l('47') = p.l('46')                                        ;
 p.l('48') = p.l('46')                                        ;

 vp.l('48',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.l('48') * 100. + antc(compon) ) )     ;

 eflsh.l('2','h2')  = 0.99   ;
 eflsh.l('2','ch4') = 0.99   ;
 eflsh.l('2','ben') = 0.05   ;
 eflsh.l('2','tol') = 0.02   ;
 eflsh.l('2','dip') = 0.0001 ;

 fc.l('47',compon)  =  fc.l('46',compon) * eflsh.l('2',compon) ;
 fc.l('48',compon)  =  fc.l('46',compon) - fc.l('47',compon)   ;


*    ----------------
*    -   e x p   4  -
*    ----------------

 fc.l('49',compon)  =  fc.l('47',compon)  ;
 p.l('49') = p.l('47') ;
 t.l('49') = t.l('47') ;


*    -------------------------
*    -   1 - m i x e r   3   -
*    -------------------------

 fc.l('30',compon) = fc.l('27',compon) + fc.l('48',compon)    ;
 t.l('30') = t.l('27') * y.l('24')  +  t.l('48') * y.l('23')  ;
 p.l('30') = p.l('27') * y.l('24')  +  p.l('48') * y.l('23')  ;


*   ------------------------
*   -  s p l i t t e r   3 -
*   ------------------------

 e.l('28') = 0.9              ;
 e.l('29') = 1.0 - e.l('28')  ;

 fc.l('28',compon)  =  fc.l('26',compon) * e.l('28')  ;
 fc.l('29',compon)  =  fc.l('26',compon) * e.l('29')  ;

 p.l('28') = p.l('26') ;
 p.l('29') = p.l('29') ;
 t.l('28') = t.l('26') ;
 t.l('29') = t.l('29') ;


*    ----------------
*    -   e x p   5  -
*    ----------------

 fc.l('50',compon)  =  fc.l('29',compon)  ;
 p.l('50') = p.l('49')                    ;
 t.l('50') = t.l('29') * ( p.l('50') / p.l('29') ) ** 0.23  ;

*    ----------------------
*    -    m i x e r   5   -
*    ----------------------

 fc.l('51',compon)  =  fc.l('49',compon) + fc.l('50',compon) ;
 p.l('51') = p.l('49')  ;
 t.l('51') = t.l('49') * y.l('23')  +  t.l('50') * y.l('24') ;


*    ------------------------
*    -   c o l u m n - 2    -
*    ------------------------

 nmin.l('2')  = 12.0               ;
 ndist.l('2') = nmin.l('2') * 4    ;

 rmin.l('2')   = 1.3               ;
 reflux.l('2') = 1.2 * rmin.l('2') ;

 distp.l('2')  = 0.1               ;
 avevlt.l('2') = 2.5               ;

 p.l('31')  =  distp.l('2')        ;
 p.l('32')  =  distp.l('2')        ;

 t.l('31') =  t.lo('31') + 0.1 ;
 t.l('32') =  t.lo('32') + 0.1 ;

 fc.l('31','h2')   = fc.l('30','h2')  * 1.00   ;
 fc.l('31','ch4')  = fc.l('30','ch4') * 1.00   ;
 fc.l('31','ben')  = fc.l('30','ben') * 0.99   ;
 fc.l('31','tol')  = fc.l('30','tol') * 0.01   ;
 fc.l('31','dip')  = fc.l('30','dip') * 0.00   ;

 fc.l('32',compon) = fc.l('30',compon) - fc.l('31',compon) ;

 vp.l('31','ben') = ( 1. / 7500.6168 ) * exp( anta('ben')
   - antb('ben') / ( t.l('31') * 100. + antc('ben') ) )     ;

 vp.l('31','tol') = ( 1. / 7500.6168 ) * exp( anta('tol')
   - antb('tol') / ( t.l('31') * 100. + antc('tol') ) )     ;

 vp.l('32','ben') = ( 1. / 7500.6168 ) * exp( anta('ben')
   - antb('ben') / ( t.l('32') * 100. + antc('ben') ) )     ;

 vp.l('32','tol') = ( 1. / 7500.6168 ) * exp( anta('tol')
   - antb('tol') / ( t.l('32') * 100. + antc('tol') ) )     ;


*   ----------------------------
*   - 1 - s p l i t t e r   4  -
*   ----------------------------

 fc.l('33',compon) = fc.l('32',compon) * y.l('33')  ;
 fc.l('37',compon) = fc.l('32',compon) * y.l('37')  ;

 t.l('33') =  t.l('32')  ;
 t.l('37') =  t.l('32')  ;
 p.l('33') =  p.l('32')  ;
 p.l('37') =  p.l('32')  ;


*    ------------------------
*    -   c o l u m n - 3    -
*    ------------------------

 nmin.l('3')  = 2.5 * y.l('33')    ;
 ndist.l('3') = nmin.l('3') * 4    ;

 rmin.l('3')   = 0.03              ;
 reflux.l('3') = 1.2 * rmin.l('3') ;

 distp.l('3')  = 0.1               ;
 avevlt.l('3') = 40.               ;

 fc.l('34','h2')   = fc.l('33','h2')  * 1.00   ;
 fc.l('34','ch4')  = fc.l('33','ch4') * 1.00   ;
 fc.l('34','ben')  = fc.l('33','ben') * 1.00   ;
 fc.l('34','tol')  = fc.l('33','tol') * 0.99   ;
 fc.l('34','dip')  = fc.l('33','dip') * 0.00   ;

 fc.l('35',compon) = fc.l('33',compon) - fc.l('34',compon) ;

 p.l('34') = distp.l('3')  ;
 p.l('35') = distp.l('3')  ;

 t.l('34') =  t.lo('34') + 0.1 ;
 t.l('35') =  t.lo('35') + 0.1 ;

 vp.l('34','tol') = ( 1. / 7500.6168 ) * exp( anta('tol')
   - antb('tol') / ( t.l('34') * 100. + antc('tol') ) )     ;

 vp.l('34','dip') = ( 1. / 7500.6168 ) * exp( anta('dip')
   - antb('dip') / ( t.l('34') * 100. + antc('dip') ) )     ;

 vp.l('35','tol') = ( 1. / 7500.6168 ) * exp( anta('tol')
   - antb('tol') / ( t.l('35') * 100. + antc('tol') ) )     ;

 vp.l('35','dip') = ( 1. / 7500.6168 ) * exp( anta('dip')
   - antb('dip') / ( t.l('35') * 100. + antc('dip') ) )     ;


*    --------------------
*    -  h e a t e r  3  -
*    --------------------

 fc.l('38',compon) = fc.l('37',compon)         ;
 p.l('38') = p.l('37')     ;
 t.l('38') = t.l('37')     ;


*    ----------------
*    -   e x p   2  -
*    ----------------

 fc.l('39',compon) = fc.l('38',compon)         ;
 p.l('39') = 0.1           ;
 t.l('39') = t.l('38')     ;


*    ---------------------
*    -   f l a s h   3   -
*    ---------------------

 eflsh.l('2','h2')  = 0.999  ;
 eflsh.l('2','ch4') = 0.999  ;
 eflsh.l('2','ben') = 0.999  ;
 eflsh.l('2','tol') = 0.95   ;
 eflsh.l('2','dip') = 0.25   ;

 fc.l('40',compon)  = fc.l('39',compon) * eflsh.l('2',compon) ;
 fc.l('41',compon)  = fc.l('39',compon) - fc.l('40',compon)   ;

 t.l('41') = 4.0                                              ;

 vp.l('41',compon) = ( 1. / 7500.6168 ) * exp( anta(compon)
   - antb(compon) / ( t.l('41') * 100. + antc(compon) ) )     ;

 p.l('40') = p.l('39')     ;
 p.l('41') = p.l('39')     ;
 t.l('40') = t.l('41')     ;


*   ------------------------
*   -  s p l i t t e r   2 -
*   ------------------------

 e.l('52') = 0.2              ;
 e.l('58') = 1.0 - e.l('52')  ;

 fc.l('52',compon)  =  fc.l('18',compon) * e.l('52')  ;
 fc.l('58',compon)  =  fc.l('18',compon) * e.l('58')  ;

 p.l('52') = p.l('18') ;
 p.l('58') = p.l('18') ;
 t.l('52') = t.l('18') ;
 t.l('58') = t.l('18') ;

*   ----------------------------
*   - 1 - s p l i t t e r   5  -
*   ----------------------------

 fc.l('53',compon) = fc.l('52',compon) * y.l('53')  ;
 fc.l('54',compon) = fc.l('52',compon) * y.l('54')  ;

 t.l('53') =  t.l('52')  ;
 t.l('54') =  t.l('52')  ;
 p.l('53') =  p.l('52')  ;
 p.l('54') =  p.l('52')  ;


*   ------------------------
*   - m e m b r a n e   2  -
*   ------------------------

 fc.l('55','h2')  = fc.l('54','h2')  * 0.2  ;
 fc.l('55','ch4') = fc.l('54','ch4') * 0.9  ;
 fc.l('55','ben') = fc.l('54','ben') * 1.0  ;
 fc.l('55','tol') = fc.l('54','tol') * 1.0  ;
 fc.l('55','dip') = fc.l('54','dip') * 1.0  ;

 fc.l('56',compon) = fc.l('54',compon) - fc.l('55',compon) ;

 t.l('55') =  t.l('54')        ;
 t.l('56') =  t.l('54')        ;
 p.l('55') =  p.l('54')        ;
 p.l('56') =  p.l('54') * 0.25 ;


*   ----------------------------
*   - 1 - s p l i t t e r   6  -
*   ----------------------------

 fc.l('61',compon) = fc.l('58',compon) * y.l('61')  ;

 t.l('61') =  t.l('58')  ;
 p.l('61') =  p.l('58')  ;


*    --------------------
*    -  h e a t e r  4  -
*    --------------------

 fc.l('73',compon)  =  fc.l('61',compon)        ;
 p.l('73') = p.l('61')                          ;
 t.l('73') = t.l('61') * ( 3.24 / 0.1 )**0.23   ;


*    ----------------
*    -   e x p   6  -
*    ----------------

 fc.l('62',compon) = fc.l('73',compon)              ;
 p.l('62') =  p.l('51')  ;
 t.l('62') =  3.0        ;


*   -----------------
*   - m i x e r   4 -
*   -----------------

 fc.l('63',compon) = fc.l('51',compon) - fc.l('62',compon) ;

 t.l('63') =  t.l('62')        ;
 p.l('63') =  p.l('62')        ;


*    -----------------------
*    -   a b s o r b e r   -
*    -----------------------

 f.l('63')  = sum( compon , fc.l('63',compon) )        ;

 f.l('67')  =  f.l('63') * 0.20    ;
 fc.l('67',compon) = f.l('67') * f67comp(compon)       ;

 nabs.l(abs) = 30. * y.l('63')     ;

 gamma.l(abs,'tol') = log( (1 - aabs('tol')**(nabs.l(abs) *
                      abseff + eps1) ) / (1 - aabs('tol')) )  ;

 beta.l(abs,compon) = log( (1 - aabs(compon)**(nabs.l(abs) *
                      abseff +  1.0) ) / (1 - aabs(compon)) ) ;

 fc.l('64',compon) $ asimp('1',compon)  =  fc.l('63',compon) /
                                           cbeta(compon)             ;

 fc.l('64',compon) $ anorm('1',compon)   = fc.l('63',compon) /
                                          exp( beta.l('1',compon) )  ;

 fc.l('64',compon) $ asolv('1',compon)   = ( fc.l('63',compon) +
                      fc.l('67',compon) * exp( gamma.l('1',compon) ) )
                                        / exp( beta.l('1',compon) )  ;

 fc.l('65','ben')   = fc.l('64','ben')                               ;


 fc.l('68',compon)  = fc.l('63',compon) + fc.l('67',compon) -
                      fc.l('64',compon)                              ;

 f.l(str)  = sum( compon , fc.l(str,compon) )        ;






 display f.l      ;
 display fc.l     ;
 display t.l      ;
 display p.l      ;
 display rctvol.l ;
 display conv.l   ;
 display consum.l ;
 display krct.l   ;
 display sel.l    ;
 display nmin.l   ;
 display ndist.l  ;
 display vp.l     ;
 display gamma.l  ;
 display beta.l   ;
 display eflsh.l  ;



 option  limcol = 0     ,  limrow  = 100         ;
 option  domlim  = 1000     ;


 model   douglas   / all /              ;


 solve   douglas  maximizing profit  using minlp ;


$ontext

 option limrow = 0 ;

*y.fx(str) = 0.0    ;

*y.fx('2')  = 1.0    ;
*y.fx('10') = 1.0    ;
*y.fx('24') = 1.0    ;
*y.fx('37') = 1.0    ;
*y.fx('53') = 1.0    ;
*y.fx('59') = 1.0    ;




*   switch to reactor #2

  y.l('10') = 0.0    ;
  y.l('12') = 1.0    ;


*   -----------------------------
*   - 1 - s p l i t t e r    2  -
*   -----------------------------

 fc.l('10',compon)  = fc.l('9',compon)  *  y.l('10')  ;
 fc.l('12',compon)  = fc.l('9',compon)  *  y.l('12')  ;


*    ---------------------
*    -   r e a c t o r   -
*    ---------------------

 f.l(str) = sum( compon , fc.l(str,compon) ) ;

 krct.l(rct) = 6.3e+10 * exp( -26167. / ( rctt.l(rct) * 100. ) ) ;

 rctvol.l('1') = 100.  *  y.l('10')                              ;
 rctvol.l('2') = 100.  *  y.l('12')                              ;

 conv.l('1','tol') = 1.  -  sqr( 1.  /  ( 1. + 0.372 * krct.l('1')  *
         rctvol.l('1') * sqrt( fc.l('10','tol') / 60. + eps1 ) *
         ( f.l('10') / 60. + eps1 ) ** (-3./2.) )  )  ;

 conv.l('2','tol') = 1.  -  sqr( 1.  /  ( 1. + 0.372 * krct.l('2')  *
         rctvol.l('2') * sqrt( fc.l('12','tol') / 60. + eps1 ) *
         ( f.l('12') / 60. + eps1 ) ** (-3./2.) )  )  ;

 sel.l(rct) = 1. -  0.0036 *
      ( 1. - conv.l(rct,'tol') ) ** (-1.544)                     ;

 consum.l('1','tol') = conv.l('1','tol') * fc.l('10','tol')      ;
 consum.l('2','tol') = conv.l('2','tol') * fc.l('12','tol')      ;

 fc.l('11','tol') = fc.l('10','tol') - consum.l('1','tol')         ;
 fc.l('11','ben') = fc.l('10','ben') + consum.l('1','tol') * sel.l('1') ;
 fc.l('11','dip') = fc.l('10','dip') + consum.l('1','tol') *
                   ( 1 - sel.l('1') ) / 2.                       ;
 fc.l('11','h2')  = fc.l('10','h2')  -  consum.l('1','tol')  *
                                      ( 1 + sel.l('1') ) / 2.    ;
 fc.l('11','ch4') = fc.l('10','ch4') + consum.l('1','tol')       ;


 fc.l('13','tol') = fc.l('12','tol') - consum.l('2','tol')         ;
 fc.l('13','ben') = fc.l('12','ben') + consum.l('2','tol') * sel.l('2') ;
 fc.l('13','dip') = fc.l('12','dip') + consum.l('2','tol') *
                   ( 1 - sel.l('2') ) / 2.                       ;
 fc.l('13','h2')  = fc.l('12','h2')  -  consum.l('2','tol')  *
                                      ( 1 + sel.l('2') ) / 2.    ;
 fc.l('13','ch4') = fc.l('12','ch4') + consum.l('2','tol')       ;


 f.l(str) = sum( compon , fc.l(str,compon) ) ;

 t.l('11')  =  ( heatrxn('1') * consum.l('1','tol') / ( 100. * cp('10') )
             +  f.l('10') * t.l('10') ) / ( f.l('11') + eps1 )       ;

 t.l('13')  =  ( heatrxn('2') * consum.l('2','tol') / ( 100. * cp('12') )
             +  f.l('12') * t.l('12') ) / ( f.l('13') + eps1 )       ;


 solve   douglas  maximizing profit  using nlp ;




*   add membrane #2

  y.l('53') = 0.0    ;
  y.l('54') = 1.0    ;




*   ----------------------------
*   - 1 - s p l i t t e r   5  -
*   ----------------------------

 fc.l('53',compon) = fc.l('52',compon) * y.l('53')  ;
 fc.l('54',compon) = fc.l('52',compon) * y.l('54')  ;


*   ------------------------
*   - m e m b r a n e   2  -
*   ------------------------

 fc.l('55','h2')  = fc.l('54','h2')  * 0.2  ;
 fc.l('55','ch4') = fc.l('54','ch4') * 0.9  ;
 fc.l('55','ben') = fc.l('54','ben') * 1.0  ;
 fc.l('55','tol') = fc.l('54','tol') * 1.0  ;
 fc.l('55','dip') = fc.l('54','dip') * 1.0  ;

 fc.l('56',compon) = fc.l('54',compon) - fc.l('55',compon) ;

 t.l('55') =  t.l('54')        ;
 t.l('56') =  t.l('54')        ;
 p.l('55') =  p.l('54')        ;
 p.l('56') =  p.l('54') * 0.25 ;


 solve   douglas  maximizing profit  using nlp ;

$offtext


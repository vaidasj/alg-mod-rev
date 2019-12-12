option MINLP=convert;
option MINLP=convert;
option MINLP=convert;
$Title Optimum feed plate location (FEEDTRAY,SEQ=122)
$Stitle   System  ---  Benzene - Toluene at about 1 bar

$Ontext

This model determines the optimum location of feed plates in
a distillation column with 7 ideal stages, a total condenser and
a kettle-type reboiler. The feed consists of a mixture of benzene
and toluene entering at bubble point.


Morari, M, and Grossmann, I E, Eds, Chemical Engineering Optimization
Models with GAMS. Computer Aids for Chemical Engineering Corporation,
1991.

Vishwanathan, J, and Grossmann, I E, A Combined Penalty Function and
Outer Approximation Method for Mixed Integer Nonlinear Programming.
Computers and Chemical Engineering 14, 7 (1990), 769-782.


                                Section 1
                                Basic Data
                                ___________

        Basic Thermodynamic Data have been taken from

        R.C. Reid, J.M. Prausnitz and B.E. Poling :

        " The Properties of gases and liquids "

        4th Edition, McGraw-Hill (1987)


        Units:  Pressure : in bars i.e. 0.1 Mpa
                Temperature : in kelvins
                Heat capacity : kJ/kmol K
        Abbreviations :  mm   Molar mass
                         Tb   Normal boiling point
                         Tc   Critical temperature
                         Pc   Critical Pressure
$Offtext

 Set  j  components  / benzene , toluene /;

 Table  prcon (j,*)    basic physical properties

                mm        tb      tc        pc       omega    liq-den  tden

  benzene    78.114     353.2   562.2      48.9      0.212    0.885    289
  toluene    92.141     383.8   591.8      41.0      0.263    0.867    293

 Table  vpcon(j,*)    constants in the weird equation for vap.pressure
            a            b             c             d         tmin
 benzene   -6.98273    1.33213      -2.62863       -3.33399     288
 toluene   -7.28607    1.38091      -2.83433       -2.79168     309

 Table  cpcon(j,*)  constants for the isobaric heat capacity equation
              a           b             c           d
 benzene   -3.392e+1    4.739e-1     -3.017e-4   7.130e-8
 toluene   -2.435e+1    5.125e-1     -2.765e-4   4.911e-8

  Scalars       treb    guess temperature for reboiler
                tbot    guess temperature for bottom-most tray
                ttop    guess temperature for top-most tray
                tcon    guess temperature for condenser  ;
                treb = 380; tbot = 375; ttop = 360; tcon = 355;
  Scalar      rg  universal gas constant  /8.314/ ;
  Parameters   h0(j)   integration constant for enthalpy  ;

              h0(j) =  tcon * ( cpcon(j,'a') + tcon *  ( cpcon(j,'b')/2

                       + tcon*( cpcon(j,'c')/3 + tcon *cpcon(j,'d')/4 ))) ;

$Ontext
                        section 2
                        _________
                thermal condition of the feed stream
$Offtext

 Scalars    f  total no. of moles of feed
            tf  temperature of the feed (in kelvins)
            pf  pressure of the feed stream
            vf  vapour fraction in feed(before expansion)
            shf specific enthalpy of feed
            preb  pressure in the reboiler
            pbot  pressure in the bottom-most tray
            ptop  pressure in the top-most tray
            pcon  pressure in the condenser   ;
            f = 100 ;  preb = 1.2 ; pbot = 1.12 ; ptop = 1.08; pcon = 1.05;

             pf = 1.12 ;  vf = 0.0 ;


 Parameters    xf(j)   molefractions in feed-stream
                 /  benzene      0.70
                    toluene      0.30   / ;

$Ontext

       assume that feed enters at bubble point
         determination of bubble temperature
         use nlp to solve equation
         commented out for convenience

          variable  tbub, z1 ;
          equation bubble , obj1 ;



 bubble..      sum ( j, xf(j)* prcon(j,'pc')*  exp (  prcon(j,'tc')/tbub *

      ( vpcon(j,'a') * (1-tbub/prcon(j,'tc') )

    +  vpcon(j,'b')*(1-tbub/prcon(j,'tc'))**1.5

    +  vpcon(j,'c')*(1-tbub/prcon(j,'tc'))**3

    +  vpcon(j,'d')*(1-tbub/prcon(j,'tc'))**6 ) ) / pf )  =e= 1 ;


 obj1..                z1 =e= 1;
                                                                                          tbub.lo = prcon('benzene','tb') ;
           tbub.up  = prcon('toluene','tb') ;
           tbub.l = 0.5 *(tbub.lo +tbub.up) ;

 Model  bubt  /all/ ;  solve bubt minimizing z1 using nlp ;

$Offtext

*$Ontext
* note : solution of the above step indicates tbub = 363.368

           tf = 363.368 ;

           shf = sum (j, xf(j) *

 ( tf * ( cpcon(j,'a') + tf *  ( cpcon(j,'b')/2

  + tf*( cpcon(j,'c')/3 + tf *cpcon(j,'d')/4 )))  - h0(j)

   + rg *   prcon(j,'tc') *

      ( vpcon(j,'a') * (1-tf/prcon(j,'tc') )

    +  vpcon(j,'b')*(1-tf/prcon(j,'tc'))**1.5

    +  vpcon(j,'c')*(1-tf/prcon(j,'tc'))**3

    +  vpcon(j,'d')*(1-tf/prcon(j,'tc'))**6 )

   + rg * tf * ( vpcon(j,'a')

    +  1.5 * vpcon(j,'b')*(1-tf/prcon(j,'tc'))**0.5

    +  3 * vpcon(j,'c')*(1-tf/prcon(j,'tc'))**2

    +  6 * vpcon(j,'d')*(1-tf/prcon(j,'tc'))**5 ) ) )  ;


         Display shf ;

*$Offtext

$Ontext

                                section 3
                                _________

                          modeling equations


                       description of the column

        note: the stages are numbered bottom upwards (like the
        floors of a building). reboiler is stage (tray) no. 1 and the
        condenser is the last tray.

$Offtext


 Sets      i     stages    /1*9  /

         reb(i)  reboiler

         con(i)  condenser

         col(i)   stages in the col

         floc(i)  possible locations of feed stage   / 2*8  /

         abovef(i) stages above the feed stage

         belowf(i)  feed stage and those below it ;

         reb(i) = yes$(ord(i) eq 1) ;

         con(i) = yes$(ord(i) eq card(i)) ;

         col(i) = yes - (reb(i)+con(i)) ;


 Parameter   p(i)    pressure prevailing in tray i ;

             p(i)$reb(i) = preb ;

             p(i)$con(i)= pcon ;

             p(i)$col(i)  =

             pbot - ((pbot-ptop)/(card(i)-1-2)) * (ord(i)-2)  ;


Scalars

 hllo,hlhi,hvlo,hvhi,hscale  limits on enthalpies and scaling ;


   hllo =

   tcon * ( cpcon('benzene','a') + tcon *  ( cpcon('benzene','b')/2

  + tcon*( cpcon('benzene','c')/3 + tcon *cpcon('benzene','d')/4 )))

  - h0('benzene')

  + rg *   prcon('benzene','tc') *

   ( vpcon('benzene','a') * (1-tcon/prcon('benzene','tc') )

  +  vpcon('benzene','b')*(1-tcon/prcon('benzene','tc'))**1.5

  +  vpcon('benzene','c')*(1-tcon/prcon('benzene','tc'))**3

  +  vpcon('benzene','d')*(1-tcon/prcon('benzene','tc'))**6 )

  + rg * tcon * ( vpcon('benzene','a')

  +  1.5 * vpcon('benzene','b')*(1-tcon/prcon('benzene','tc'))**0.5

  +  3 * vpcon('benzene','c')*(1-tcon/prcon('benzene','tc'))**2

  +  6 * vpcon('benzene','d')*(1-tcon/prcon('benzene','tc'))**5 )  ;


   hlhi =

    treb * ( cpcon('toluene','a') + treb *  ( cpcon('toluene','b')/2

  + treb*( cpcon('toluene','c')/3 + treb *cpcon('toluene','d')/4 )))

  - h0('toluene')

  + rg *   prcon('toluene','tc') *

   ( vpcon('toluene','a') * (1-treb/prcon('toluene','tc') )

  +  vpcon('toluene','b')*(1-treb/prcon('toluene','tc'))**1.5

  +  vpcon('toluene','c')*(1-treb/prcon('toluene','tc'))**3

  +  vpcon('toluene','d')*(1-treb/prcon('toluene','tc'))**6 )

  + rg * treb * ( vpcon('toluene','a')

  +  1.5 * vpcon('toluene','b')*(1-treb/prcon('toluene','tc'))**0.5

  +  3 * vpcon('toluene','c')*(1-treb/prcon('toluene','tc'))**2

  +  6 * vpcon('toluene','d')*(1-treb/prcon('toluene','tc'))**5 )  ;


   hvlo =

   tcon * ( cpcon('benzene','a') + tcon *  ( cpcon('benzene','b')/2

  + tcon*( cpcon('benzene','c')/3 + tcon *cpcon('benzene','d')/4 )))

  - h0('benzene') ;


   hvhi =

   treb * ( cpcon('toluene','a') + treb *  ( cpcon('toluene','b')/2

  + treb*( cpcon('toluene','c')/3 + treb *cpcon('toluene','d')/4 )))

  - h0('toluene') ;


  hscale = max( abs(hllo), abs(hlhi), abs(hvlo), abs(hvhi) ) ;



 Positive Variables

              x(i,j)   mole-fraction of j-th component in liquid on i-th tray.

              y(i,j)   mole-fraction of j-th component in vapour on i-th tray

              l(i)     molar flow rate of liquid leaving tray i

              v(i)     molar flow rate of vapour leaving tray i

              t(i)     temperature of tray i

              feed(i)  feed stream entering tray i

              r         reflux ratio

              p1        top product rate

              p2        bottom product rate  ;


 Variables

              hl(i)     molar sp.enthalpy of liquid in tray i.

              hv(i)     molar sp.enthalpy of vapour in tray i.  ;



 Equations

             phe(i,j)    phase equilibrium relation

             errk(i)     phase equilibrium error function

             cmb(i,j)    component material balance(1<i<n)

             cmb1(i,j)    component material balance(i=1)

             cmbn(i,j)    component material balance(i=n)

             tmb(i)      total material balance for trays in the column

             tmb1(i)     total material balance for reboiler

             tmbn(i)     total material balance for condenser

             defln(i)    definition of l(n)

             defp2(i)    definition of p2


             defhl(i)    definition of hl(i)

             defhv(i)    definition of hv(i)

             eb(i)       enthalpy balance


             purcon      purity constraint

             sumf        sum of feeds  ;


 phe(i,j)..  y(i,j)* p(i)  -   x(i,j) *  prcon(j,'pc') *

      exp (  prcon(j,'tc')/t(i) *

      ( vpcon(j,'a') * (1-t(i)/prcon(j,'tc') )

    +  vpcon(j,'b')*(1-t(i)/prcon(j,'tc'))**1.5

    +  vpcon(j,'c')*(1-t(i)/prcon(j,'tc'))**3

    +  vpcon(j,'d')*(1-t(i)/prcon(j,'tc'))**6 ) )    =e=  0 ;


 errk(i)..    sum(j,y(i,j)) - sum(j,x(i,j))  =e= 0.0  ;


 cmb(i,j)$col(i)..

       l(i)*x(i,j) + v(i) *y(i,j) - l(i+1)*x(i+1,j) -v(i-1)*y(i-1,j)

       - (feed(i)*xf(j))$floc(i)   =e= 0    ;

 cmb1(i,j)$reb(i)..

        l(i)*x(i,j) +v(i)*y(i,j)- l(i+1)*x(i+1,j) =e= 0  ;

 cmbn(i,j)$con(i)..

        (l(i)+ p1) * x(i,j) -  v(i-1)*y(i-1,j)   =e= 0  ;



 tmb(i)$col(i)..

         l(i) +v(i) - l(i+1) -v(i-1) - feed(i)$floc(i)  =e= 0 ;

 tmb1(i)$reb(i)..               l(i)+v(i)- l(i+1) =e= 0    ;

 tmbn(i)$con(i)..            (l(i) +p1) -  v(i-1) =e= 0 ;



 defln(i)$con(i)..     l(i)=e= r * p1 ;

 defp2(i)$reb(i)..     l(i)- p2 =e= 0 ;


 defhl(i).. hl(i)-sum( j, x(i,j) *

 ( t(i) * ( cpcon(j,'a') + t(i) *  ( cpcon(j,'b')/2

  + t(i)*( cpcon(j,'c')/3 + t(i) *cpcon(j,'d')/4 )))  - h0(j)

   + rg *   prcon(j,'tc') *

      ( vpcon(j,'a') * (1-t(i)/prcon(j,'tc') )

    +  vpcon(j,'b')*(1-t(i)/prcon(j,'tc'))**1.5

    +  vpcon(j,'c')*(1-t(i)/prcon(j,'tc'))**3

    +  vpcon(j,'d')*(1-t(i)/prcon(j,'tc'))**6 )

   +  rg * t(i) * ( vpcon(j,'a')

    +  1.5 * vpcon(j,'b')*(1-t(i)/prcon(j,'tc'))**0.5

    +  3 * vpcon(j,'c')*(1-t(i)/prcon(j,'tc'))**2

    +  6 * vpcon(j,'d')*(1-t(i)/prcon(j,'tc'))**5 ) ) )/ hscale   =e=  0 ;



 defhv(i).. hv(i) - sum( j, y(i,j)*

 ( t(i) * ( cpcon(j,'a') + t(i) *  ( cpcon(j,'b')/2

 + t(i)*( cpcon(j,'c')/3 + t(i) *cpcon(j,'d')/4 )))-h0(j)) )/ hscale =e= 0 ;


 eb(i)$col(i)..

     l(i)*hl(i) +v(i)*hv(i) - l(i+1)*hl(i+1) - v(i-1)*hv(i-1)

     - ( feed(i)* shf/hscale) $floc(i)    =e=  0  ;



 purcon..     x('9','benzene') =g= 0.95 ;


 sumf..      sum(i$floc(i), feed(i)) =e=  f ;



*                initialization of variables



     r.l = 0.45  ;  r.up = 0.95 ;  r.lo = 0.1 ;

     p1.l = 60 ;  p1.up = 80;  p1.lo = 50 ;

     p2.l  = 40 ; p2.up =50 ;     p2.lo = 20 ;

     x.up(i,j) = 1.0 ;  y.up(i,j) = 1.0 ;

     set ifeed(i)  /6/ ;

     feed.l(i)$ifeed(i) = f ;

     belowf(i) = yes $ (ord(i) le 6 ) ;

     abovef(i) = yes -belowf(i) ;

     v.l(i) = ((r.l + 1) * p1.l );

     l.l(i)$reb(i) = p2.l ;

     l.l(i)$(belowf(i)-reb(i)) = p1.l * r.l + (1-vf)*f ;

     l.l(i)$abovef(i) = p1.l * r.l ;


     t.l(i)$reb(i) = treb ;

     t.l(i)$con(i) = tcon ;

     t.l(i)$col(i) = tbot + (ttop -tbot) *(ord(i)-2)/(card(i)-1-2) ;






     t.lo(i) = tcon - 10 ;  t.up(i) = treb + 10 ;

     x.l(i,'benzene') =0.90 - 0.5 * (ord(i)- card(i))/(1-card(i));

     x.l(i,'toluene') = 1 - x.l(i,'benzene') ;

     y.l(i,'benzene') =1.0 - 0.8*(ord(i) -card(i))/(1-card(i)) ;

     y.l(i,'toluene') = 1 - y.l(i,'benzene') ;

  hl.l(i) =

   sum( j, x.l(i,j) *

 ( t.l(i) * ( cpcon(j,'a') + t.l(i) *  ( cpcon(j,'b')/2

  + t.l(i)*( cpcon(j,'c')/3 + t.l(i) *cpcon(j,'d')/4 )))  - h0(j)

   + rg *   prcon(j,'tc') *

      ( vpcon(j,'a') * (1-t.l(i)/prcon(j,'tc') )

    +  vpcon(j,'b')*(1-t.l(i)/prcon(j,'tc'))**1.5

    +  vpcon(j,'c')*(1-t.l(i)/prcon(j,'tc'))**3

    +  vpcon(j,'d')*(1-t.l(i)/prcon(j,'tc'))**6 )

   +  rg * t.l(i) * ( vpcon(j,'a')

    +  1.5 * vpcon(j,'b')*(1-t.l(i)/prcon(j,'tc'))**0.5

    +  3 * vpcon(j,'c')*(1-t.l(i)/prcon(j,'tc'))**2

    +  6 * vpcon(j,'d')*(1-t.l(i)/prcon(j,'tc'))**5 ) ) )/  hscale  ;

  hv.l(i) =

  sum( j, y.l(i,j)*

  ( t.l(i) * ( cpcon(j,'a') + t.l(i) *  ( cpcon(j,'b')/2

 + t.l(i)*( cpcon(j,'c')/3 + t.l(i) *cpcon(j,'d')/4 ))) - h0(j)))/ hscale ;


   hl.lo(i) = ( 1 - 0.5*sign(hllo))*hllo/ hscale  ;

   hv.lo(i) = ( 1 - 0.5*sign(hvlo))*hvlo/ hscale  ;

   hl.up(i) = ( 1 + 0.5*sign(hlhi))* hlhi/ hscale  ;

   hv.up(i)=  ( 1 + 0.5*sign(hvhi))* hvhi/ hscale  ;



* additional variables and equations for the feed traylocation problem ;



 Binary Variables   yf(i)  ;

 Variable   zf ;

 Equations   sumb        sum of binary variables

             confeed(i)     constraint on feed

             obj2        second objective function ;


 sumb..      sum(i$floc(i),yf(i)) =e=  1 ;

 confeed(i)$floc(i)..   feed(i) - f*yf(i)  =l= 0 ;

 obj2..       zf =e= p1 - 50 * r ;

 zf.up = 100 ;

     yf.l(i)$floc(i) = 1.0/7.0 ;

     feed.l(i)$floc(i) = f/7.0 ;

     feed.up(i)$floc(i) = f ;

  Model  column  optimization case /all/ ;

  Solve column using minlp  maximizing  zf ;



*  NLP written by GAMS Convert at 12/13/18 10:24:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         42       42        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         63       63        0        0        0        0        0        0
*  FX      2        2        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        143      102       41        0
*
*  Solve m using NLP maximizing x63;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42;


e1..    x1 - x21 - 0.95*x42 + x43 =E= 0;

e2..    x2 - x22 - 0.95*x43 + x44 =E= 0;

e3..    x3 - x23 - 0.95*x44 + x45 =E= 0;

e4..    x4 - x24 - 0.95*x45 + x46 =E= 0;

e5..    x5 - x25 - 0.95*x46 + x47 =E= 0;

e6..    x6 - x26 - 0.95*x47 + x48 =E= 0;

e7..    x7 - x27 - 0.95*x48 + x49 =E= 0;

e8..    x8 - x28 - 0.95*x49 + x50 =E= 0;

e9..    x9 - x29 - 0.95*x50 + x51 =E= 0;

e10..    x10 - x30 - 0.95*x51 + x52 =E= 0;

e11..    x11 - x31 - 0.95*x52 + x53 =E= 0;

e12..    x12 - x32 - 0.95*x53 + x54 =E= 0;

e13..    x13 - x33 - 0.95*x54 + x55 =E= 0;

e14..    x14 - x34 - 0.95*x55 + x56 =E= 0;

e15..    x15 - x35 - 0.95*x56 + x57 =E= 0;

e16..    x16 - x36 - 0.95*x57 + x58 =E= 0;

e17..    x17 - x37 - 0.95*x58 + x59 =E= 0;

e18..    x18 - x38 - 0.95*x59 + x60 =E= 0;

e19..    x19 - x39 - 0.95*x60 + x61 =E= 0;

e20..    x20 - x40 - 0.95*x61 + x62 =E= 0;

e21.. -0.560877056310648*x42**0.75 + x21 =E= 0;

e22.. -0.569991308475696*x43**0.75 + x22 =E= 0;

e23.. -0.579253667238426*x44**0.75 + x23 =E= 0;

e24.. -0.58866653933105*x45**0.75 + x24 =E= 0;

e25.. -0.59823237059518*x46**0.75 + x25 =E= 0;

e26.. -0.607953646617352*x47**0.75 + x26 =E= 0;

e27.. -0.617832893374884*x48**0.75 + x27 =E= 0;

e28.. -0.627872677892226*x49**0.75 + x28 =E= 0;

e29.. -0.638075608907974*x50**0.75 + x29 =E= 0;

e30.. -0.648444337552729*x51**0.75 + x30 =E= 0;

e31.. -0.658981558037961*x52**0.75 + x31 =E= 0;

e32.. -0.669690008356078*x53**0.75 + x32 =E= 0;

e33.. -0.680572470991864*x54**0.75 + x33 =E= 0;

e34.. -0.691631773645482*x55**0.75 + x34 =E= 0;

e35.. -0.702870789967221*x56**0.75 + x35 =E= 0;

e36.. -0.714292440304189*x57**0.75 + x36 =E= 0;

e37.. -0.725899692459132*x58**0.75 + x37 =E= 0;

e38.. -0.737695562461593*x59**0.75 + x38 =E= 0;

e39.. -0.749683115351594*x60**0.75 + x39 =E= 0;

e40.. -0.761865465976057*x61**0.75 + x40 =E= 0;

e41.. -0.774245779798168*x62**0.75 + x41 =E= 0;

e42.. -(10*x1**0.1 + 9.70873786407767*x2**0.1 + 9.42595909133755*x3**0.1 + 
      9.1514165935316*x4**0.1 + 8.88487047915689*x5**0.1 + 8.62608784384164*x6
      **0.1 + 8.37484256683654*x7**0.1 + 8.13091511343354*x8**0.1 + 
      7.89409234313936*x9**0.1 + 7.66416732343627*x10**0.1 + 7.44093914896725*
      x11**0.1 + 7.22421276598762*x12**0.1 + 7.01379880192973*x13**0.1 + 
      6.80951339993178*x14**0.1 + 6.61117805818619*x15**0.1 + 6.41861947396718*
      x16**0.1 + 6.23166939220114*x17**0.1 + 6.05016445844771*x18**0.1 + 
      5.87394607616282*x19**0.1 + 5.70286026811925*x20**0.1) + x63 =E= 0;

* set non-default bounds
x1.lo = 1;
x2.lo = 1;
x3.lo = 1;
x4.lo = 1;
x5.lo = 1;
x6.lo = 1;
x7.lo = 1;
x8.lo = 1;
x9.lo = 1;
x10.lo = 1;
x11.lo = 1;
x12.lo = 1;
x13.lo = 1;
x14.lo = 1;
x15.lo = 1;
x16.lo = 1;
x17.lo = 1;
x18.lo = 1;
x19.lo = 1;
x20.lo = 1;
x21.fx = 4.275;
x22.lo = 1;
x23.lo = 1;
x24.lo = 1;
x25.lo = 1;
x26.lo = 1;
x27.lo = 1;
x28.lo = 1;
x29.lo = 1;
x30.lo = 1;
x31.lo = 1;
x32.lo = 1;
x33.lo = 1;
x34.lo = 1;
x35.lo = 1;
x36.lo = 1;
x37.lo = 1;
x38.lo = 1;
x39.lo = 1;
x40.lo = 1;
x41.fx = 13.7105041437099;
x42.lo = 1;
x43.lo = 1;
x44.lo = 1;
x45.lo = 1;
x46.lo = 1;
x47.lo = 1;
x48.lo = 1;
x49.lo = 1;
x50.lo = 1;
x51.lo = 1;
x52.lo = 1;
x53.lo = 1;
x54.lo = 1;
x55.lo = 1;
x56.lo = 1;
x57.lo = 1;
x58.lo = 1;
x59.lo = 1;
x60.lo = 1;
x61.lo = 1;
x62.lo = 1;

* set non-default levels
x1.l = 2.65787165646339;
x2.l = 2.82088780167557;
x3.l = 2.99388978021114;
x4.l = 3.17748858499683;
x5.l = 3.37233255315756;
x6.l = 3.57910964624528;
x7.l = 3.7985498695696;
x8.l = 4.03142783910829;
x9.l = 4.27856550499248;
x10.l = 4.54083504110912;
x11.l = 4.81916191094404;
x12.l = 5.11452812040596;
x13.l = 5.42797566902517;
x14.l = 5.76061021161472;
x15.l = 6.11360494321832;
x16.l = 6.48820472094886;
x17.l = 6.88573043715017;
x18.l = 7.30758365919499;
x19.l = 7.75525155216024;
x20.l = 8.23031210161429;
x22.l = 4.5315;
x23.l = 4.80339;
x24.l = 5.0915934;
x25.l = 5.397089004;
x26.l = 5.72091434424;
x27.l = 6.0641692048944;
x28.l = 6.42801935718807;
x29.l = 6.81370051861935;
x30.l = 7.22252254973651;
x31.l = 7.6558739027207;
x32.l = 8.11522633688395;
x33.l = 8.60213991709698;
x34.l = 9.1182683121228;
x35.l = 9.66536441085017;
x36.l = 10.2452862755012;
x37.l = 10.8600034520313;
x38.l = 11.5116036591531;
x39.l = 12.2022998787023;
x40.l = 12.9344378714245;
x42.l = 15;
x43.l = 15.8671283435366;
x44.l = 16.7843841246842;
x45.l = 17.7546651382389;
x46.l = 18.7810366963301;
x47.l = 19.866741312356;
x48.l = 21.0152089447329;
x49.l = 22.2300678328211;
x50.l = 23.5151559592598;
x51.l = 24.8745331749237;
x52.l = 26.3124940248049;
x53.l = 27.8335813153413;
x54.l = 29.4426004660523;
x55.l = 31.1446346908215;
x56.l = 32.9450610567885;
x57.l = 34.8495674715809;
x58.l = 36.8641706525542;
x59.l = 38.9952351348076;
x60.l = 41.2494933780253;
x61.l = 43.6340670356661;
x62.l = 46.156489453693;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x63;
*  MINLP written by GAMS Convert at 12/13/18 10:30:48
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         55       27        0       28        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         71       57       14        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        241      181       60        0
*
*  Solve m using MINLP minimizing x56;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x51,x52;

Binary Variables  b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70,b71;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55;


e1..  - x1 - x2 - x3 + x15 + x16 + x17 + x51 =E= 0;

e2..  - x4 - x5 - x6 - x7 + x18 + x19 + x20 + x21 + x52 =E= 0;

e3..    x1 + x4 - x8 - x9 - x10 - x11 - x15 - x18 + x22 + x23 + x24 + x25
      =E= 1.212;

e4..    x2 + x8 + x12 - x16 - x22 - x26 =E= 0.452;

e5..    x9 - x12 + x13 - x23 + x26 - x27 =E= 0.245;

e6..    x5 + x10 - x13 - x14 - x19 - x24 + x27 + x28 =E= 0.652;

e7..    x6 + x14 - x20 - x28 =E= 0.252;

e8..    x3 + x7 + x11 - x17 - x21 - x25 =E= 0.456;

e9.. -(1.5722267648148*x1 + 1.5722267648148*x15)*(x1 - x15)/x29**5.33 + x43
      - x45 =E= 0;

e10.. -(1.32004857865156*x2 + 1.32004857865156*x16)*(x2 - x16)/x30**5.33 + x43
       - x46 =E= 0;

e11.. -(2.57705917665854*x3 + 2.57705917665854*x17)*(x3 - x17)/x31**5.33 + x43
       - x50 =E= 0;

e12.. -(2.06257339263358*x4 + 2.06257339263358*x18)*(x4 - x18)/x32**5.33 + x44
       - x45 =E= 0;

e13.. -(2.40235218067626*x5 + 2.40235218067626*x19)*(x5 - x19)/x33**5.33 + x44
       - x48 =E= 0;

e14.. -(1.339*x6 + 1.339*x20)*(x6 - x20)/x34**5.33 + x44 - x49 =E= 0;

e15.. -(1.37419139860501*x7 + 1.37419139860501*x21)*(x7 - x21)/x35**5.33 + x44
       - x50 =E= 0;

e16.. -(1.2916134290104*x8 + 1.2916134290104*x22)*(x8 - x22)/x36**5.33 + x45
       - x46 =E= 0;

e17.. -(1.60230396616872*x9 + 1.60230396616872*x23)*(x9 - x23)/x37**5.33 + x45
       - x47 =E= 0;

e18.. -(1.339*x10 + 1.339*x24)*(x10 - x24)/x38**5.33 + x45 - x48 =E= 0;

e19.. -(2.14329116080854*x11 + 2.14329116080854*x25)*(x11 - x25)/x39**5.33
       + x45 - x50 =E= 0;

e20.. -(1.24561882211213*x12 + 1.24561882211213*x26)*(x12 - x26)/x40**5.33
       - x46 + x47 =E= 0;

e21.. -(1.15157500841239*x13 + 1.15157500841239*x27)*(x13 - x27)/x41**5.33
       - x47 + x48 =E= 0;

e22.. -(2.06257339263358*x14 + 2.06257339263358*x28)*(x14 - x28)/x42**5.33
       + x48 - x49 =E= 0;

e23.. -(1.02*x51*(-6.5 + x43) + 1.02*x52*(-3.25 + x44)) + x53 =E= 0;

e24.. -0.069*(1526.43375224737*x29**1.29 + 1281.60056179763*x30**1.29 + 
      2501.99920063936*x31**1.29 + 2002.49843945008*x32**1.29 + 
      2332.38075793812*x33**1.29 + 1300*x34**1.29 + 1334.16640641263*x35**1.29
       + 1253.99362039845*x36**1.29 + 1555.6349186104*x37**1.29 + 1300*x38**
      1.29 + 2080.86520466848*x39**1.29 + 1209.33866224478*x40**1.29 + 
      1118.03398874989*x41**1.29 + 2002.49843945008*x42**1.29) + x54 =E= 0;

e25..  - 0.2*x51 - 0.17*x52 + x55 =E= 0;

e26..  - 10*x53 - x54 - 10*x55 + x56 - x57 =E= 0;

e27..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 - x11 - x12 - x13
       - x14 - x15 - x16 - x17 - x18 - x19 - x20 - x21 - x22 - x23 - x24 - x25
       - x26 - x27 - x28 + x57 =E= 0;

e28..    x1 - 2*b58 =L= 0;

e29..    x2 - 2*b59 =L= 0;

e30..    x3 - 2*b60 =L= 0;

e31..    x4 - 2*b61 =L= 0;

e32..    x5 - 2*b62 =L= 0;

e33..    x6 - 2*b63 =L= 0;

e34..    x7 - 2*b64 =L= 0;

e35..    x8 - 2*b65 =L= 0;

e36..    x9 - 2*b66 =L= 0;

e37..    x10 - 2*b67 =L= 0;

e38..    x11 - 2*b68 =L= 0;

e39..    x12 - 2*b69 =L= 0;

e40..    x13 - 2*b70 =L= 0;

e41..    x14 - 2*b71 =L= 0;

e42..    x15 + 2*b58 =L= 2;

e43..    x16 + 2*b59 =L= 2;

e44..    x17 + 2*b60 =L= 2;

e45..    x18 + 2*b61 =L= 2;

e46..    x19 + 2*b62 =L= 2;

e47..    x20 + 2*b63 =L= 2;

e48..    x21 + 2*b64 =L= 2;

e49..    x22 + 2*b65 =L= 2;

e50..    x23 + 2*b66 =L= 2;

e51..    x24 + 2*b67 =L= 2;

e52..    x25 + 2*b68 =L= 2;

e53..    x26 + 2*b69 =L= 2;

e54..    x27 + 2*b70 =L= 2;

e55..    x28 + 2*b71 =L= 2;

* set non-default bounds
x29.lo = 0.15; x29.up = 2;
x30.lo = 0.15; x30.up = 2;
x31.lo = 0.15; x31.up = 2;
x32.lo = 0.15; x32.up = 2;
x33.lo = 0.15; x33.up = 2;
x34.lo = 0.15; x34.up = 2;
x35.lo = 0.15; x35.up = 2;
x36.lo = 0.15; x36.up = 2;
x37.lo = 0.15; x37.up = 2;
x38.lo = 0.15; x38.up = 2;
x39.lo = 0.15; x39.up = 2;
x40.lo = 0.15; x40.up = 2;
x41.lo = 0.15; x41.up = 2;
x42.lo = 0.15; x42.up = 2;
x43.lo = 6.5;
x44.lo = 3.25;
x45.lo = 16.58;
x46.lo = 14.92;
x47.lo = 12.925;
x48.lo = 12.26;
x49.lo = 8.76;
x50.lo = 16.08;
x51.up = 2.5;
x52.up = 6;

* set non-default levels
x29.l = 0.547722557505166;
x30.l = 0.547722557505166;
x31.l = 0.547722557505166;
x32.l = 0.547722557505166;
x33.l = 0.547722557505166;
x34.l = 0.547722557505166;
x35.l = 0.547722557505166;
x36.l = 0.547722557505166;
x37.l = 0.547722557505166;
x38.l = 0.547722557505166;
x39.l = 0.547722557505166;
x40.l = 0.547722557505166;
x41.l = 0.547722557505166;
x42.l = 0.547722557505166;
x43.l = 11.5;
x44.l = 8.25;
x45.l = 21.58;
x46.l = 19.92;
x47.l = 17.925;
x48.l = 17.26;
x49.l = 13.76;
x50.l = 21.08;
x51.l = 0.961470588235294;
x52.l = 2.30752941176471;

Model m / all /;

m.limrow=0; m.limcol=0;

m.domlim     = 1000;
Solve m using MINLP minimizing x56;

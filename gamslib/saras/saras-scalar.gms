*  NLP written by GAMS Convert at 12/13/18 11:37:43
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        110       64        0       46        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        100      100        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        421      385       36        0
*  
*  Warning: This is a scaled version of the original model
*  =======================================================
*
*  Solve m using NLP maximizing x100;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110;


e1..    8.531*x1 + 8.531*x2 + 8.531*x3 + 0.8531*x4 + 0.8531*x5 + 0.8531*x6
      + 0.8531*x7 + 0.8531*x8 + 0.8531*x9 + 0.8531*x10 + 0.08531*x11
      + 0.8531*x12 + 0.495*x13 + 0.495*x14 + 0.495*x15 + 0.0495*x16
      + 0.0495*x17 + 0.0495*x18 + 0.0495*x19 + 0.0495*x20 + 0.00495*x21
      + 0.0495*x22 + 0.0495*x23 + 0.0495*x24 =L= 427.28331;

e2..    0.8531*x7 + 0.8531*x8 + 0.8531*x9 + 0.8531*x10 + 0.08531*x11
      + 0.8531*x12 + 0.0495*x19 + 0.0495*x20 + 0.00495*x21 + 0.0495*x22
      + 0.0495*x23 + 0.0495*x24 =L= 10.086806;

e3..    0.639825*x25 + 0.42655*x26 + 0.213275*x30 + 0.037125*x31 + 0.02475*x32
      + 0.012375*x36 =L= 761.25727;

e4..    8.531*x1 + 8.531*x2 + 8.531*x3 + 0.8531*x4 + 0.8531*x5 + 0.8531*x6
      + 0.8531*x7 + 0.8531*x8 + 0.8531*x9 + 0.8531*x10 + 0.08531*x11
      + 0.8531*x12 + 0.495*x13 + 0.495*x14 + 0.495*x15 + 0.0495*x16
      + 0.0495*x17 + 0.0495*x18 + 0.0495*x19 + 0.0495*x20 + 0.00495*x21
      + 0.0495*x22 + 0.0495*x23 + 0.0495*x24 + 0.639825*x25 + 0.42655*x26
      + 0.213275*x30 + 0.037125*x31 + 0.02475*x32 + 0.012375*x36
      =L= 1188.540249;

e5..    5.45258865*x7 + 5.45258865*x8 + 5.63046*x9 + 4.2655*x10 + 0.383895*x11
      + 5.2132941*x12 + 0.31637925*x19 + 0.31637925*x20 + 0.03267*x21
      + 0.2475*x22 + 0.22275*x23 + 0.3024945*x24 =L= 260.2933358;

e6..    41.682466*x1 + 41.682466*x2 + 25.593*x3 + 1.27965*x4 + 1.7062*x5
      + 4.8805851*x6 + 10.2269628*x7 + 10.2269628*x8 + 13.3416309*x9
      + 3.83895*x10 + 0.51186*x11 + 10.4999548*x12 + 2.41857*x13 + 2.41857*x14
      + 1.485*x15 + 0.07425*x16 + 0.099*x17 + 0.2831895*x18 + 0.593406*x19
      + 0.593406*x20 + 0.07741305*x21 + 0.22275*x22 + 0.297*x23 + 0.609246*x24
      =L= 1491.648;

e7..    x1 + x2 + x3 + 0.1*x4 + 0.1*x5 + 0.1*x6 + 0.1*x7 + 0.1*x8 + 0.1*x9
      + 0.1*x10 + 0.01*x11 + 0.1*x12 =L= 49.605;

e8..    x13 + x14 + x15 + 0.1*x16 + 0.1*x17 + 0.1*x18 + 0.1*x19 + 0.1*x20
      + 0.01*x21 + 0.1*x22 + 0.1*x23 + 0.1*x24 =L= 8.289;

e9..    0.1*x7 + 0.1*x8 + 0.1*x9 + 0.1*x10 + 0.01*x11 + 0.1*x12 =L= 1.141;

e10..    0.1*x19 + 0.1*x20 + 0.01*x21 + 0.1*x22 + 0.1*x23 + 0.1*x24 =L= 0.713;

e11..    0.75*x25 + 0.5*x26 + 0.25*x30 =L= 874.25;

e12..    0.75*x31 + 0.5*x32 + 0.25*x36 =L= 311.81;

e13..    x1 + x2 + x3 + 0.1*x4 + 0.1*x5 + 0.1*x6 + 0.1*x7 + 0.1*x8 + 0.1*x9
       + 0.1*x10 + 0.01*x11 + 0.1*x12 + 0.075*x25 + 0.05*x26 + 0.025*x30
       =L= 137.03;

e14..    x13 + x14 + x15 + 0.1*x16 + 0.1*x17 + 0.1*x18 + 0.1*x19 + 0.1*x20
       + 0.01*x21 + 0.1*x22 + 0.1*x23 + 0.1*x24 + 0.075*x31 + 0.05*x32
       + 0.025*x36 =L= 39.469;

e15..    0.63915*x7 + 0.63915*x8 + 0.66*x9 + 0.5*x10 + 0.045*x11 + 0.6111*x12
       =L= 30.538129;

e16..    0.63915*x19 + 0.63915*x20 + 0.066*x21 + 0.5*x22 + 0.45*x23
       + 0.6111*x24 =L= 3.798454;

e17..    10*x1 =L= 75.04670392;

e18..    10*x2 =L= 43.78047761;

e19..    10*x3 =L= 21.21562135;

e20..    x4 =L= 1.160116;

e21..    x5 =L= 4.93069302;

e22..    x6 =L= 21.25832562;

e23..    x7 =L= 2.32103208;

e24..    x8 =L= 1.35403539;

e25..    x9 =L= 1.11661165;

e26..    x10 =L= 0.290029;

e27..    0.1*x11 =L= 0.04980498;

e28..    x12 =L= 0.43384338;

e29..    10*x13 =L= 3.53115308;

e30..    10*x14 =L= 6.66456639;

e31..    10*x15 =L= 0.2470247;

e32..    x19 =L= 0.10921092;

e33..    x20 =L= 0.20612061;

e34..    0.1*x21 =L= 0.0130013;

e35..    x25 =L= 52.0052;

e36..    x26 =L= 131.0131;

e37..    x27 =L= 2.0002;

e38..    x28 =L= 5745.5745;

e39..    x29 =L= 219.0219;

e40..    x30 =L= 6.0006;

e41..    x31 =L= 10.001;

e42..    x32 =L= 23.0023;

e43..    x33 =L= 1.0001;

e44..    x34 =L= 13.0013;

e45..    x35 =L= 5.0005;

e46..    x36 =L= 1.0001;

e47..    28.1921773174601*x1 - 0.001*x37 =E= 0;

e48..    28.8154548977757*x2 - 0.001*x38 =E= 0;

e49..    9.88437243781001*x3 - 0.001*x39 =E= 0;

e50..    0.880103935195232*x4 - 0.001*x40 =E= 0;

e51..    2.21977730735243*x5 - 0.001*x41 =E= 0;

e52..    1.28149351026794*x6 - 0.001*x42 =E= 0;

e53..    1.83272760894444*x7 - 0.001*x43 =E= 0;

e54..    2.17974731991291*x8 - 0.001*x44 =E= 0;

e55..    2.49266340711336*x9 - 0.001*x45 =E= 0;

e56..    1.28094609236049*x10 - 0.001*x46 =E= 0;

e57..    0.157843714250131*x11 - 0.001*x47 =E= 0;

e58..    0.619926966029695*x12 - 0.001*x48 =E= 0;

e59..    19.6006440981807*x13 - 0.001*x49 =E= 0;

e60..    23.2121947614753*x14 - 0.001*x50 =E= 0;

e61..    1.7570439646724*x15 - 0.001*x51 =E= 0;

e62..  - 2.33612747021679*x16 - 0.001*x52 =E= 0;

e63..  - 1.45315415348163*x17 - 0.001*x53 =E= 0;

e64..  - 1.5919380419427*x18 - 0.001*x54 =E= 0;

e65..    1.01448634996545*x19 - 0.001*x55 =E= 0;

e66..    1.21918843940428*x20 - 0.001*x56 =E= 0;

e67..    0.0867197712485838*x21 - 0.001*x57 =E= 0;

e68..  - 5.15151671846356*x22 - 0.001*x58 =E= 0;

e69..  - 5.76742577916681*x23 - 0.001*x59 =E= 0;

e70..  - 5.98896560405477*x24 - 0.001*x60 =E= 0;

e71..    2.40451821059508*x25 - 0.001*x61 =E= 0;

e72..    0.915798780516372*x26 - 0.001*x62 =E= 0;

e73..    2.41249500999079*x27 - 0.001*x63 =E= 0;

e74..    0.0170158777478242*x28 - 0.001*x64 =E= 0;

e75..    0.048935447394501*x29 - 0.001*x65 =E= 0;

e76..    7.18934665819511*x30 - 0.001*x66 =E= 0;

e77..    0.761683064015574*x31 - 0.001*x67 =E= 0;

e78..    0.35653968074654*x32 - 0.001*x68 =E= 0;

e79..    0.649922850788946*x33 - 0.001*x69 =E= 0;

e80..    0.0112040305186571*x34 - 0.001*x70 =E= 0;

e81..    0.0232333665975574*x35 - 0.001*x71 =E= 0;

e82..    4.32895090109864*x36 - 0.001*x72 =E= 0;

e83..    x37 + x43 - x73 =E= 0;

e84..    x38 + x44 - x74 =E= 0;

e85..    x39 + x45 - x75 =E= 0;

e86..    x40 + x46 - x76 =E= 0;

e87..    x41 + x47 - x77 =E= 0;

e88..    x42 + x48 - x78 =E= 0;

e89..    x61 - x79 =E= 0;

e90..    x62 - x80 =E= 0;

e91..    x63 - x81 =E= 0;

e92..    x64 - x82 =E= 0;

e93..    x65 - x83 =E= 0;

e94..    x66 - x84 =E= 0;

e95..    x49 + x55 - x85 =E= 0;

e96..    x50 + x56 - x86 =E= 0;

e97..    x51 + x57 - x87 =E= 0;

e98..    x52 + x58 - x88 =E= 0;

e99..    x53 + x59 - x89 =E= 0;

e100..    x54 + x60 - x90 =E= 0;

e101..    x67 - x91 =E= 0;

e102..    x68 - x92 =E= 0;

e103..    x69 - x93 =E= 0;

e104..    x70 - x94 =E= 0;

e105..    x71 - x95 =E= 0;

e106..    x72 - x96 =E= 0;

e107.. 0.01*(-3e-7*((9668185.94900287*x1 + 966818.594900287*x7)*(10*x1 + x7) + 
       (7344508.47918975*x1 + 734450.847918975*x7)*(10*x2 + x8) + (
       471080.088019841*x1 + 47108.0088019841*x7)*(10*x3 + x9) + (
       4118182.80252375*x1 + 411818.280252375*x7)*(x4 + x10) + (
       4715546.30073576*x1 + 471554.630073576*x7)*(x5 + 0.1*x11) + (
       1259907.90495681*x1 + 125990.790495681*x7)*(x6 + x12) + (-
       337066.036849432*x1 - 33706.6036849432*x7)*x25 + (9471.51007861957*x1 + 
       947.151007861957*x7)*x26 + (867293.696524623*x1 + 86729.3696524623*x7)*
       x27 + (-6164.49756499996*x1 - 616.449756499996*x7)*x28 + (-
       24604.4883646945*x1 - 2460.44883646945*x7)*x29 + (1054627.37437509*x1 + 
       105462.737437509*x7)*x30 + (7344508.47918975*x2 + 734450.847918975*x8)*(
       10*x1 + x7) + (6615556.70351843*x2 + 661555.670351843*x8)*(10*x2 + x8)
        + (598427.695801276*x2 + 59842.7695801276*x8)*(10*x3 + x9) + (
       4033649.04064473*x2 + 403364.904064473*x8)*(x4 + x10) + (
       5373759.99889499*x2 + 537375.999889499*x8)*(x5 + 0.1*x11) + (
       1252539.99797342*x2 + 125253.999797342*x8)*(x6 + x12) + (-
       175789.737137736*x2 - 17578.9737137736*x8)*x25 + (-905.441041110594*x2
        - 90.5441041110594*x8)*x26 + (768613.343504569*x2 + 76861.3343504569*x8
       )*x27 + (-3157.52120294897*x2 - 315.752120294897*x8)*x28 + (-
       9132.28550283759*x2 - 913.228550283759*x8)*x29 + (642903.530572393*x2 + 
       64290.3530572393*x8)*x30 + (471080.088019841*x3 + 47108.0088019841*x9)*(
       10*x1 + x7) + (598427.695801276*x3 + 59842.7695801276*x9)*(10*x2 + x8)
        + (2857134.96513149*x3 + 285713.496513149*x9)*(10*x3 + x9) + (
       675970.291091427*x3 + 67597.0291091427*x9)*(x4 + x10) + (-
       1945913.55175262*x3 - 194591.355175262*x9)*(x5 + 0.1*x11) + (
       835119.672565365*x3 + 83511.9672565365*x9)*(x6 + x12) + (
       360409.788887566*x3 + 36040.9788887566*x9)*x25 + (59699.5222612464*x3 + 
       5969.95222612464*x9)*x26 + (-48293.0097590486*x3 - 4829.30097590486*x9)*
       x27 + (6182.61940034403*x3 + 618.261940034403*x9)*x28 + (
       1728.45456073776*x3 + 172.845456073776*x9)*x29 + (-226543.261741486*x3
        - 22654.3261741486*x9)*x30 + (411818.280252375*x4 + 411818.280252375*
       x10)*(10*x1 + x7) + (403364.904064473*x4 + 403364.904064473*x10)*(10*x2
        + x8) + (67597.0291091427*x4 + 67597.0291091427*x10)*(10*x3 + x9) + (
       310807.514381267*x4 + 310807.514381267*x10)*(x4 + x10) + (
       285219.744761226*x4 + 285219.744761226*x10)*(x5 + 0.1*x11) + (
       122615.912296475*x4 + 122615.912296475*x10)*(x6 + x12) + (
       8029.1578833468*x4 + 8029.1578833468*x10)*x25 + (1300.12086500691*x4 + 
       1300.12086500691*x10)*x26 + (45957.3976594906*x4 + 45957.3976594906*x10)
       *x27 + (56.4847216873283*x4 + 56.4847216873283*x10)*x28 + (-
       532.320112443521*x4 - 532.320112443521*x10)*x29 + (25341.1737992422*x4
        + 25341.1737992422*x10)*x30 + (471554.630073576*x5 + 47155.4630073576*
       x11)*(10*x1 + x7) + (537375.999889499*x5 + 53737.5999889499*x11)*(10*x2
        + x8) + (-194591.355175262*x5 - 19459.1355175262*x11)*(10*x3 + x9) + (
       285219.744761226*x5 + 28521.9744761226*x11)*(x4 + x10) + (
       982781.865509899*x5 + 98278.1865509899*x11)*(x5 + 0.1*x11) + (
       32220.8371700098*x5 + 3222.08371700098*x11)*(x6 + x12) + (-
       42147.1724754194*x5 - 4214.71724754194*x11)*x25 + (-8050.496237445*x5 - 
       805.0496237445*x11)*x26 + (63486.3171819452*x5 + 6348.63171819452*x11)*
       x27 + (-369.421091584713*x5 - 36.9421091584713*x11)*x28 + (
       1832.51638704575*x5 + 183.251638704575*x11)*x29 + (171355.410665771*x5
        + 17135.5410665771*x11)*x30 + (125990.790495681*x6 + 125990.790495681*
       x12)*(10*x1 + x7) + (125253.999797342*x6 + 125253.999797342*x12)*(10*x2
        + x8) + (83511.9672565365*x6 + 83511.9672565365*x12)*(10*x3 + x9) + (
       122615.912296475*x6 + 122615.912296475*x12)*(x4 + x10) + (
       32220.8371700098*x6 + 32220.8371700098*x12)*(x5 + 0.1*x11) + (
       228071.196838972*x6 + 228071.196838972*x12)*(x6 + x12) + (
       46593.0189217923*x6 + 46593.0189217923*x12)*x25 + (6898.58380716422*x6
        + 6898.58380716422*x12)*x26 + (15907.3758065143*x6 + 15907.3758065143*
       x12)*x27 + (256.806936787146*x6 + 256.806936787146*x12)*x28 + (-
       1759.43612320178*x6 - 1759.43612320178*x12)*x29 + (218.634701384318*x6
        + 218.634701384318*x12)*x30 + (-33706.6036849432*x25*(10*x1 + x7)) - 
       17578.9737137736*x25*(10*x2 + x8) + 36040.9788887566*x25*(10*x3 + x9) + 
       8029.1578833468*x25*(x4 + x10) - 42147.1724754194*x25*(x5 + 0.1*x11) + 
       46593.0189217923*x25*(x6 + x12) + 20282.7643676708*x25*x25 + 
       2372.81329045202*x25*x26 - 2753.94542274455*x25*x27 + 237.635308440264*
       x25*x28 - 10.4892894984994*x25*x29 - 22837.5960429412*x25*x30 + 
       947.151007861957*x26*(10*x1 + x7) - 90.5441041110594*x26*(10*x2 + x8) + 
       5969.95222612464*x26*(10*x3 + x9) + 1300.12086500691*x26*(x4 + x10) - 
       8050.496237445*x26*(x5 + 0.1*x11) + 6898.58380716422*x26*(x6 + x12) + 
       2372.81329045202*x26*x25 + 418.238479608684*x26*x26 + 411.192214055523*
       x26*x27 + 32.5024833516593*x26*x28 - 35.7978017543554*x26*x29 - 
       3313.86924786199*x26*x30 + 86729.3696524623*x27*(10*x1 + x7) + 
       76861.3343504569*x27*(10*x2 + x8) - 4829.30097590486*x27*(10*x3 + x9) + 
       45957.3976594906*x27*(x4 + x10) + 63486.3171819452*x27*(x5 + 0.1*x11) + 
       15907.3758065143*x27*(x6 + x12) - 2753.94542274455*x27*x25 + 
       411.192214055523*x27*x26 + 14874.2112069592*x27*x27 + 2.56689245376958*
       x27*x28 - 86.002997739573*x27*x29 + 6080.5178368139*x27*x30 + (-
       616.449756499996*x28*(10*x1 + x7)) - 315.752120294897*x28*(10*x2 + x8)
        + 618.261940034403*x28*(10*x3 + x9) + 56.4847216873283*x28*(x4 + x10)
        - 369.421091584713*x28*(x5 + 0.1*x11) + 256.806936787146*x28*(x6 + x12)
        + 237.635308440264*x28*x25 + 32.5024833516593*x28*x26 + 
       2.56689245376958*x28*x27 + 6.49098796960097*x28*x28 + 9.99030594536413*
       x28*x29 - 340.895470529113*x28*x30 + (-2460.44883646945*x29*(10*x1 + x7)
       ) - 913.228550283759*x29*(10*x2 + x8) + 172.845456073776*x29*(10*x3 + x9
       ) - 532.320112443521*x29*(x4 + x10) + 1832.51638704575*x29*(x5 + 0.1*x11
       ) - 1759.43612320178*x29*(x6 + x12) - 10.4892894984994*x29*x25 - 
       35.7978017543554*x29*x26 - 86.002997739573*x29*x27 + 9.99030594536413*
       x29*x28 + 53.5941900937404*x29*x29 + 389.448396527973*x29*x30 + 
       105462.737437509*x30*(10*x1 + x7) + 64290.3530572393*x30*(10*x2 + x8) - 
       22654.3261741486*x30*(10*x3 + x9) + 25341.1737992422*x30*(x4 + x10) + 
       171355.410665771*x30*(x5 + 0.1*x11) + 218.634701384318*x30*(x6 + x12) - 
       22837.5960429412*x30*x25 - 3313.86924786199*x30*x26 + 6080.5178368139*
       x30*x27 - 340.895470529113*x30*x28 + 389.448396527973*x30*x29 + 
       284249.176092168*x30*x30) - 780*x1 - 780*x2 - 780*x3 - 78*x4 - 78*x5 - 
       78*x6 - 600*x7 - 600*x8 - 600*x9 - 600*x10 - 60*x11 - 600*x12 - 36*x25
        - 24*x26 - 12*x30) + 0.01*x73 + 0.01*x74 + 0.01*x75 + 0.01*x76
        + 0.01*x77 + 0.01*x78 + 0.01*x79 + 0.01*x80 + 0.01*x81 + 0.01*x82
        + 0.01*x83 + 0.01*x84 - 0.01*x97 =E= -866.1192;

e108.. 0.01*(-2e-5*((9668185.94900287*x13 + 966818.594900287*x19)*(10*x13 + x19
       ) + (7344508.47918975*x13 + 734450.847918975*x19)*(10*x14 + x20) + (
       471080.088019841*x13 + 47108.0088019841*x19)*(10*x15 + 0.1*x21) + (
       4118182.80252375*x13 + 411818.280252375*x19)*(x16 + x22) + (
       4715546.30073576*x13 + 471554.630073576*x19)*(x17 + x23) + (
       1259907.90495681*x13 + 125990.790495681*x19)*(x18 + x24) + (-
       337066.036849432*x13 - 33706.6036849432*x19)*x31 + (9471.51007861957*x13
        + 947.151007861957*x19)*x32 + (867293.696524623*x13 + 86729.3696524623*
       x19)*x33 + (-6164.49756499996*x13 - 616.449756499996*x19)*x34 + (-
       24604.4883646945*x13 - 2460.44883646945*x19)*x35 + (1054627.37437509*x13
        + 105462.737437509*x19)*x36 + (7344508.47918975*x14 + 734450.847918975*
       x20)*(10*x13 + x19) + (6615556.70351843*x14 + 661555.670351843*x20)*(10*
       x14 + x20) + (598427.695801276*x14 + 59842.7695801276*x20)*(10*x15 + 0.1
       *x21) + (4033649.04064473*x14 + 403364.904064473*x20)*(x16 + x22) + (
       5373759.99889499*x14 + 537375.999889499*x20)*(x17 + x23) + (
       1252539.99797342*x14 + 125253.999797342*x20)*(x18 + x24) + (-
       175789.737137736*x14 - 17578.9737137736*x20)*x31 + (-905.441041110594*
       x14 - 90.5441041110594*x20)*x32 + (768613.343504569*x14 + 
       76861.3343504569*x20)*x33 + (-3157.52120294897*x14 - 315.752120294897*
       x20)*x34 + (-9132.28550283759*x14 - 913.228550283759*x20)*x35 + (
       642903.530572393*x14 + 64290.3530572393*x20)*x36 + (471080.088019841*x15
        + 4710.80088019841*x21)*(10*x13 + x19) + (598427.695801276*x15 + 
       5984.27695801276*x21)*(10*x14 + x20) + (2857134.96513149*x15 + 
       28571.3496513149*x21)*(10*x15 + 0.1*x21) + (675970.291091427*x15 + 
       6759.70291091427*x21)*(x16 + x22) + (-1945913.55175262*x15 - 
       19459.1355175262*x21)*(x17 + x23) + (835119.672565365*x15 + 
       8351.19672565365*x21)*(x18 + x24) + (360409.788887566*x15 + 
       3604.09788887566*x21)*x31 + (59699.5222612464*x15 + 596.995222612464*x21
       )*x32 + (-48293.0097590486*x15 - 482.930097590486*x21)*x33 + (
       6182.61940034403*x15 + 61.8261940034403*x21)*x34 + (1728.45456073776*x15
        + 17.2845456073776*x21)*x35 + (-226543.261741486*x15 - 2265.43261741486
       *x21)*x36 + (411818.280252375*x16 + 411818.280252375*x22)*(10*x13 + x19)
        + (403364.904064473*x16 + 403364.904064473*x22)*(10*x14 + x20) + (
       67597.0291091427*x16 + 67597.0291091427*x22)*(10*x15 + 0.1*x21) + (
       310807.514381267*x16 + 310807.514381267*x22)*(x16 + x22) + (
       285219.744761226*x16 + 285219.744761226*x22)*(x17 + x23) + (
       122615.912296475*x16 + 122615.912296475*x22)*(x18 + x24) + (
       8029.1578833468*x16 + 8029.1578833468*x22)*x31 + (1300.12086500691*x16
        + 1300.12086500691*x22)*x32 + (45957.3976594906*x16 + 45957.3976594906*
       x22)*x33 + (56.4847216873283*x16 + 56.4847216873283*x22)*x34 + (-
       532.320112443521*x16 - 532.320112443521*x22)*x35 + (25341.1737992422*x16
        + 25341.1737992422*x22)*x36 + (471554.630073576*x17 + 471554.630073576*
       x23)*(10*x13 + x19) + (537375.999889499*x17 + 537375.999889499*x23)*(10*
       x14 + x20) + (-194591.355175262*x17 - 194591.355175262*x23)*(10*x15 + 
       0.1*x21) + (285219.744761226*x17 + 285219.744761226*x23)*(x16 + x22) + (
       982781.865509899*x17 + 982781.865509899*x23)*(x17 + x23) + (
       32220.8371700098*x17 + 32220.8371700098*x23)*(x18 + x24) + (-
       42147.1724754194*x17 - 42147.1724754194*x23)*x31 + (-8050.496237445*x17
        - 8050.496237445*x23)*x32 + (63486.3171819452*x17 + 63486.3171819452*
       x23)*x33 + (-369.421091584713*x17 - 369.421091584713*x23)*x34 + (
       1832.51638704575*x17 + 1832.51638704575*x23)*x35 + (171355.410665771*x17
        + 171355.410665771*x23)*x36 + (125990.790495681*x18 + 125990.790495681*
       x24)*(10*x13 + x19) + (125253.999797342*x18 + 125253.999797342*x24)*(10*
       x14 + x20) + (83511.9672565365*x18 + 83511.9672565365*x24)*(10*x15 + 0.1
       *x21) + (122615.912296475*x18 + 122615.912296475*x24)*(x16 + x22) + (
       32220.8371700098*x18 + 32220.8371700098*x24)*(x17 + x23) + (
       228071.196838972*x18 + 228071.196838972*x24)*(x18 + x24) + (
       46593.0189217923*x18 + 46593.0189217923*x24)*x31 + (6898.58380716422*x18
        + 6898.58380716422*x24)*x32 + (15907.3758065143*x18 + 15907.3758065143*
       x24)*x33 + (256.806936787146*x18 + 256.806936787146*x24)*x34 + (-
       1759.43612320178*x18 - 1759.43612320178*x24)*x35 + (218.634701384318*x18
        + 218.634701384318*x24)*x36 + (-33706.6036849432*x31*(10*x13 + x19)) - 
       17578.9737137736*x31*(10*x14 + x20) + 36040.9788887566*x31*(10*x15 + 0.1
       *x21) + 8029.1578833468*x31*(x16 + x22) - 42147.1724754194*x31*(x17 + 
       x23) + 46593.0189217923*x31*(x18 + x24) + 20282.7643676708*x31*x31 + 
       2372.81329045202*x31*x32 - 2753.94542274455*x31*x33 + 237.635308440264*
       x31*x34 - 10.4892894984994*x31*x35 - 22837.5960429412*x31*x36 + 
       947.151007861957*x32*(10*x13 + x19) - 90.5441041110594*x32*(10*x14 + x20
       ) + 5969.95222612464*x32*(10*x15 + 0.1*x21) + 1300.12086500691*x32*(x16
        + x22) - 8050.496237445*x32*(x17 + x23) + 6898.58380716422*x32*(x18 + 
       x24) + 2372.81329045202*x32*x31 + 418.238479608684*x32*x32 + 
       411.192214055523*x32*x33 + 32.5024833516593*x32*x34 - 35.7978017543554*
       x32*x35 - 3313.86924786199*x32*x36 + 86729.3696524623*x33*(10*x13 + x19)
        + 76861.3343504569*x33*(10*x14 + x20) - 4829.30097590486*x33*(10*x15 + 
       0.1*x21) + 45957.3976594906*x33*(x16 + x22) + 63486.3171819452*x33*(x17
        + x23) + 15907.3758065143*x33*(x18 + x24) - 2753.94542274455*x33*x31 + 
       411.192214055523*x33*x32 + 14874.2112069592*x33*x33 + 2.56689245376958*
       x33*x34 - 86.002997739573*x33*x35 + 6080.5178368139*x33*x36 + (-
       616.449756499996*x34*(10*x13 + x19)) - 315.752120294897*x34*(10*x14 + 
       x20) + 618.261940034403*x34*(10*x15 + 0.1*x21) + 56.4847216873283*x34*(
       x16 + x22) - 369.421091584713*x34*(x17 + x23) + 256.806936787146*x34*(
       x18 + x24) + 237.635308440264*x34*x31 + 32.5024833516593*x34*x32 + 
       2.56689245376958*x34*x33 + 6.49098796960097*x34*x34 + 9.99030594536413*
       x34*x35 - 340.895470529113*x34*x36 + (-2460.44883646945*x35*(10*x13 + 
       x19)) - 913.228550283759*x35*(10*x14 + x20) + 172.845456073776*x35*(10*
       x15 + 0.1*x21) - 532.320112443521*x35*(x16 + x22) + 1832.51638704575*x35
       *(x17 + x23) - 1759.43612320178*x35*(x18 + x24) - 10.4892894984994*x35*
       x31 - 35.7978017543554*x35*x32 - 86.002997739573*x35*x33 + 
       9.99030594536413*x35*x34 + 53.5941900937404*x35*x35 + 389.448396527973*
       x35*x36 + 105462.737437509*x36*(10*x13 + x19) + 64290.3530572393*x36*(10
       *x14 + x20) - 22654.3261741486*x36*(10*x15 + 0.1*x21) + 25341.1737992422
       *x36*(x16 + x22) + 171355.410665771*x36*(x17 + x23) + 218.634701384318*
       x36*(x18 + x24) - 22837.5960429412*x36*x31 - 3313.86924786199*x36*x32 + 
       6080.5178368139*x36*x33 - 340.895470529113*x36*x34 + 389.448396527973*
       x36*x35 + 284249.176092168*x36*x36) - 780*x13 - 780*x14 - 780*x15 - 78*
       x16 - 78*x17 - 78*x18 - 600*x19 - 600*x20 - 60*x21 - 600*x22 - 600*x23
        - 600*x24 - 36*x31 - 24*x32 - 12*x36) + 0.01*x85 + 0.01*x86 + 0.01*x87
        + 0.01*x88 + 0.01*x89 + 0.01*x90 + 0.01*x91 + 0.01*x92 + 0.01*x93
        + 0.01*x94 + 0.01*x95 + 0.01*x96 - 0.01*x98 =E= -251.5416;

e109..    x97 + x98 - x99 =E= 0;

e110..    0.0001*x99 - 0.0001*x100 =E= 0;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x100;

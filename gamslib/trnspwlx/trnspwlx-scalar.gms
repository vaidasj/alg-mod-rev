*  MIP written by GAMS Convert at 12/13/18 11:43:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         72       37        3       32        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        115       49       42        0       24        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        337      337        0        0
*
*  Solve m using MIP minimizing x7;


Sets  s1 /92*93/,s2 /94*95/,s3 /96*97/,s4 /98*99/,s5 /100*101/,s6 /102*103/
          ,s7 /104*105/,s8 /106*107/,s9 /108*109/,s10 /110*111/,s11 /112*113/
          ,s12 /114*115/;

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,b50,b51,b52,b53
          ,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64,b65,b66,b67,b68,b69,b70
          ,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81,b82,b83,b84,b85,b86,b87
          ,b88,b89,b90,b91,s1s1(s1),s1s2(s2),s1s3(s3),s1s4(s4),s1s5(s5)
          ,s1s6(s6),s1s7(s7),s1s8(s8),s1s9(s9),s1s10(s10),s1s11(s11)
          ,s1s12(s12);

Positive Variables  x1,x2,x3,x4,x5,x6,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49;

Binary Variables  b50,b51,b52,b53,b54,b55,b56,b57,b58,b59,b60,b61,b62,b63,b64
          ,b65,b66,b67,b68,b69,b70,b71,b72,b73,b74,b75,b76,b77,b78,b79,b80,b81
          ,b82,b83,b84,b85,b86,b87,b88,b89,b90,b91;

SOS1 Variables  s1s1(s1),s1s2(s2),s1s3(s3),s1s4(s4),s1s5(s5),s1s6(s6),s1s7(s7)
          ,s1s8(s8),s1s9(s9),s1s10(s10),s1s11(s11),s1s12(s12);

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72;


e1..    x1 + x2 + x3 =L= 350;

e2..    x4 + x5 + x6 =L= 600;

e3..    x1 + x4 =G= 325;

e4..    x2 + x5 =G= 300;

e5..    x3 + x6 =G= 275;

e6..    x7 + 0.0318198051533946*x8 + 0.0216374675043084*x9
      + 0.0229102597104441*x10 + 0.0318198051533946*x11
      + 0.0229102597104441*x12 + 0.017819090885901*x13 - 0.0124823035871931*x14
      - 0.00848796643929129*x15 - 0.00898725858277902*x16
      - 0.0124823035871931*x17 - 0.00898725858277902*x18
      - 0.00699009000882812*x19 - 0.0090951351492436*x20
      - 0.00618469190148565*x21 - 0.00654849730745539*x22
      - 0.0090951351492436*x23 - 0.00654849730745539*x24
      - 0.00509327568357642*x25 - 0.00752292882162925*x26
      - 0.00511559159870789*x27 - 0.00541650875157306*x28
      - 0.00752292882162925*x29 - 0.00541650875157306*x30
      - 0.00421284014011238*x31 - 0.00656159987567524*x32
      - 0.00446188791545916*x33 - 0.00472435191048617*x34
      - 0.00656159987567524*x35 - 0.00472435191048617*x36
      - 0.00367449593037813*x37 - 0.00589531459954838*x38
      - 0.0040088139276929*x39 - 0.00424462651167483*x40
      - 0.00589531459954838*x41 - 0.00424462651167483*x42
      - 0.00330137617574709*x43 - 0.005625*x44 - 0.003825*x45 - 0.00405*x46
      - 0.005625*x47 - 0.00405*x48 - 0.00315*x49 - 1.59099025766973*b50
      - 1.08187337521542*b51 - 1.14551298552221*b52 - 1.59099025766973*b53
      - 1.14551298552221*b54 - 0.89095454429505*b55 - 1.59099025766973*b56
      - 1.08187337521542*b57 - 1.14551298552221*b58 - 1.59099025766973*b59
      - 1.14551298552221*b60 - 0.89095454429505*b61 - 2.46475150877325*b62
      - 1.67603102596581*b63 - 1.77462108631674*b64 - 2.46475150877325*b65
      - 1.77462108631674*b66 - 1.38026084491302*b67 - 3.1014109692203*b68
      - 2.1089594590698*b69 - 2.23301589783862*b70 - 3.1014109692203*b71
      - 2.23301589783862*b72 - 1.73679014276337*b73 - 3.62801598673435*b74
      - 2.46705087097936*b75 - 2.61217151044873*b76 - 3.62801598673435*b77
      - 2.61217151044873*b78 - 2.03168895257123*b79 - 4.08732797803161*b80
      - 2.7793830250615*b81 - 2.94287614418276*b82 - 4.08732797803161*b83
      - 2.94287614418276*b84 - 2.2889036676977*b85 - 4.5*b86 - 3.06*b87
      - 3.24*b88 - 4.5*b89 - 3.24*b90 - 2.52*b91 =E= 0;

e7..    x1 + x8 - x14 - x20 - x26 - x32 - x38 - x44 - 50*b50 - 50*b56 - 120*b62
      - 190*b68 - 260*b74 - 330*b80 - 400*b86 =E= 0;

e8..    x2 + x9 - x15 - x21 - x27 - x33 - x39 - x45 - 50*b51 - 50*b57 - 120*b63
      - 190*b69 - 260*b75 - 330*b81 - 400*b87 =E= 0;

e9..    x3 + x10 - x16 - x22 - x28 - x34 - x40 - x46 - 50*b52 - 50*b58
      - 120*b64 - 190*b70 - 260*b76 - 330*b82 - 400*b88 =E= 0;

e10..    x4 + x11 - x17 - x23 - x29 - x35 - x41 - x47 - 50*b53 - 50*b59
       - 120*b65 - 190*b71 - 260*b77 - 330*b83 - 400*b89 =E= 0;

e11..    x5 + x12 - x18 - x24 - x30 - x36 - x42 - x48 - 50*b54 - 50*b60
       - 120*b66 - 190*b72 - 260*b78 - 330*b84 - 400*b90 =E= 0;

e12..    x6 + x13 - x19 - x25 - x31 - x37 - x43 - x49 - 50*b55 - 50*b61
       - 120*b67 - 190*b73 - 260*b79 - 330*b85 - 400*b91 =E= 0;

e13..    x14 - 70*b56 =L= 0;

e14..    x15 - 70*b57 =L= 0;

e15..    x16 - 70*b58 =L= 0;

e16..    x17 - 70*b59 =L= 0;

e17..    x18 - 70*b60 =L= 0;

e18..    x19 - 70*b61 =L= 0;

e19..    x20 - 70*b62 =L= 0;

e20..    x21 - 70*b63 =L= 0;

e21..    x22 - 70*b64 =L= 0;

e22..    x23 - 70*b65 =L= 0;

e23..    x24 - 70*b66 =L= 0;

e24..    x25 - 70*b67 =L= 0;

e25..    x26 - 70*b68 =L= 0;

e26..    x27 - 70*b69 =L= 0;

e27..    x28 - 70*b70 =L= 0;

e28..    x29 - 70*b71 =L= 0;

e29..    x30 - 70*b72 =L= 0;

e30..    x31 - 70*b73 =L= 0;

e31..    x32 - 70*b74 =L= 0;

e32..    x33 - 70*b75 =L= 0;

e33..    x34 - 70*b76 =L= 0;

e34..    x35 - 70*b77 =L= 0;

e35..    x36 - 70*b78 =L= 0;

e36..    x37 - 70*b79 =L= 0;

e37..    x38 - 70*b80 =L= 0;

e38..    x39 - 70*b81 =L= 0;

e39..    x40 - 70*b82 =L= 0;

e40..    x41 - 70*b83 =L= 0;

e41..    x42 - 70*b84 =L= 0;

e42..    x43 - 70*b85 =L= 0;

e43..    b50 + b56 + b62 + b68 + b74 + b80 + b86 =E= 1;

e44..    b51 + b57 + b63 + b69 + b75 + b81 + b87 =E= 1;

e45..    b52 + b58 + b64 + b70 + b76 + b82 + b88 =E= 1;

e46..    b53 + b59 + b65 + b71 + b77 + b83 + b89 =E= 1;

e47..    b54 + b60 + b66 + b72 + b78 + b84 + b90 =E= 1;

e48..    b55 + b61 + b67 + b73 + b79 + b85 + b91 =E= 1;

e49..  - b50 - s1s1('92') =E= -1;

e50..  - b51 - s1s2('94') =E= -1;

e51..  - b52 - s1s3('96') =E= -1;

e52..  - b53 - s1s4('98') =E= -1;

e53..  - b54 - s1s5('100') =E= -1;

e54..  - b55 - s1s6('102') =E= -1;

e55..  - b86 - s1s7('104') =E= -1;

e56..  - b87 - s1s8('106') =E= -1;

e57..  - b88 - s1s9('108') =E= -1;

e58..  - b89 - s1s10('110') =E= -1;

e59..  - b90 - s1s11('112') =E= -1;

e60..  - b91 - s1s12('114') =E= -1;

e61..    x8 - s1s1('93') =E= 0;

e62..    x9 - s1s2('95') =E= 0;

e63..    x10 - s1s3('97') =E= 0;

e64..    x11 - s1s4('99') =E= 0;

e65..    x12 - s1s5('101') =E= 0;

e66..    x13 - s1s6('103') =E= 0;

e67..    x44 - s1s7('105') =E= 0;

e68..    x45 - s1s8('107') =E= 0;

e69..    x46 - s1s9('109') =E= 0;

e70..    x47 - s1s10('111') =E= 0;

e71..    x48 - s1s11('113') =E= 0;

e72..    x49 - s1s12('115') =E= 0;

* set non-default levels
x2.l = 25;
x3.l = 275;
x4.l = 325;
x5.l = 275;
x7.l = 10.1941773452727;

* set non-default marginals
e2.m = -0.0104155162178402;
e3.m = 0.0166558934253741;
e4.m = 0.0153;
e5.m = 0.00488448378215977;
x1.m = 2249999999.98334;
x6.m = 1260000000.00553;

Model m / all /;

m.limrow=0; m.limcol=0;

m.optcr      = 0;
Solve m using MIP minimizing x7;

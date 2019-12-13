*  MINLP written by GAMS Convert at 12/13/18 11:30:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         74       23       27       24        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         47       38        9        0        0        0        0        0
*  FX      5        1        4        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        291      228       63        0
*
*  Solve m using MINLP minimizing x47;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,b38,b39,b40,b41,b42,b43,b44,b45,b46,x47;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x25,x26,x27,x28,x29
          ,x30,x31,x32,x33,x34,x35,x36,x37;

Binary Variables  b38,b39,b40,b41,b42,b43,b44,b45,b46;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74;


e1..    x1 + x2 + x3 - x37 + 0.4*b38 + 0.4*b39 + 0.4*b40 + 0.2*b41 + 0.2*b42
      + 0.2*b43 + 0.1*b44 + 0.1*b45 + 0.1*b46 =E= 0;

e2..    b38 + b41 + b44 =L= 1;

e3..    b39 + b42 + b45 =L= 1;

e4..    b40 + b43 + b46 =L= 1;

e5..    11.4794520547945*x1 - x4 - x13 + x14 + 4.59178082191781*b38
      + 2.2958904109589*b41 + 1.14794520547945*b44 =E= 0;

e6..    11.4794520547945*x2 - x5 - x14 + x15 + 4.59178082191781*b39
      + 2.2958904109589*b42 + 1.14794520547945*b45 =E= 0;

e7..    11.4794520547945*x3 - x6 + x13 - x15 + 4.59178082191781*b40
      + 2.2958904109589*b43 + 1.14794520547945*b46 =E= 0;

e8..    9.56712328767123*x1 - x7 - x16 + x17 + 3.82684931506849*b38
      + 1.91342465753425*b41 + 0.956712328767123*b44 =E= 0;

e9..    9.56712328767123*x2 - x8 - x17 + x18 + 3.82684931506849*b39
      + 1.91342465753425*b42 + 0.956712328767123*b45 =E= 0;

e10..    9.56712328767123*x3 - x9 + x16 - x18 + 3.82684931506849*b40
       + 1.91342465753425*b43 + 0.956712328767123*b46 =E= 0;

e11..    3.82739726027397*x1 - x10 - x19 + x20 + 1.53095890410959*b38
       + 0.765479452054795*b41 + 0.382739726027397*b44 =E= 0;

e12..    3.82739726027397*x2 - x11 - x20 + x21 + 1.53095890410959*b39
       + 0.765479452054795*b42 + 0.382739726027397*b45 =E= 0;

e13..    3.82739726027397*x3 - x12 + x19 - x21 + 1.53095890410959*b40
       + 0.765479452054795*b43 + 0.382739726027397*b46 =E= 0;

e14..    x13 - x22 =L= 0;

e15..    x14 - x22 =L= 0;

e16..    x15 - x22 =L= 0;

e17..    x16 - x23 =L= 0;

e18..    x17 - x23 =L= 0;

e19..    x18 - x23 =L= 0;

e20..    x19 - x24 =L= 0;

e21..    x20 - x24 =L= 0;

e22..    x21 - x24 =L= 0;

e23.. -50*x1*b38 + x4 =L= 0;

e24.. -50*x2*b39 + x5 =L= 0;

e25.. -50*x3*b40 + x6 =L= 0;

e26.. -50*x1*b41 + x7 =L= 0;

e27.. -50*x2*b42 + x8 =L= 0;

e28.. -50*x3*b43 + x9 =L= 0;

e29.. -50*x1*b44 + x10 =L= 0;

e30.. -50*x2*b45 + x11 =L= 0;

e31.. -50*x3*b46 + x12 =L= 0;

e32.. -15*x1*b38 + x4 =G= 0;

e33.. -15*x2*b39 + x5 =G= 0;

e34.. -15*x3*b40 + x6 =G= 0;

e35.. -15*x1*b41 + x7 =G= 0;

e36.. -15*x2*b42 + x8 =G= 0;

e37.. -15*x3*b43 + x9 =G= 0;

e38.. -7*x1*b44 + x10 =G= 0;

e39.. -7*x2*b45 + x11 =G= 0;

e40.. -7*x3*b46 + x12 =G= 0;

e41..    x1 - 40*b38 - 40*b41 - 40*b44 =L= 0;

e42..    x2 - 40*b39 - 40*b42 - 40*b45 =L= 0;

e43..    x3 - 40*b40 - 40*b43 - 40*b46 =L= 0;

e44..    x1 - b38 - b41 - b44 =G= 0;

e45..    x2 - b39 - b42 - b45 =G= 0;

e46..    x3 - b40 - b43 - b46 =G= 0;

e47..    x35 - 10*b38 - 10*b39 - 10*b40 - 20*b41 - 20*b42 - 20*b43 - 30*b44
       - 30*b45 - 30*b46 =E= 0;

e48.. -0.3271*(sqrt(x22) + sqrt(x23) + sqrt(x24)) + x34 =E= 0;

e49.. -(0.0515901369863014*x25*(x1 + 0.4*b38 + 0.2*b41 + 0.1*b44) + 
      0.0515901369863014*x26*(x2 + 0.4*b39 + 0.2*b42 + 0.1*b45) + 
      0.0515901369863014*x27*(x3 + 0.4*b40 + 0.2*b43 + 0.1*b46) + 
      0.0528586301369863*x28*(x1 + 0.4*b38 + 0.2*b41 + 0.1*b44) + 
      0.0528586301369863*x29*(x2 + 0.4*b39 + 0.2*b42 + 0.1*b45) + 
      0.0528586301369863*x30*(x3 + 0.4*b40 + 0.2*b43 + 0.1*b46) + 
      0.0541268493150685*x31*(x1 + 0.4*b38 + 0.2*b41 + 0.1*b44) + 
      0.0541268493150685*x32*(x2 + 0.4*b39 + 0.2*b42 + 0.1*b45) + 
      0.0541268493150685*x33*(x3 + 0.4*b40 + 0.2*b43 + 0.1*b46)) + x36 =E= 0;

e50..  - 0.5*x13 - 0.5*x14 + x25 =E= -643;

e51..  - 0.5*x14 - 0.5*x15 + x26 =E= -643;

e52..  - 0.5*x13 - 0.5*x15 + x27 =E= -643;

e53..  - 0.5*x16 - 0.5*x17 + x28 =E= -536;

e54..  - 0.5*x17 - 0.5*x18 + x29 =E= -536;

e55..  - 0.5*x16 - 0.5*x18 + x30 =E= -536;

e56..  - 0.5*x19 - 0.5*x20 + x31 =E= -214;

e57..  - 0.5*x20 - 0.5*x21 + x32 =E= -214;

e58..  - 0.5*x19 - 0.5*x21 + x33 =E= -214;

e59.. (24.8739726027397*x47 - x34)*x37 - x35 - x36 =E= 0;

e60..  - x1 + 40*b38 + 40*b41 + 40*b44 =G= 0;

e61..  - x2 + 40*b39 + 40*b42 + 40*b45 =G= 0;

e62..  - x3 + 40*b40 + 40*b43 + 40*b46 =G= 0;

e63..  - b38 - b39 =G= -1;

e64..  - b39 - b40 =G= -1;

e65..  - b40 =G= -1;

e66..  - b41 - b42 =G= -1;

e67..  - b42 - b43 =G= -1;

e68..  - b43 =G= -1;

e69..  - b44 - b45 =G= -1;

e70..  - b45 - b46 =G= -1;

e71..  - b46 =G= -1;

e72..    b38 - b39 + b41 - b42 + b44 - b45 =G= 0;

e73..    b39 - b40 + b42 - b43 + b45 - b46 =G= 0;

e74..    b40 + b43 + b46 =G= 0;

* set non-default bounds
x13.fx = 643;
x14.lo = 643; x14.up = 4018.36;
x15.lo = 643; x15.up = 4018.36;
x16.lo = 536; x16.up = 3348.63;
x17.lo = 536; x17.up = 3348.63;
x18.lo = 536; x18.up = 3348.63;
x19.lo = 214; x19.up = 1339.45;
x20.lo = 214; x20.up = 1339.45;
x21.lo = 214; x21.up = 1339.45;
x22.lo = 643; x22.up = 4018.36;
x23.lo = 536; x23.up = 3348.63;
x24.lo = 214; x24.up = 1339.45;
b38.fx = 1;
b39.fx = 0;
b41.fx = 0;
b44.fx = 0;

* set non-default levels
x14.l = 643;
x15.l = 643;
x16.l = 536;
x17.l = 536;
x18.l = 536;
x19.l = 214;
x20.l = 214;
x21.l = 214;
x22.l = 643;
x23.l = 536;
x24.l = 214;
b40.l = 0.550375356;
b42.l = 0.292212117;
b43.l = 0.224052867;
b45.l = 0.856270347;
b46.l = 0.067113723;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MINLP minimizing x47;
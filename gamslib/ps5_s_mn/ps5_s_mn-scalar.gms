*  NLP written by GAMS Convert at 12/13/18 11:34:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         21        6       15        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         58       53        5        0
*
*  Solve m using NLP maximizing x16;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16;

Positive Variables  x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..  - 0.204031699713663*x6 - 0.106424863577545*x7 - 0.0588209224827239*x8
      - 0.268958777758543*x9 - 0.361763736467525*x10 + 0.204031699713663*x11
      + 0.106424863577545*x12 + 0.0588209224827239*x13 + 0.268958777758543*x14
      + 0.361763736467525*x15 + x16 =E= 0;

e2.. -x1**0.5 + x6 =E= 0;

e3.. -x2**0.5 + x7 =E= 0;

e4.. -x3**0.5 + x8 =E= 0;

e5.. -x4**0.5 + x9 =E= 0;

e6.. -x5**0.5 + x10 =E= 0;

e7..  - 0.2*x1 + x11 =G= 0;

e8..  - 0.4*x2 + x12 =G= 0;

e9..  - 0.6*x3 + x13 =G= 0;

e10..  - 0.8*x4 + x14 =G= 0;

e11..  - x5 + x15 =G= 0;

e12..  - 0.2*x1 + 0.2*x2 + x11 - x12 =G= 0;

e13..  - 0.4*x2 + 0.4*x3 + x12 - x13 =G= 0;

e14..  - 0.6*x3 + 0.6*x4 + x13 - x14 =G= 0;

e15..  - 0.8*x4 + 0.8*x5 + x14 - x15 =G= 0;

e16..  - x5 + x15 =G= 0;

e17..    x1 - x2 =G= 0;

e18..    x2 - x3 =G= 0;

e19..    x3 - x4 =G= 0;

e20..    x4 - x5 =G= 0;

e21..    x5 =G= 0;

* set non-default bounds
x1.lo = 0.0001;
x2.lo = 0.0001;
x3.lo = 0.0001;
x4.lo = 0.0001;
x5.lo = 0.0001;

* set non-default levels
x1.l = 0.0001;
x2.l = 0.0001;
x3.l = 0.0001;
x4.l = 0.0001;
x5.l = 0.0001;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x16;

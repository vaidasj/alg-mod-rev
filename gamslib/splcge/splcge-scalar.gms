*  NLP written by GAMS Convert at 12/13/18 11:23:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         15       15        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         45       21       24        0
*
*  Solve m using NLP maximizing x15;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1.. -(7.5*x13 + 7.5*x14)/x9 + x1 =E= 0;

e2.. -(17.5*x13 + 17.5*x14)/x10 + x2 =E= 0;

e3.. -1.88988157484231*x3**0.333333333333333*x5**0.666666666666667 + x7 =E= 0;

e4.. -1.97962633005252*x4**0.571428571428571*x6**0.428571428571429 + x8 =E= 0;

e5.. -0.333333333333333*x11*x7/x13 + x3 =E= 0;

e6.. -0.571428571428571*x12*x8/x13 + x4 =E= 0;

e7.. -0.666666666666667*x11*x7/x14 + x5 =E= 0;

e8.. -0.428571428571429*x12*x8/x14 + x6 =E= 0;

e9..    x1 - x7 =E= 0;

e10..    x2 - x8 =E= 0;

e11..    x3 + x4 =E= 25;

e12..    x5 + x6 =E= 25;

e13..    x9 - x11 =E= 0;

e14..    x10 - x12 =E= 0;

e15.. -x1**0.3*x2**0.7 + x15 =E= 0;

* set non-default bounds
x1.lo = 0.001;
x2.lo = 0.001;
x3.lo = 0.001;
x4.lo = 0.001;
x5.lo = 0.001;
x6.lo = 0.001;
x7.lo = 0.001;
x8.lo = 0.001;
x9.lo = 0.001;
x10.lo = 0.001;
x11.lo = 0.001;
x12.lo = 0.001;
x13.lo = 0.001;
x14.fx = 1;

* set non-default levels
x1.l = 15;
x2.l = 35;
x3.l = 5;
x4.l = 20;
x5.l = 10;
x6.l = 15;
x7.l = 15;
x8.l = 35;
x9.l = 1;
x10.l = 1;
x11.l = 1;
x12.l = 1;
x13.l = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x15;

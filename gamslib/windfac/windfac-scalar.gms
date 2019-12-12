*  MINLP written by GAMS Convert at 12/13/18 10:32:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         14       14        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       12        0        3        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         38       14       24        0
*
*  Solve m using MINLP minimizing x12;


Variables  i1,i2,x3,x4,i5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Integer Variables  i1,i2,i5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14;


e1..  - 12*i1 + i2 =E= 0;

e2.. -12.566370616/i2 + x3 =E= 0;

e3..  - 0.25*i2 + x4 =E= 0;

e4..  - x4 + i5 =E= -1;

e5.. sin(0.5*x3)*i1*x6 - sin(0.5*i1*x3) =E= 0;

e6.. -sin(1.570796327*i5/x4) + x9 =E= 0;

e7.. -x9*x6 + x15 =E= 0;

e8.. sin(1.5*x3)*i1*x7 - sin(1.5*i1*x3) =E= 0;

e9.. -sin(4.712388981*i5/x4) + x10 =E= 0;

e10.. -x10*x7 + x13 =E= 0;

e11.. sin(2.5*x3)*i1*x8 - sin(2.5*i1*x3) =E= 0;

e12.. -sin(7.853981635*i5/x4) + x11 =E= 0;

e13.. -x11*x8 + x14 =E= 0;

e14.. -(x13*x13 + x14*x14) + x12 =E= 0;

* set non-default bounds
i1.lo = 1; i1.up = 10;
i2.lo = 1; i2.up = 100;
i5.lo = 1; i5.up = 100;
x15.lo = 0.8;

* set non-default levels
i1.l = 1;
i2.l = 1;
x3.l = 1.5;
x4.l = 1;
i5.l = 1;
x15.l = 0.8;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MINLP minimizing x12;

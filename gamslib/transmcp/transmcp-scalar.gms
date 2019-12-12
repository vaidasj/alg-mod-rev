*  MCP written by GAMS Convert at 12/13/18 10:30:48
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         11        0       11        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         27       24        3        0
*
*  Solve m using MCP;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    x1 - x3 =G= -0.225;

e2..    x1 - x4 =G= -0.0765;

e3..    x1 - x5 =G= -0.162;

e4..    x2 - x3 =G= -0.225;

e5..    x2 - x4 =G= -0.162;

e6..    x2 - x5 =G= -0.126;

e7..  - x6 - x7 - x8 =G= -350;

e8..  - x9 - x10 - x11 =G= -600;

e9.. -325*(1/x3)**1.5 + x6 + x9 =G= 0;

e10.. -300*(1/x4)**1.2 + x7 + x10 =G= 0;

e11.. -275*(1/x5)**2 + x8 + x11 =G= 0;

* set non-default levels
x1.l = 1;
x2.l = 1;
x3.l = 1;
x4.l = 1;
x5.l = 1;

Model m / e1.x6,e2.x7,e3.x8,e4.x9,e5.x10,e6.x11,e7.x1,e8.x2,e9.x3,e10.x4
         ,e11.x5 /;

m.limrow=0; m.limcol=0;

Solve m using MCP;

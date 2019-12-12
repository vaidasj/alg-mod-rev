*  MCP written by GAMS Convert at 12/13/18 10:30:49
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          6        0        6        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         16        5       11        0
*
*  Solve m using MCP;


Variables  x1,x2,x3,x4,x5,x6;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6;


e1.. -5000*x1**(-1.1) + x2 + x3 + x4 + x5 + x6 =G= 0;

e2.. (0.2*x2)**0.833333333333333 - (x1 - 0.000181818181818182*x1**2.1*x2)
      =G= -10;

e3.. (0.2*x3)**0.909090909090909 - (x1 - 0.000181818181818182*x1**2.1*x3)
      =G= -8;

e4.. (0.2*x4)**1 - (x1 - 0.000181818181818182*x1**2.1*x4) =G= -6;

e5.. (0.2*x5)**1.11111111111111 - (x1 - 0.000181818181818182*x1**2.1*x5) =G= -4
     ;

e6.. (0.2*x6)**1.25 - (x1 - 0.000181818181818182*x1**2.1*x6) =G= -2;

* set non-default levels
x1.l = 65.7933224657568;
x2.l = 10;
x3.l = 10;
x4.l = 10;
x5.l = 10;
x6.l = 10;

Model m / e1.x1,e2.x2,e3.x3,e4.x4,e5.x5,e6.x6 /;

m.limrow=0; m.limcol=0;

Solve m using MCP;

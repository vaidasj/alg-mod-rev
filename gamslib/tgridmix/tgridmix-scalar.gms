*  LP written by GAMS Convert at 12/13/18 11:43:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          6        1        3        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         19       19        0        0
*
*  Solve m using LP minimizing x7;


Variables  x1,x2,x3,x4,x5,x6,x7;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - 0.225*x1 - 0.153*x2 - 0.162*x3 - 0.225*x4 - 0.162*x5 - 0.126*x6 + x7
      =E= 0;

e2..    x1 + x2 + x3 =L= 350;

e3..    x4 + x5 + x6 =L= 600;

e4..    x1 + x4 =G= 352.0227399;

e5..    x2 + x5 =G= 331.55145636;

e6..    x3 + x6 =G= 277.951216235;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x7;

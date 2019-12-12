*  LP written by GAMS Convert at 12/13/18 10:30:52
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          2        2        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          4        4        0        0
*
*  Solve m using LP minimizing x1;


Variables  x1,x2,x3,x4;

Positive Variables  x2,x3,x4;

Equations  e1,e2;


e1..    x1 =E= 0;

e2..    x2 + x3 + x4 =E= 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x1;

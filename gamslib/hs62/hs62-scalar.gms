*  NLP written by GAMS Convert at 12/13/18 11:23:05
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
*          7        1        6        0
*
*  Solve m using NLP minimizing x1;


Variables  x1,x2,x3,x4;

Positive Variables  x2,x3,x4;

Equations  e1,e2;


e1.. 32.174*(255*log((0.03 + x2 + x3 + x4)/(0.03 + 0.09*x2 + x3 + x4)) + 280*
     log((0.03 + x3 + x4)/(0.03 + 0.07*x3 + x4)) + 290*log((0.03 + x4)/(0.03 + 
     0.13*x4))) + x1 =E= 0;

e2.. 20*sqr((-1) + x2 + x3 + x4) =E= 0;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x1;

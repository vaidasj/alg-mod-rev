*  NLP written by GAMS Convert at 12/13/18 11:43:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          3        3        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing x1;


Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1.. -(x2*x2 + x3*x3) + x1 =E= 0;

e2.. x2 - sin(2*x2 + 3*x3) - cos(3*x2 - 5*x3) =E= 0;

e3.. x3 - sin(x2 - 2*x3) + cos(x2 + 3*x3) =E= 0;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP minimizing x1;

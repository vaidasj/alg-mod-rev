*  NLP written by GAMS Convert at 12/13/18 11:24:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          1        1        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          3        1        2        0
*
*  Solve m using NLP maximizing x3;


Variables  x1,x2,x3;

Equations  e1;


e1.. -(75*(LogGamma(x1 + x2) - LogGamma(x1) - LogGamma(x2)) - 149.384617555698*
     x1 - 61.9950852353139*x2) + x3 =E= 211.379702791012;

* set non-default bounds
x1.lo = 0.0001;
x2.lo = 0.0001;

* set non-default levels
x1.l = 0.406253228038076;
x2.l = 0.702047665836708;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x3;

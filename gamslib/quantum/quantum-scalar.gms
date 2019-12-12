*  DNLP written by GAMS Convert at 12/13/18 11:24:22
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
*  Solve m using DNLP minimizing x1;


Variables  x1,x2,x3;

Equations  e1;


e1.. -(0.5*sqr(x3)*Gamma(2 - 0.5/x3)/Gamma(0.5/x3)*x2**(1/x3) + 0.5*Gamma(1.5/
     x3)/Gamma(0.5/x3)*x2**(-1/x3) + Gamma(2.5/x3)/Gamma(0.5/x3)*x2**(-2/x3))
      + x1 =E= 0;

* set non-default bounds
x2.lo = 0.0001; x2.up = 10;
x3.lo = 0.001; x3.up = 10;

* set non-default levels
x2.l = 1;
x3.l = 1;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using DNLP minimizing x1;

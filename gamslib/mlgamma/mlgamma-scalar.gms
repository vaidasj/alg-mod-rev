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


e1.. -(29*(log(x1) - log(x2) - LogGamma(x1)) + log(90*x1/x2)*(-1 + x1) + log(10
     *x1/x2)*(-1 + x1) + log(60*x1/x2)*(-1 + x1) + log(186*x1/x2)*(-1 + x1) + 
     log(61*x1/x2)*(-1 + x1) + log(49*x1/x2)*(-1 + x1) + log(14*x1/x2)*(-1 + x1
     ) + log(24*x1/x2)*(-1 + x1) + log(56*x1/x2)*(-1 + x1) + log(20*x1/x2)*(-1
      + x1) + log(79*x1/x2)*(-1 + x1) + log(84*x1/x2)*(-1 + x1) + log(44*x1/x2)
     *(-1 + x1) + log(59*x1/x2)*(-1 + x1) + log(29*x1/x2)*(-1 + x1) + log(118*
     x1/x2)*(-1 + x1) + log(25*x1/x2)*(-1 + x1) + log(156*x1/x2)*(-1 + x1) + 
     log(310*x1/x2)*(-1 + x1) + log(76*x1/x2)*(-1 + x1) + log(26*x1/x2)*(-1 + 
     x1) + log(44*x1/x2)*(-1 + x1) + log(23*x1/x2)*(-1 + x1) + log(62*x1/x2)*(-
     1 + x1) + log(130*x1/x2)*(-1 + x1) + log(208*x1/x2)*(-1 + x1) + log(70*x1/
     x2)*(-1 + x1) + log(101*x1/x2)*(-1 + x1) + log(208*x1/x2)*(-1 + x1) - (90*
     x1/x2 + 10*x1/x2 + 60*x1/x2 + 186*x1/x2 + 61*x1/x2 + 49*x1/x2 + 14*x1/x2
      + 24*x1/x2 + 56*x1/x2 + 20*x1/x2 + 79*x1/x2 + 84*x1/x2 + 44*x1/x2 + 59*x1
     /x2 + 29*x1/x2 + 118*x1/x2 + 25*x1/x2 + 156*x1/x2 + 310*x1/x2 + 76*x1/x2
      + 26*x1/x2 + 44*x1/x2 + 23*x1/x2 + 62*x1/x2 + 130*x1/x2 + 208*x1/x2 + 70*
     x1/x2 + 101*x1/x2 + 208*x1/x2)) + x3 =E= 0;

* set non-default bounds
x1.lo = 0.001;
x2.lo = 0.001;

* set non-default levels
x1.l = 0.001;
x2.l = 0.001;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x3;
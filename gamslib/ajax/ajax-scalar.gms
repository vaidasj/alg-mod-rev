*  LP written by GAMS Convert at 12/13/18 10:24:40
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          8        5        0        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         37       37        0        0
*
*  Solve m using LP maximizing x13;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..    0.0188679245283019*x1 + 0.0196078431372549*x4 + 0.0192307692307692*x7
      + 0.0238095238095238*x10 =L= 672;

e2..    0.0192307692307692*x2 + 0.0204081632653061*x5 + 0.0222222222222222*x8
      + 0.0227272727272727*x11 =L= 600;

e3..    0.0204081632653061*x3 + 0.0227272727272727*x6 + 0.0212765957446809*x9
      + 0.025*x12 =L= 480;

e4..    x1 + x2 + x3 =E= 30000;

e5..    x4 + x5 + x6 =E= 20000;

e6..    x7 + x8 + x9 =E= 12000;

e7..    x10 + x11 + x12 =E= 8000;

e8..    76*x1 + 75*x2 + 73*x3 + 82*x4 + 80*x5 + 78*x6 + 96*x7 + 95*x8 + 92*x9
      + 72*x10 + 71*x11 + 70*x12 + x13 =E= 5958000;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP maximizing x13;

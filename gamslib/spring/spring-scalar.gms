*  MINLP written by GAMS Convert at 12/13/18 10:32:24
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*          9        6        0        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         18        6       11        1        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         44       30       14        0
*
*  Solve m using MINLP minimizing x18;


Variables  x1,x2,x3,i4,x5,x6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,x18;

Binary Variables  b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17;

Integer Variables  i4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1.. -(3.141592654 + 1.570796327*i4)*x1*x2**2 + x18 =E= 0;

e2.. -x1/x2 + x5 =E= 0;

e3.. -((-1 + 4*x5)/(-4 + 4*x5) + 0.615/x5) + x6 =E= 0;

e4.. 2546.47908913782*x6*x5/x2**2 =L= 189000;

e5.. -6.95652173913044e-7*POWER(x5,3)*i4/x2 + x3 =E= 0;

e6.. (2.1 + 1.05*i4)*x2 + 1000*x3 =L= 14;

e7..    x1 + x2 =L= 3;

e8..    x2 - 0.207*b7 - 0.225*b8 - 0.244*b9 - 0.263*b10 - 0.283*b11 - 0.307*b12
      - 0.331*b13 - 0.362*b14 - 0.394*b15 - 0.4375*b16 - 0.5*b17 =E= 0;

e9..    b7 + b8 + b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 + b17 =E= 1;

* set non-default bounds
x1.lo = 0.414;
x2.lo = 0.207;
x3.lo = 0.00178571428571429; x3.up = 0.02;
i4.lo = 1; i4.up = 100;
x5.lo = 1.1;

* set non-default levels
x1.l = 2.67695454545455;
x2.l = 0.323045454545455;
x3.l = 0.00178571428571429;
i4.l = 1;
x5.l = 8.28661882650908;
b7.l = 0.0909090909090909;
b8.l = 0.0909090909090909;
b9.l = 0.0909090909090909;
b10.l = 0.0909090909090909;
b11.l = 0.0909090909090909;
b12.l = 0.0909090909090909;
b13.l = 0.0909090909090909;
b14.l = 0.0909090909090909;
b15.l = 0.0909090909090909;
b16.l = 0.0909090909090909;
b17.l = 0.0909090909090909;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using MINLP minimizing x18;

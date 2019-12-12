*  NLP written by GAMS Convert at 12/13/18 11:23:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         53       53        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         53       53        0        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        191       85      106        0
*
*  Solve m using NLP maximizing x53;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53;

Positive Variables  x49,x50,x51,x52;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53;


e1.. -1.97962633005252*x3**0.571428571428571*x5**0.428571428571429 + x1 =E= 0;

e2.. -1.99174121480513*x4**0.545454545454545*x6**0.454545454545455 + x2 =E= 0;

e3..    x7 - 0.287671232876712*x11 =E= 0;

e4..    x8 - 0.111111111111111*x12 =E= 0;

e5..    x9 - 0.232876712328767*x11 =E= 0;

e6..    x10 - 0.125*x12 =E= 0;

e7..    x1 - 0.479452054794521*x11 =E= 0;

e8..    x2 - 0.763888888888889*x12 =E= 0;

e9.. -0.571428571428571*x29*x1/x27 + x3 =E= 0;

e10.. -0.545454545454545*x30*x2/x27 + x4 =E= 0;

e11.. -0.428571428571429*x29*x1/x28 + x5 =E= 0;

e12.. -0.454545454545455*x30*x2/x28 + x6 =E= 0;

e13..  - 0.479452054794521*x29 + x31 - 0.287671232876712*x33
       - 0.232876712328767*x34 =E= 0;

e14..  - 0.763888888888889*x30 + x32 - 0.111111111111111*x33 - 0.125*x34 =E= 0;

e15..  - 12.7777777777778*x27 - 10.2222222222222*x28 + x48 =E= 0;

e16.. -0.0684931506849315*x31*x11 + x49 =E= 0;

e17.. -0.0555555555555556*x32*x12 + x50 =E= 0;

e18..    x51 =E= 0;

e19..    x52 =E= 0;

e20.. -(0.575757575757576*x48 - 0.575757575757576*x47 + 0.575757575757576*x49
       + 0.575757575757576*x50 + 0.575757575757576*x51 + 0.575757575757576*x52)
      /x33 + x15 =E= 0;

e21.. -(0.424242424242424*x48 - 0.424242424242424*x47 + 0.424242424242424*x49
       + 0.424242424242424*x50 + 0.424242424242424*x51 + 0.424242424242424*x52)
      /x34 + x16 =E= 0;

e22.. -(6.19354838709677*x41 + 0.516129032258065*x46 + 0.516129032258065*x47)/
      x33 + x17 =E= 0;

e23.. -(5.80645161290323*x41 + 0.483870967741935*x46 + 0.483870967741935*x47)/
      x34 + x18 =E= 0;

e24..  - 9.44444444444444*x27 - 7.55555555555556*x28 + x46 =E= 0;

e25..    x47 - 0.0571428571428571*x48 - 0.0571428571428571*x49
       - 0.0571428571428571*x50 - 0.0571428571428571*x51
       - 0.0571428571428571*x52 =E= 0;

e26.. -(20*x27 + 16*x28 - 0.4*x46 - 0.4*x48)/x33 + x13 =E= 0;

e27.. -(30*x27 + 24*x28 - 0.6*x46 - 0.6*x48)/x34 + x14 =E= 0;

e28.. -x41*x42 + x35 =E= 0;

e29.. -x41*x43 + x36 =E= 0;

e30.. -x41*x44 + x37 =E= 0;

e31.. -x41*x45 + x38 =E= 0;

e32.. x42*x19 + x43*x20 - (x44*x21 + x45*x22) =E= -12;

e33.. -x42**(-2) + 0.125*x19 =E= 0;

e34.. -x43**(-2) + 0.25*x20 =E= 0;

e35.. -x44**2 + 0.0769230769230769*x21 =E= 0;

e36.. -x45**2 + 0.0909090909090909*x22 =E= 0;

e37.. -1.78631298097427*(0.316984436431308*x21**0.5 + 0.683015563568692*x25**
      0.5)**2 + x23 =E= 0;

e38.. -1.8103795278422*(0.315975006847877*x22**0.5 + 0.684024993152123*x26**0.5
      )**2 + x24 =E= 0;

e39.. -(0.423659272868161*x33/x37)**2*x23 + x21 =E= 0;

e40.. -(0.425145461109024*x34/x38)**2*x24 + x22 =E= 0;

e41.. -(0.912870929175277*x33/x39)**2*x23 + x25 =E= 0;

e42.. -(0.920357986616844*x34/x40)**2*x24 + x26 =E= 0;

e43.. -2.42780549270868*(0.747349691412928*x19**1.5 + 0.252650308587072*x25**
      1.5)**0.666666666666667 + x11 =E= 0;

e44.. -2.91102542459458*(0.809256430169454*x20**1.5 + 0.190743569830546*x26**
      1.5)**0.666666666666667 + x12 =E= 0;

e45.. -(1.02120377146637*x31/x39)**(-2)*x11 + x25 =E= 0;

e46.. -(1*x32/x40)**(-2)*x12 + x26 =E= 0;

e47.. -(3.02076149339864*x31/x35)**(-2)*x11 + x19 =E= 0;

e48.. -(4.24264068711929*x32/x36)**(-2)*x12 + x20 =E= 0;

e49..  - x7 - x8 - x13 - x15 - x17 + x23 =E= 0;

e50..  - x9 - x10 - x14 - x16 - x18 + x24 =E= 0;

e51..    x3 + x4 =E= 50;

e52..    x5 + x6 =E= 40;

e53.. -x13**0.4*x14**0.6 + x53 =E= 0;

* set non-default bounds
x1.lo = 1E-5;
x2.lo = 1E-5;
x3.lo = 1E-5;
x4.lo = 1E-5;
x5.lo = 1E-5;
x6.lo = 1E-5;
x7.lo = 1E-5;
x8.lo = 1E-5;
x9.lo = 1E-5;
x10.lo = 1E-5;
x11.lo = 1E-5;
x12.lo = 1E-5;
x13.lo = 1E-5;
x14.lo = 1E-5;
x15.lo = 1E-5;
x16.lo = 1E-5;
x17.lo = 1E-5;
x18.lo = 1E-5;
x19.lo = 1E-5;
x20.lo = 1E-5;
x21.lo = 1E-5;
x22.lo = 1E-5;
x23.lo = 1E-5;
x24.lo = 1E-5;
x25.lo = 1E-5;
x26.lo = 1E-5;
x27.lo = 1E-5;
x28.fx = 1;
x29.lo = 1E-5;
x30.lo = 1E-5;
x31.lo = 1E-5;
x32.lo = 1E-5;
x33.lo = 1E-5;
x34.lo = 1E-5;
x35.lo = 1E-5;
x36.lo = 1E-5;
x37.lo = 1E-5;
x38.lo = 1E-5;
x39.lo = 1E-5;
x40.lo = 1E-5;
x41.lo = 1E-5;
x42.lo = 1E-5;
x43.lo = 1E-5;
x44.lo = 1E-5;
x45.lo = 1E-5;
x46.lo = 1E-5;
x47.lo = 1E-5;
x48.lo = 1E-5;

* set non-default levels
x1.l = 35;
x2.l = 55;
x3.l = 20;
x4.l = 30;
x5.l = 15;
x6.l = 25;
x7.l = 21;
x8.l = 8;
x9.l = 17;
x10.l = 9;
x11.l = 73;
x12.l = 72;
x13.l = 20;
x14.l = 30;
x15.l = 19;
x16.l = 14;
x17.l = 16;
x18.l = 15;
x19.l = 8;
x20.l = 4;
x21.l = 13;
x22.l = 11;
x23.l = 84;
x24.l = 85;
x25.l = 70;
x26.l = 72;
x27.l = 1;
x29.l = 1;
x30.l = 1;
x31.l = 1;
x32.l = 1;
x33.l = 1;
x34.l = 1;
x35.l = 1;
x36.l = 1;
x37.l = 1;
x38.l = 1;
x39.l = 1;
x40.l = 1;
x41.l = 1;
x42.l = 1;
x43.l = 1;
x44.l = 1;
x45.l = 1;
x46.l = 17;
x47.l = 2;
x48.l = 23;
x49.l = 5;
x50.l = 4;
x51.l = 1;
x52.l = 2;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x53;

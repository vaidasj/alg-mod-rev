*  LP written by GAMS Convert at 12/13/18 10:24:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         40       39        0        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         52       52        0        0        0        0        0        0
*  FX     13       13        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        170      170        0        0
*
*  Solve m using LP minimizing x24;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52;

Positive Variables  x25,x36,x37,x38,x41;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40;


e1..    x2 + 0.329749103942652*x20 - 0.039426523297491*x21
      + 0.548387096774194*x22 + 0.161290322580645*x23 - x50 =E= 0;

e2..    x3 - 0.670250896057348*x20 + 0.960573476702509*x21
      + 0.548387096774194*x22 + 0.161290322580645*x23 - x50 =E= 0;

e3..    x4 + 0.274193548387097*x20 + 0.0161290322580645*x21
      + 0.775659824046921*x22 - 0.0659824046920821*x23 - x50 =E= 0;

e4..    x5 + 0.274193548387097*x20 + 0.0161290322580645*x21
      - 0.224340175953079*x22 + 0.934017595307918*x23 - x50 =E= 0;

e5..  - x7 + 0.5*x9 + x28 =E= 0;

e6..  - x8 + 0.05*x10 + x29 =E= 0;

e7..  - 0.262295081967213*x20 + 0.262295081967213*x22 + x32 - x51 =E= 0;

e8..  - 0.795454545454545*x20 + 0.795454545454545*x22 + x33 - x52 =E= 0;

e9..    0.737704918032787*x20 - 0.737704918032787*x22 + x34 - x51 =E= 0;

e10..    0.204545454545455*x20 - 0.204545454545455*x22 + x35 - x52 =E= 0;

e11..    0.0909090909090909*x20 - 0.0909090909090909*x21 + x42 - x51 =E= 0;

e12..    0.5*x20 - 0.5*x21 + x43 - x52 =E= 0;

e13..  - 0.909090909090909*x20 + 0.909090909090909*x21 + x44 - x51 =E= 0;

e14..  - 0.5*x20 + 0.5*x21 + x45 - x52 =E= 0;

e15..    0.25*x22 - 0.25*x23 + x46 - x51 =E= 0;

e16..    0.666666666666667*x22 - 0.666666666666667*x23 + x47 - x52 =E= 0;

e17..  - 0.75*x22 + 0.75*x23 + x48 - x51 =E= 0;

e18..  - 0.333333333333333*x22 + 0.333333333333333*x23 + x49 - x52 =E= 0;

e19..    x12 + 0.666666666666667*x26 - 0.666666666666667*x40 - x51 =E= 0;

e20..    x13 + 0.8*x27 - 0.8*x40 - x52 =E= 0;

e21..    x17 - 0.333333333333333*x26 + 0.333333333333333*x40 - x51 =E= 0;

e22..    x18 - 0.2*x27 + 0.2*x40 - x52 =E= 0;

e23..    0.573770491803279*x20 - 0.0163934426229508*x21
       + 0.0163934426229508*x22 - 0.0819672131147541*x23
       - 0.163934426229508*x26 - 0.327868852459016*x40 =E= 0;

e24..    0.0227272727272727*x20 - 0.181818181818182*x21 + 0.772727272727273*x22
       - 0.0454545454545455*x23 - 0.113636363636364*x27 - 0.454545454545455*x40
       =E= 0;

e25..    x20 - x25 - x28 - x38 =E= 0;

e26..    x22 - x25 - x29 - x39 =E= 0;

e27..    x21 - x25 - x30 - x36 =E= 0;

e28..    x23 - x25 - x31 - x37 =E= 0;

e29..  - 0.314814814814815*x2 - 0.351851851851852*x9 + 0.833333333333333*x32
       + 0.166666666666667*x33 - 0.185185185185185*x42 - 0.148148148148148*x43
       =E= 0;

e30..  - 0.666666666666667*x4 - 0.0196078431372549*x10 + 0.313725490196078*x34
       + 0.686274509803922*x35 - 0.294117647058824*x46 - 0.0196078431372549*x47
       =E= 0;

e31..  - x16 + 0.5*x17 + 0.5*x18 =E= 0;

e32..    x12 - x14 =E= 0;

e33..    x13 - x15 =E= 0;

e34..  - 0.0428571428571429*x3 - 0.336134453781513*x5 + x19
       - 0.428571428571429*x30 - 0.571428571428571*x31 - 0.0428571428571429*x44
       - 0.342857142857143*x45 - 0.168067226890756*x48 - 0.0672268907563025*x49
       =E= 0;

e35..  - 0.95*x9 - 0.05*x10 + x11 - 0.95*x28 - 0.05*x29 =E= 0;

e36..    x1 - 0.2*x11 + 0.21*x19 =E= 0;

e37..  - 0.274193548387097*x20 - 0.0161290322580645*x21 - 0.548387096774194*x22
       - 0.161290322580645*x23 + x24 =E= 0;

e38..  - x24 + x40 - x41 =E= 0;

e39..    x6 + x24 - x50 =E= 0;

e40..    x24 =L= 100000;

* set non-default bounds
x7.fx = 1;
x8.fx = 1;
x10.fx = 1;
x14.fx = 3;
x15.fx = 3;
x25.fx = 0;
x30.fx = -2;
x31.fx = -2;
x36.fx = 0;
x37.fx = 0;
x38.fx = 0;
x41.fx = 0;
x50.fx = 2;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using LP minimizing x24;

*  NLP written by GAMS Convert at 12/13/18 11:34:19
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         31       31        0        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         61       61        0        0        0        0        0        0
*  FX      2        2        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        121       31       90        0
*
*  Solve m using NLP maximizing x1;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31;


e1.. -((x31 - x2)*x32 + (x31 - x3)*(x33 - x32) + (x31 - x4)*(x34 - x33) + (x31
      - x5)*(x35 - x34) + (x31 - x6)*(x36 - x35) + (x31 - x7)*(x37 - x36) + (
     x31 - x8)*(x38 - x37) + (x31 - x9)*(x39 - x38) + (x31 - x10)*(x40 - x39)
      + (x31 - x11)*(x41 - x40) + (x31 - x12)*(x42 - x41) + (x31 - x13)*(x43 - 
     x42) + (x31 - x14)*(x44 - x43) + (x31 - x15)*(x45 - x44) + (x31 - x16)*(
     x46 - x45) + (x31 - x17)*(x47 - x46) + (x31 - x18)*(x48 - x47) + (x31 - 
     x19)*(x49 - x48) + (x31 - x20)*(x50 - x49) + (x31 - x21)*(x51 - x50) + (
     x31 - x22)*(x52 - x51) + (x31 - x23)*(x53 - x52) + (x31 - x24)*(x54 - x53)
      + (x31 - x25)*(x55 - x54) + (x31 - x26)*(x56 - x55) + (x31 - x27)*(x57 - 
     x56) + (x31 - x28)*(x58 - x57) + (x31 - x29)*(x59 - x58) + (x31 - x30)*(
     x60 - x59) + 0.5*((x3 - x2)*(x33 - x32) + (x4 - x3)*(x34 - x33) + (x5 - x4
     )*(x35 - x34) + (x6 - x5)*(x36 - x35) + (x7 - x6)*(x37 - x36) + (x8 - x7)*
     (x38 - x37) + (x9 - x8)*(x39 - x38) + (x10 - x9)*(x40 - x39) + (x11 - x10)
     *(x41 - x40) + (x12 - x11)*(x42 - x41) + (x13 - x12)*(x43 - x42) + (x14 - 
     x13)*(x44 - x43) + (x15 - x14)*(x45 - x44) + (x16 - x15)*(x46 - x45) + (
     x17 - x16)*(x47 - x46) + (x18 - x17)*(x48 - x47) + (x19 - x18)*(x49 - x48)
      + (x20 - x19)*(x50 - x49) + (x21 - x20)*(x51 - x50) + (x22 - x21)*(x52 - 
     x51) + (x23 - x22)*(x53 - x52) + (x24 - x23)*(x54 - x53) + (x25 - x24)*(
     x55 - x54) + (x26 - x25)*(x56 - x55) + (x27 - x26)*(x57 - x56) + (x28 - 
     x27)*(x58 - x57) + (x29 - x28)*(x59 - x58) + (x30 - x29)*(x60 - x59) + (
     x31 - x30)*(x61 - x60))) + x1 =E= 0;

e2.. 1/x2 + x32 =E= 0;

e3.. 1/x3 + x33 =E= 0;

e4.. 1/x4 + x34 =E= 0;

e5.. 1/x5 + x35 =E= 0;

e6.. 1/x6 + x36 =E= 0;

e7.. 1/x7 + x37 =E= 0;

e8.. 1/x8 + x38 =E= 0;

e9.. 1/x9 + x39 =E= 0;

e10.. 1/x10 + x40 =E= 0;

e11.. 1/x11 + x41 =E= 0;

e12.. 1/x12 + x42 =E= 0;

e13.. 1/x13 + x43 =E= 0;

e14.. 1/x14 + x44 =E= 0;

e15.. 1/x15 + x45 =E= 0;

e16.. 1/x16 + x46 =E= 0;

e17.. 1/x17 + x47 =E= 0;

e18.. 1/x18 + x48 =E= 0;

e19.. 1/x19 + x49 =E= 0;

e20.. 1/x20 + x50 =E= 0;

e21.. 1/x21 + x51 =E= 0;

e22.. 1/x22 + x52 =E= 0;

e23.. 1/x23 + x53 =E= 0;

e24.. 1/x24 + x54 =E= 0;

e25.. 1/x25 + x55 =E= 0;

e26.. 1/x26 + x56 =E= 0;

e27.. 1/x27 + x57 =E= 0;

e28.. 1/x28 + x58 =E= 0;

e29.. 1/x29 + x59 =E= 0;

e30.. 1/x30 + x60 =E= 0;

e31.. 1/x31 + x61 =E= 0;

* set non-default bounds
x2.fx = 5;
x3.lo = 5; x3.up = 100;
x4.lo = 5; x4.up = 100;
x5.lo = 5; x5.up = 100;
x6.lo = 5; x6.up = 100;
x7.lo = 5; x7.up = 100;
x8.lo = 5; x8.up = 100;
x9.lo = 5; x9.up = 100;
x10.lo = 5; x10.up = 100;
x11.lo = 5; x11.up = 100;
x12.lo = 5; x12.up = 100;
x13.lo = 5; x13.up = 100;
x14.lo = 5; x14.up = 100;
x15.lo = 5; x15.up = 100;
x16.lo = 5; x16.up = 100;
x17.lo = 5; x17.up = 100;
x18.lo = 5; x18.up = 100;
x19.lo = 5; x19.up = 100;
x20.lo = 5; x20.up = 100;
x21.lo = 5; x21.up = 100;
x22.lo = 5; x22.up = 100;
x23.lo = 5; x23.up = 100;
x24.lo = 5; x24.up = 100;
x25.lo = 5; x25.up = 100;
x26.lo = 5; x26.up = 100;
x27.lo = 5; x27.up = 100;
x28.lo = 5; x28.up = 100;
x29.lo = 5; x29.up = 100;
x30.lo = 5; x30.up = 100;
x31.fx = 100;

* set non-default levels
x3.l = 5;
x4.l = 5;
x5.l = 5;
x6.l = 5;
x7.l = 5;
x8.l = 5;
x9.l = 5;
x10.l = 5;
x11.l = 5;
x12.l = 5;
x13.l = 5;
x14.l = 5;
x15.l = 5;
x16.l = 5;
x17.l = 5;
x18.l = 5;
x19.l = 5;
x20.l = 5;
x21.l = 5;
x22.l = 5;
x23.l = 5;
x24.l = 5;
x25.l = 5;
x26.l = 5;
x27.l = 5;
x28.l = 5;
x29.l = 5;
x30.l = 5;

Model m / all /;

m.limrow=0; m.limcol=0;

Solve m using NLP maximizing x1;
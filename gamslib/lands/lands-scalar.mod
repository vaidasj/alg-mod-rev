#  LP written by GAMS Convert at 12/13/18 10:32:16
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         24        1       10       13        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         41       41        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        133      133        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x6 >= 0;
var x7 >= 0;
var x8 >= 0;
var x9 >= 0;
var x10 >= 0;
var x11 >= 0;
var x12 >= 0;
var x13 >= 0;
var x14 >= 0;
var x15 >= 0;
var x16 >= 0;
var x17 >= 0;
var x18 >= 0;
var x19 >= 0;
var x20 >= 0;
var x21 >= 0;
var x22 >= 0;
var x23 >= 0;
var x24 >= 0;
var x25 >= 0;
var x26 >= 0;
var x27 >= 0;
var x28 >= 0;
var x29 >= 0;
var x30 >= 0;
var x31 >= 0;
var x32 >= 0;
var x33 >= 0;
var x34 >= 0;
var x35 >= 0;
var x36 >= 0;
var x37 >= 0;
var x38 >= 0;
var x39 >= 0;
var x40 >= 0;
var x41 >= 0;

minimize obj:    10*x1 + 7*x2 + 16*x3 + 6*x4 + 12*x6 + 16*x7 + 12*x8 + 7.2*x9
     + 9.6*x10 + 7.2*x11 + 1.2*x12 + 1.6*x13 + 1.2*x14 + 13.5*x15 + 18*x16
     + 13.5*x17 + 8.1*x18 + 10.8*x19 + 8.1*x20 + 1.35*x21 + 1.8*x22 + 1.35*x23
     + 9.6*x24 + 12.8*x25 + 9.6*x26 + 5.76*x27 + 7.68*x28 + 5.76*x29 + 0.96*x30
     + 1.28*x31 + 0.96*x32 + 16.5*x33 + 22*x34 + 16.5*x35 + 9.9*x36 + 13.2*x37
     + 9.9*x38 + 1.65*x39 + 2.2*x40 + 1.65*x41;

subject to

e2:    x1 + x2 + x3 + x4 >= 12;

e3:    10*x1 + 7*x2 + 16*x3 + 6*x4 <= 120;

e4:  - x1 + x6 + x9 + x12 <= 0;

e5:  - x1 + x7 + x10 + x13 <= 0;

e6:  - x1 + x8 + x11 + x14 <= 0;

e7:  - x2 + x15 + x18 + x21 <= 0;

e8:  - x2 + x16 + x19 + x22 <= 0;

e9:  - x2 + x17 + x20 + x23 <= 0;

e10:  - x3 + x24 + x27 + x30 <= 0;

e11:  - x3 + x25 + x28 + x31 <= 0;

e12:  - x3 + x26 + x29 + x32 <= 0;

e13:  - x4 + x33 + x36 + x39 <= 0;

e14:  - x4 + x34 + x37 + x40 <= 0;

e15:  - x4 + x35 + x38 + x41 <= 0;

e16:    x6 + x15 + x24 + x33 >= 3;

e17:    x7 + x16 + x25 + x34 >= 5;

e18:    x8 + x17 + x26 + x35 >= 7;

e19:    x9 + x18 + x27 + x36 >= 3;

e20:    x10 + x19 + x28 + x37 >= 3;

e21:    x11 + x20 + x29 + x38 >= 3;

e22:    x12 + x21 + x30 + x39 >= 2;

e23:    x13 + x22 + x31 + x40 >= 2;

e24:    x14 + x23 + x32 + x41 >= 2;

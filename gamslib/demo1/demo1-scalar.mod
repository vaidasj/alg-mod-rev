#  LP written by GAMS Convert at 12/13/18 10:24:46
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         41       17        0       24        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         48       48        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        184      184        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;
var x7 >= 0;
var x9;
var x10;
var x11;
var x12;
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
var x42 >= 0;
var x43 >= 0;
var x44 >= 0;
var x45 >= 0;
var x46 >= 0;
var x47 >= 0;
var x48 >= 0;

maximize obj:    x9 - x10 - x11 + x12;

subject to

e1:    x1 + x2 + x3 + x4 <= 4;

e2:    x1 + x2 + x3 + x4 <= 4;

e3:    x1 + 0.5*x2 + x3 + x4 + 0.5*x5 <= 4;

e4:    x1 + x3 + x4 + x5 <= 4;

e5:    x1 + 0.25*x4 + x5 + 0.25*x6 <= 4;

e6:    x5 + x6 <= 4;

e7:    x5 + x6 + 0.75*x7 <= 4;

e8:    x5 + x6 + x7 <= 4;

e9:    x5 + x6 + x7 <= 4;

e10:    x5 + 0.5*x6 + x7 <= 4;

e11:    0.5*x1 + 0.25*x2 + 0.25*x3 + 0.5*x4 + 0.75*x5 + 0.75*x7 <= 4;

e12:    x1 + x2 + x3 + x4 <= 4;

e13:    1.72*x1 + 4.5*x2 + 0.75*x3 + 5.16*x4 - x13 - x37 <= 0;

e14:    0.5*x1 + x2 + 0.75*x3 + 5*x4 - x14 - x38 <= 0;

e15:    x1 + 8*x2 + 0.75*x3 + 5*x4 + 5*x5 - x15 - x39 <= 0;

e16:    x1 + 16*x3 + 19.58*x4 + 5*x5 - x16 - x40 <= 0;

e17:    17.16*x1 + 2.42*x4 + 9*x5 + 4.3*x6 - x17 - x41 <= 0;

e18:    2.34*x1 + 2*x5 + 5.04*x6 - x18 - x42 <= 0;

e19:    1.5*x5 + 7.16*x6 + 17*x7 - x19 - x43 <= 0;

e20:    2*x5 + 7.97*x6 + 15*x7 - x20 - x44 <= 0;

e21:    x5 + 4.41*x6 + 12*x7 - x21 - x45 <= 0;

e22:    26*x5 + 1.12*x6 + 7*x7 - x22 - x46 <= 0;

e23:    2.43*x1 + 2.5*x2 + 7.5*x3 + 11.16*x4 + 12*x5 + 6*x7 - x23 - x47 <= 0;

e24:    1.35*x1 + 7.5*x2 + 0.75*x3 + 4.68*x4 - x24 - x48 <= 0;

e25:  - x13 - x25 = -25;

e26:  - x14 - x26 = -25;

e27:  - x15 - x27 = -25;

e28:  - x16 - x28 = -25;

e29:  - x17 - x29 = -25;

e30:  - x18 - x30 = -25;

e31:  - x19 - x31 = -25;

e32:  - x20 - x32 = -25;

e33:  - x21 - x33 = -25;

e34:  - x22 - x34 = -25;

e35:  - x23 - x35 = -25;

e36:  - x24 - x36 = -25;

e37:  - 150*x1 - 200*x3 - 375*x4 - 525*x5 - 140*x6 - 360*x7 + x9 = 0;

e38:  - 10*x1 - 5*x3 - 50*x4 - 80*x5 - 5*x6 - 50*x7 + x10 = 0;

e39:    x11 - 4*x37 - 4*x38 - 4*x39 - 4*x40 - 4*x41 - 4*x42 - 4*x43 - 4*x44
      - 4*x45 - 4*x46 - 4*x47 - 4*x48 = 0;

e40:    x12 - 3*x25 - 3*x26 - 3*x27 - 3*x28 - 3*x29 - 3*x30 - 3*x31 - 3*x32
      - 3*x33 - 3*x34 - 3*x35 - 3*x36 = 0;

#  QCP written by GAMS Convert at 12/13/18 11:23:26
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         47       19        2       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         60       60        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        245      239        6        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;
var x7 >= 0;
var x8;
var x9;
var x10;
var x11;
var x12;
var x13 >= 0, <= 25000;
var x14 >= 0, <= 25000;
var x15 >= 0, <= 25000;
var x16 >= 0, <= 25000;
var x17 >= 0, <= 25000;
var x18 >= 0, <= 25000;
var x19 >= 0, <= 25000;
var x20 >= 0, <= 25000;
var x21 >= 0, <= 25000;
var x22 >= 0, <= 25000;
var x23 >= 0, <= 25000;
var x24 >= 0, <= 25000;
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
var x49 >= 0;
var x50 >= 0;
var x51 >= 0;
var x52 >= 0;
var x53 >= 0;
var x54 >= 0;
var x55 >= 0;
var x56 >= 0;
var x57 >= 0;
var x58 >= 0;
var x59 >= 0;

maximize obj: 225*x48 - 0.0231481481481481*x48^2 + 700*x49 - 0.277777777777778*
    x49^2 + 250*x50 - 0.0892857142857143*x50^2 + 700*x51 - 0.0833333333333333*
    x51^2 + 210*x52 - 0.0184210526315789*x52^2 + 220*x53 - 0.1*x53^2 - x12
     + 40*x54 + 300*x55 + 60*x56 - 140*x57 - 270*x58 - 85*x59;

subject to

e1:    x1 + x2 + x3 + x4 <= 4000;

e2:    x1 + x2 + x3 + x4 <= 4000;

e3:    x1 + 0.5*x2 + x3 + x4 + 0.5*x5 <= 4000;

e4:    x1 + x3 + x4 + x5 <= 4000;

e5:    x1 + 0.25*x4 + x5 + 0.25*x6 <= 4000;

e6:    x5 + x6 <= 4000;

e7:    x5 + x6 + 0.75*x7 <= 4000;

e8:    x5 + x6 + x7 <= 4000;

e9:    x5 + x6 + x7 <= 4000;

e10:    x5 + 0.5*x6 + x7 <= 4000;

e11:    0.5*x1 + 0.25*x2 + 0.25*x3 + 0.5*x4 + 0.75*x5 + 0.75*x7 <= 4000;

e12:    x1 + x2 + x3 + x4 <= 4000;

e13:    1.72*x1 + 4.5*x2 + 0.75*x3 + 5.16*x4 - x13 - x25 + 2*x37 + 2*x38 <= 0;

e14:    0.5*x1 + x2 + 0.75*x3 + 5*x4 - x14 - x26 + 2*x37 + 2*x38 <= 0;

e15:    x1 + 8*x2 + 0.75*x3 + 5*x4 + 5*x5 - x15 - x27 + 2*x37 + 2*x38 <= 0;

e16:    x1 + 16*x3 + 19.58*x4 + 5*x5 - x16 - x28 + 2*x37 + 2*x38 <= 0;

e17:    17.16*x1 + 2.42*x4 + 9*x5 + 4.3*x6 - x17 - x29 + 2*x37 + 2*x38 <= 0;

e18:    2.34*x1 + 2*x5 + 5.04*x6 - x18 - x30 + 2*x37 + 2*x38 <= 0;

e19:    1.5*x5 + 7.16*x6 + 17*x7 - x19 - x31 + 2*x37 + 2*x38 <= 0;

e20:    2*x5 + 7.97*x6 + 15*x7 - x20 - x32 + 2*x37 + 2*x38 <= 0;

e21:    x5 + 4.41*x6 + 12*x7 - x21 - x33 + 2*x37 + 2*x38 <= 0;

e22:    26*x5 + 1.12*x6 + 7*x7 - x22 - x34 + 2*x37 + 2*x38 <= 0;

e23:    2.43*x1 + 2.5*x2 + 7.5*x3 + 11.16*x4 + 12*x5 + 6*x7 - x23 - x35 + 2*x37
      + 2*x38 <= 0;

e24:    1.35*x1 + 7.5*x2 + 0.75*x3 + 4.68*x4 - x24 - x36 + 2*x37 + 2*x38 <= 0;

e25:    x5 + x6 + x7 - 2*x37 - 2*x38 - x46 <= 0;

e26:    x1 + x2 + x3 + x4 - 2*x37 - 2*x38 - x47 <= 0;

e27:    x11 - 3*x13 - 3*x14 - 3*x15 - 3*x16 - 3*x17 - 3*x18 - 3*x19 - 3*x20
      - 3*x21 - 3*x22 - 3*x23 - 3*x24 = 0;

e28:    x10 - 4*x25 - 4*x26 - 4*x27 - 4*x28 - 4*x29 - 4*x30 - 4*x31 - 4*x32
      - 4*x33 - 4*x34 - 4*x35 - 4*x36 = 0;

e29:  - x8 - x9 - x10 - x11 + x12 = 0;

e30:  - x39 + x48 - x57 = 0;

e31:  - x41 + x49 - x58 = 0;

e32:  - x42 + x50 + x54 = 0;

e33:  - x43 + x51 + x55 = 0;

e34:  - x44 + x52 - x59 = 0;

e35:  - x45 + x53 + x56 = 0;

e36:  - 1.5*x1 + x39 = 0;

e37:  - 6*x2 + x40 = 0;

e38:  - x3 + x41 = 0;

e39:  - 3*x4 + x42 = 0;

e40:  - 1.5*x5 + x43 = 0;

e41:  - 2*x6 + x44 = 0;

e42:  - 3*x7 + x45 = 0;

e43:  - 10*x1 - 5*x3 - 50*x4 - 80*x5 - 5*x6 - 50*x7 + x8 = 0;

e44:    x9 - 40*x46 - 40*x47 = 0;

e45:    6*x2 - 1.3*x37 - 2*x38 >= 0;

e46:    1.75*x1 - 1.6*x37 - 0.8*x38 >= 0;
#  LP written by GAMS Convert at 12/13/18 10:24:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11       11        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51       51        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        130      130        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
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
var x41 := 5, >= 5;
var x42 := 6, >= 6;
var x43 := 7, >= 7;
var x44 := 6, >= 6;
var x45 := 4, >= 4;
var x46 := 9, >= 9;
var x47 := 8, >= 8;
var x48 := 8, >= 8;
var x49 := 6, >= 6;
var x50 := 4, >= 4;

minimize obj:    50*x1 + 85*x2 + 115*x3 + 143*x4 + 52.5*x5 + 89.25*x6
     + 120.75*x7 + 150.15*x8 + 56*x9 + 95.2*x10 + 128.8*x11 + 160.16*x12
     + 85.5*x13 + 145.35*x14 + 196.65*x15 + 244.53*x16 + 90*x17 + 153*x18
     + 207*x19 + 257.4*x20 + 95*x21 + 161.5*x22 + 218.5*x23 + 271.7*x24
     + 98.5*x25 + 167.45*x26 + 226.55*x27 + 281.71*x28 + 105*x29 + 178.5*x30
     + 241.5*x31 + 300.3*x32 + 111*x33 + 188.7*x34 + 255.3*x35 + 317.46*x36
     + 119*x37 + 202.3*x38 + 273.7*x39 + 340.34*x40;

subject to

e2:  - x1 - x2 - x3 - x4 + x41 = 0;

e3:    x1 - x5 - x6 - x7 - x8 - x41 + x42 = 0;

e4:    x2 + x5 - x9 - x10 - x11 - x12 - x42 + x43 = 0;

e5:    x3 + x6 + x9 - x13 - x14 - x15 - x16 - x43 + x44 = 0;

e6:    x4 + x7 + x10 + x13 - x17 - x18 - x19 - x20 - x44 + x45 = 0;

e7:    x8 + x11 + x14 + x17 - x21 - x22 - x23 - x24 - x45 + x46 = 0;

e8:    x12 + x15 + x18 + x21 - x25 - x26 - x27 - x28 - x46 + x47 = 0;

e9:    x16 + x19 + x22 + x25 - x29 - x30 - x31 - x32 - x47 + x48 = 0;

e10:    x20 + x23 + x26 + x29 - x33 - x34 - x35 - x36 - x48 + x49 = 0;

e11:    x24 + x27 + x30 + x33 - x37 - x38 - x39 - x40 - x49 + x50 = 0;

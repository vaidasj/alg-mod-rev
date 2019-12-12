#  MIP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         56        1       40       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         46       31        0       15        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        181      181        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1;
var x2;
var x3;
var x4;
var x5;
var x6;
var x7;
var x8;
var x9;
var x10;
var x11;
var x12;
var x13;
var x14;
var x15;
var i16 integer >= 0, <= 12;
var i17 integer >= 0, <= 12;
var i18 integer >= 0, <= 12;
var i19 integer >= 0, <= 12;
var i20 integer >= 0, <= 12;
var i21 integer >= 0, <= 10;
var i22 integer >= 0, <= 10;
var i23 integer >= 0, <= 10;
var i24 integer >= 0, <= 10;
var i25 integer >= 0, <= 10;
var i26 integer >= 0, <= 5;
var i27 integer >= 0, <= 5;
var i28 integer >= 0, <= 5;
var i29 integer >= 0, <= 5;
var i30 integer >= 0, <= 5;
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

minimize obj:    12000*x1 + 6000*x2 + 12000*x3 + 6000*x4 + 12000*x5 + 7800*x6
     + 3900*x7 + 7800*x8 + 3900*x9 + 7800*x10 + 18000*x11 + 9000*x12
     + 18000*x13 + 9000*x14 + 18000*x15 - 4200*i16 - 2100*i17 - 4200*i18
     - 2100*i19 - 4200*i20 + 5850*i21 + 2925*i22 + 5850*i23 + 2925*i24
     + 5850*i25 - 9000*i26 - 4500*i27 - 9000*i28 - 4500*i29 - 9000*i30
     + 2000*x31 + 2000*x32 + 2000*x33 + 2000*x34 + 2000*x35 + 1000*x36
     + 1000*x37 + 1000*x38 + 1000*x39 + 1000*x40 + 500*x41 + 500*x42 + 500*x43
     + 500*x44 + 500*x45;

subject to

e1:    x1 + x6 + x11 >= 15;

e2:    x2 + x7 + x12 >= 30;

e3:    x3 + x8 + x13 >= 25;

e4:    x4 + x9 + x14 >= 40;

e5:    x5 + x10 + x15 >= 27;

e6:    2*i16 + 1.75*i21 + 4*i26 >= 17.25;

e7:    2*i17 + 1.75*i22 + 4*i27 >= 34.5;

e8:    2*i18 + 1.75*i23 + 4*i28 >= 28.75;

e9:    2*i19 + 1.75*i24 + 4*i29 >= 46;

e10:    2*i20 + 1.75*i25 + 4*i30 >= 31.05;

e11:  - i16 + i20 + x31 >= 0;

e12:    i16 - i17 + x32 >= 0;

e13:    i17 - i18 + x33 >= 0;

e14:    i18 - i19 + x34 >= 0;

e15:    i19 - i20 + x35 >= 0;

e16:  - i21 + i25 + x36 >= 0;

e17:    i21 - i22 + x37 >= 0;

e18:    i22 - i23 + x38 >= 0;

e19:    i23 - i24 + x39 >= 0;

e20:    i24 - i25 + x40 >= 0;

e21:  - i26 + i30 + x41 >= 0;

e22:    i26 - i27 + x42 >= 0;

e23:    i27 - i28 + x43 >= 0;

e24:    i28 - i29 + x44 >= 0;

e25:    i29 - i30 + x45 >= 0;

e26:    x1 - 0.85*i16 >= 0;

e27:    x2 - 0.85*i17 >= 0;

e28:    x3 - 0.85*i18 >= 0;

e29:    x4 - 0.85*i19 >= 0;

e30:    x5 - 0.85*i20 >= 0;

e31:    x6 - 1.25*i21 >= 0;

e32:    x7 - 1.25*i22 >= 0;

e33:    x8 - 1.25*i23 >= 0;

e34:    x9 - 1.25*i24 >= 0;

e35:    x10 - 1.25*i25 >= 0;

e36:    x11 - 1.5*i26 >= 0;

e37:    x12 - 1.5*i27 >= 0;

e38:    x13 - 1.5*i28 >= 0;

e39:    x14 - 1.5*i29 >= 0;

e40:    x15 - 1.5*i30 >= 0;

e41:    x1 - 2*i16 <= 0;

e42:    x2 - 2*i17 <= 0;

e43:    x3 - 2*i18 <= 0;

e44:    x4 - 2*i19 <= 0;

e45:    x5 - 2*i20 <= 0;

e46:    x6 - 1.75*i21 <= 0;

e47:    x7 - 1.75*i22 <= 0;

e48:    x8 - 1.75*i23 <= 0;

e49:    x9 - 1.75*i24 <= 0;

e50:    x10 - 1.75*i25 <= 0;

e51:    x11 - 4*i26 <= 0;

e52:    x12 - 4*i27 <= 0;

e53:    x13 - 4*i28 <= 0;

e54:    x14 - 4*i29 <= 0;

e55:    x15 - 4*i30 <= 0;

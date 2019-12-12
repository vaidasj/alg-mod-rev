#  MCP written by GAMS Convert at 12/13/18 11:30:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         30       18       12        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         30       30        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         84       84        0        0


var x1 := 101;
var x2 := 195.272727272727;
var x3 := 64;
var x4 := 35.9090909090909;
var x5 := 90;
var x6 := 154.272727272727;
var x7 := 65.5;
var x8 := 120.363636363636;
var x9 := 134.5;
var x10 := 160.227272727273;
var x11 := 55;
var x12 := 104.863636363636;
var x13;
var x14;
var x15;
var x16;
var x17 := 35.5;
var x18 := 74.9090909090909;
var x19 := 35.0000000000001;
var x20 := 49.409090909091;
var x21;
var x22;
var x23;
var x24;
var x25 := 11;
var x26 := 11.6363636363636;
var x27 := 9;
var x28 := 8.63636363636364;
var x29 := 10;
var x30 := 10.6363636363636;

subject to

e1:  - x1 - 9*x25 = -200;

e2:  - x2 - 9*x26 = -300;

e3:  - x3 - 4*x27 = -100;

e4:  - x4 - 19*x28 = -200;

e5:  - x5 - 7*x29 = -160;

e6:  - x6 - 9*x30 = -250;

e7:  - x7 + 10.5*x25 = 50;

e8:  - x8 + 15.5*x26 = 60;

e9:  - x9 + 20.5*x27 = 50;

e10:  - x10 + 25.5*x28 = 60;

e11:  - x11 + 10.5*x29 = 50;

e12:  - x12 + 15.5*x30 = 60;

e13:  - x1 + x7 - x13 - x15 + x17 + x21 >= 0 complements x25 >= 0;

e14:  - x2 + x8 - x14 - x16 + x18 + x22 >= 0 complements x26 >= 0;

e15:  - x3 + x9 + x13 - x17 - x19 + x23 >= 0 complements x27 >= 0;

e16:  - x4 + x10 + x14 - x18 - x20 + x24 >= 0 complements x28 >= 0;

e17:  - x5 + x11 + x15 + x19 - x21 - x23 >= 0 complements x29 >= 0;

e18:  - x6 + x12 + x16 + x20 - x22 - x24 >= 0 complements x30 >= 0;

e19:    x25 - x27 >= -2 complements x13 >= 0;

e20:    x26 - x28 >= -3 complements x14 >= 0;

e21:    x25 - x29 >= -2 complements x15 >= 0;

e22:    x26 - x30 >= -3 complements x16 >= 0;

e23:  - x25 + x27 >= -2 complements x17 >= 0;

e24:  - x26 + x28 >= -3 complements x18 >= 0;

e25:    x27 - x29 >= -1 complements x19 >= 0;

e26:    x28 - x30 >= -2 complements x20 >= 0;

e27:  - x25 + x29 >= -2 complements x21 >= 0;

e28:  - x26 + x30 >= -3 complements x22 >= 0;

e29:  - x27 + x29 >= -1 complements x23 >= 0;

e30:  - x28 + x30 >= -2 complements x24 >= 0;

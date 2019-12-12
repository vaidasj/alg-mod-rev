#  MIP written by GAMS Convert at 12/13/18 10:32:17
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         42        6       36        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         57       37       20        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        165      165        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


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
var b38 binary >= 0, <= 1;
var b39 binary >= 0, <= 1;
var b40 binary >= 0, <= 1;
var b41 binary >= 0, <= 1;
var b42 binary >= 0, <= 1;
var b43 binary >= 0, <= 1;
var b44 binary >= 0, <= 1;
var b45 binary >= 0, <= 1;
var b46 binary >= 0, <= 1;
var b47 binary >= 0, <= 1;
var b48 binary >= 0, <= 1;
var b49 binary >= 0, <= 1;
var b50 binary >= 0, <= 1;
var b51 binary >= 0, <= 1;
var b52 binary >= 0, <= 1;
var b53 binary >= 0, <= 1;
var b54 binary >= 0, <= 1;
var b55 binary >= 0, <= 1;
var b56 binary >= 0, <= 1;
var b57 binary >= 0, <= 1;

minimize obj:    2*x2 + 4*x3 + 3*x4 + 2*x5 + 4*x6 + 3*x7 + 2*x8 + 4*x9 + 3*x10
     + 2*x11 + 4*x12 + 3*x13 + 6*x14 + 2*x15 + 3*x16 + 6*x17 + 2*x18 + 3*x19
     + 6*x20 + 2*x21 + 3*x22 + 6*x23 + 2*x24 + 3*x25 + 5*x26 + 3*x27 + 5*x28
     + 3*x29 + 5*x30 + 3*x31 + 5*x32 + 3*x33 + 3*x34 + 3*x35 + 3*x36 + 3*x37;

subject to

e2:    b38 + b39 + b40 + b41 = 1;

e3:    b42 + b43 + b44 + b45 = 1;

e4:    b46 + b47 + b48 + b49 = 1;

e5:    b50 + b51 + b52 + b53 = 1;

e6:    b54 + b55 + b56 + b57 = 1;

e7:    x2 - b38 - b46 >= -1;

e8:    x3 - b38 - b50 >= -1;

e9:    x4 - b38 - b54 >= -1;

e10:    x5 - b39 - b47 >= -1;

e11:    x6 - b39 - b51 >= -1;

e12:    x7 - b39 - b55 >= -1;

e13:    x8 - b40 - b48 >= -1;

e14:    x9 - b40 - b52 >= -1;

e15:    x10 - b40 - b56 >= -1;

e16:    x11 - b41 - b49 >= -1;

e17:    x12 - b41 - b53 >= -1;

e18:    x13 - b41 - b57 >= -1;

e19:    x14 - b42 - b46 >= -1;

e20:    x15 - b42 - b50 >= -1;

e21:    x16 - b42 - b54 >= -1;

e22:    x17 - b43 - b47 >= -1;

e23:    x18 - b43 - b51 >= -1;

e24:    x19 - b43 - b55 >= -1;

e25:    x20 - b44 - b48 >= -1;

e26:    x21 - b44 - b52 >= -1;

e27:    x22 - b44 - b56 >= -1;

e28:    x23 - b45 - b49 >= -1;

e29:    x24 - b45 - b53 >= -1;

e30:    x25 - b45 - b57 >= -1;

e31:    x26 - b46 - b50 >= -1;

e32:    x27 - b46 - b54 >= -1;

e33:    x28 - b47 - b51 >= -1;

e34:    x29 - b47 - b55 >= -1;

e35:    x30 - b48 - b52 >= -1;

e36:    x31 - b48 - b56 >= -1;

e37:    x32 - b49 - b53 >= -1;

e38:    x33 - b49 - b57 >= -1;

e39:    x34 - b50 - b54 >= -1;

e40:    x35 - b51 - b55 >= -1;

e41:    x36 - b52 - b56 >= -1;

e42:    x37 - b53 - b57 >= -1;

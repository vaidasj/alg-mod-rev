#  MIP written by GAMS Convert at 12/13/18 11:43:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         24        9        0       15        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         17        1       16        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         97       97        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var b1 binary >= 0, <= 1;
var b2 binary >= 0, <= 1;
var b3 binary >= 0, <= 1;
var b4 binary >= 0, <= 1;
var b5 binary >= 0, <= 1;
var b6 binary >= 0, <= 1;
var b7 binary >= 0, <= 1;
var b8 binary >= 0, <= 1;
var b9 binary >= 0, <= 1;
var b10 binary >= 0, <= 1;
var b11 binary >= 0, <= 1;
var b12 binary >= 0, <= 1;
var b13 binary >= 0, <= 1;
var b14 binary >= 0, <= 1;
var b15 binary >= 0, <= 1;
var b16 binary >= 0, <= 1;

minimize obj:    3*b1 + 4*b2 + 2*b3 + b4 + 3*b5 + 4*b6 + b7 + 2*b8 + 3*b9
     + 2*b10 + b11 + 4*b12 + 4*b13 + 2*b14 + 3*b15 + b16;

subject to

e1:    b1 + b2 + b3 + b4 = 1;

e2:    b5 + b6 + b7 + b8 = 1;

e3:    b9 + b10 + b11 + b12 = 1;

e4:    b13 + b14 + b15 + b16 = 1;

e5:    b1 + b5 + b9 + b13 = 1;

e6:    b2 + b6 + b10 + b14 = 1;

e7:    b3 + b7 + b11 + b15 = 1;

e8:    b4 + b8 + b12 + b16 = 1;

e9:    b2 + b5 + b13 <= 1;

e10:    b6 + b10 + b14 <= 1;

e11:    b1 + b2 + b7 <= 1;

e12:    b1 + b2 + b3 + b16 <= 1;

e13:    b6 <= 1;

e14:    b5 + b6 + b8 <= 1;

e15:    b4 + b5 + b6 + b16 <= 1;

e16:    b1 + b5 + b12 + b13 <= 1;

e17:    b6 + b9 + b12 + b14 <= 1;

e18:    b3 + b7 + b9 + b10 + b12 <= 1;

e19:    b4 + b8 + b16 <= 1;

e20:    b5 <= 1;

e21:    b6 + b13 + b15 <= 1;

e22:    b3 + b7 + b11 + b13 <= 1;

e23:    b13 + b14 + b15 <= 1;

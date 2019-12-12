#  MIP written by GAMS Convert at 12/13/18 10:31:11
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13       13        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         37        1       36        0        0        0        0        0
#  FX      6        0        6        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        101      101        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var b1 binary >= 0, <= 0;
var b2 binary >= 0, <= 1;
var b3 binary >= 0, <= 1;
var b4 binary >= 0, <= 1;
var b5 binary >= 0, <= 1;
var b6 binary >= 0, <= 1;
var b7 binary >= 0, <= 1;
var b8 binary >= 0, <= 0;
var b9 binary >= 0, <= 1;
var b10 binary >= 0, <= 1;
var b11 binary >= 0, <= 1;
var b12 binary >= 0, <= 1;
var b13 binary >= 0, <= 1;
var b14 binary >= 0, <= 1;
var b15 binary >= 0, <= 0;
var b16 binary >= 0, <= 1;
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;
var b20 binary >= 0, <= 1;
var b21 binary >= 0, <= 1;
var b22 binary >= 0, <= 0;
var b23 binary >= 0, <= 1;
var b24 binary >= 0, <= 1;
var b25 binary >= 0, <= 1;
var b26 binary >= 0, <= 1;
var b27 binary >= 0, <= 1;
var b28 binary >= 0, <= 1;
var b29 binary >= 0, <= 0;
var b30 binary >= 0, <= 1;
var b31 binary >= 0, <= 1;
var b32 binary >= 0, <= 1;
var b33 binary >= 0, <= 1;
var b34 binary >= 0, <= 1;
var b35 binary >= 0, <= 1;
var b36 binary >= 0, <= 0;

minimize obj:    3*b2 + 5*b3 + 48*b4 + 48*b5 + 8*b6 + 3*b7 + 3*b9 + 48*b10
     + 48*b11 + 8*b12 + 5*b13 + 3*b14 + 72*b16 + 72*b17 + 48*b18 + 48*b19
     + 48*b20 + 74*b21 + 6*b24 + 48*b25 + 48*b26 + 74*b27 + 6*b30 + 8*b31
     + 8*b32 + 50*b33 + 6*b34 + 6*b35;

subject to

e2:    b1 + b2 + b3 + b4 + b5 + b6 = 1;

e3:    b7 + b8 + b9 + b10 + b11 + b12 = 1;

e4:    b13 + b14 + b15 + b16 + b17 + b18 = 1;

e5:    b19 + b20 + b21 + b22 + b23 + b24 = 1;

e6:    b25 + b26 + b27 + b28 + b29 + b30 = 1;

e7:    b31 + b32 + b33 + b34 + b35 + b36 = 1;

e8:    b1 + b7 + b13 + b19 + b25 + b31 = 1;

e9:    b2 + b8 + b14 + b20 + b26 + b32 = 1;

e10:    b3 + b9 + b15 + b21 + b27 + b33 = 1;

e11:    b4 + b10 + b16 + b22 + b28 + b34 = 1;

e12:    b5 + b11 + b17 + b23 + b29 + b35 = 1;

e13:    b6 + b12 + b18 + b24 + b30 + b36 = 1;

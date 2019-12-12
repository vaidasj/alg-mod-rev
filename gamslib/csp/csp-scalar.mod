#  MIP written by GAMS Convert at 12/13/18 11:24:22
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        6        0        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         20        1       19        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         47       47        0        0


var x1;
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
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;
var b20 binary >= 0, <= 1;

minimize obj: x1;

subject to

e1:    b2 + b3 + b4 = 1;

e2:    b5 + b6 = 1;

e3:    b7 + b8 + b9 = 1;

e4:    b10 + b11 + b12 = 1;

e5:    b13 + b14 + b15 + b16 = 1;

e6:    b17 + b18 + b19 + b20 = 1;

e7:  - x1 - b2 - b6 - b8 - b10 - b14 - b20 <= -6;

e8:  - x1 - b4 - b5 - b7 - b12 - b13 - b19 <= -6;

e9:  - x1 - b3 - b5 - b9 - b11 - b15 - b17 <= -6;

e10:  - x1 - b4 - b5 - b7 - b12 - b16 - b18 <= -6;

#  MIP written by GAMS Convert at 12/13/18 10:30:47
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         23        1       22        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         35        1       34        0        0        0        0        0
#  FX     15        0       15        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         79       79        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var b1 binary >= 0, <= 1;
var b2 binary := 1, >= 1, <= 1;
var b3 binary := 1, >= 1, <= 1;
var b4 binary >= 0, <= 1;
var b5 binary := 1, >= 1, <= 1;
var b6 binary >= 0, <= 1;
var b7 binary >= 0, <= 1;
var b8 binary >= 0, <= 1;
var b9 binary >= 0, <= 1;
var b10 binary := 1, >= 1, <= 1;
var b11 binary >= 0, <= 1;
var b12 binary := 1, >= 1, <= 1;
var b13 binary := 1, >= 1, <= 1;
var b14 binary >= 0, <= 1;
var b15 binary >= 0, <= 1;
var b16 binary >= 0, <= 0;
var b17 binary := 1, >= 1, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 0;
var b20 binary >= 0, <= 1;
var b21 binary >= 0, <= 1;
var b22 binary := 1, >= 1, <= 1;
var b23 binary >= 0, <= 1;
var b24 binary >= 0, <= 1;
var b25 binary := 1, >= 1, <= 1;
var b26 binary := 1, >= 1, <= 1;
var b27 binary >= 0, <= 1;
var b28 binary := 1, >= 1, <= 1;
var b29 binary >= 0, <= 1;
var b30 binary >= 0, <= 1;
var b31 binary := 1, >= 1, <= 1;
var b32 binary >= 0, <= 1;
var b33 binary := 1, >= 1, <= 1;
var b34 binary >= 0, <= 1;

minimize obj:    b6;

subject to

e2:  - b1 - b2 - b3 + b4 >= -2;

e3:  - b4 - b5 + b6 >= -1;

e4:  - b4 - b5 + b7 >= -1;

e5:    b3 - b4 - b5 >= -1;

e6:  - b8 - b9 - b10 + b11 >= -2;

e7:    b6 - b11 - b12 - b13 >= -2;

e8:  - b5 - b9 - b10 - b14 + b15 >= -3;

e9:    b6 - b15 - b16 - b17 >= -2;

e10:    b6 - b12 - b18 - b19 >= -2;

e11:  - b12 - b18 - b19 + b20 >= -2;

e12:    b9 - b21 - b22 >= -1;

e13:  - b9 - b23 + b24 >= -1;

e14:  - b17 + b18 - b24 >= -1;

e15:    b21 - b25 - b26 >= -1;

e16:  - b25 - b26 + b27 >= -1;

e17:  - b3 + b14 - b28 - b29 >= -2;

e18:  - b12 - b30 - b31 + b32 >= -2;

e19:    b8 - b12 - b30 - b31 >= -2;

e20:  - b25 + b30 - b33 >= -1;

e21:    b13 - b25 - b33 >= -1;

e22:    b1 - b3 - b34 >= -1;

e23:  - b14 - b28 + b34 >= -1;

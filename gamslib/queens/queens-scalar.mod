#  MIP written by GAMS Convert at 12/13/18 10:24:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         43       17        0       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         65        1       64        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        317      317        0        0
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
var b17 binary >= 0, <= 1;
var b18 binary >= 0, <= 1;
var b19 binary >= 0, <= 1;
var b20 binary >= 0, <= 1;
var b21 binary >= 0, <= 1;
var b22 binary >= 0, <= 1;
var b23 binary >= 0, <= 1;
var b24 binary >= 0, <= 1;
var b25 binary >= 0, <= 1;
var b26 binary >= 0, <= 1;
var b27 binary >= 0, <= 1;
var b28 binary >= 0, <= 1;
var b29 binary >= 0, <= 1;
var b30 binary >= 0, <= 1;
var b31 binary >= 0, <= 1;
var b32 binary >= 0, <= 1;
var b33 binary >= 0, <= 1;
var b34 binary >= 0, <= 1;
var b35 binary >= 0, <= 1;
var b36 binary >= 0, <= 1;
var b37 binary >= 0, <= 1;
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
var b58 binary >= 0, <= 1;
var b59 binary >= 0, <= 1;
var b60 binary >= 0, <= 1;
var b61 binary >= 0, <= 1;
var b62 binary >= 0, <= 1;
var b63 binary >= 0, <= 1;
var b64 binary >= 0, <= 1;

maximize obj:    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12
     + b13 + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24
     + b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 + b33 + b34 + b35 + b36
     + b37 + b38 + b39 + b40 + b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48
     + b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60
     + b61 + b62 + b63 + b64;

subject to

e1:    b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 = 1;

e2:    b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16 = 1;

e3:    b17 + b18 + b19 + b20 + b21 + b22 + b23 + b24 = 1;

e4:    b25 + b26 + b27 + b28 + b29 + b30 + b31 + b32 = 1;

e5:    b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 = 1;

e6:    b41 + b42 + b43 + b44 + b45 + b46 + b47 + b48 = 1;

e7:    b49 + b50 + b51 + b52 + b53 + b54 + b55 + b56 = 1;

e8:    b57 + b58 + b59 + b60 + b61 + b62 + b63 + b64 = 1;

e9:    b1 + b9 + b17 + b25 + b33 + b41 + b49 + b57 = 1;

e10:    b2 + b10 + b18 + b26 + b34 + b42 + b50 + b58 = 1;

e11:    b3 + b11 + b19 + b27 + b35 + b43 + b51 + b59 = 1;

e12:    b4 + b12 + b20 + b28 + b36 + b44 + b52 + b60 = 1;

e13:    b5 + b13 + b21 + b29 + b37 + b45 + b53 + b61 = 1;

e14:    b6 + b14 + b22 + b30 + b38 + b46 + b54 + b62 = 1;

e15:    b7 + b15 + b23 + b31 + b39 + b47 + b55 + b63 = 1;

e16:    b8 + b16 + b24 + b32 + b40 + b48 + b56 + b64 = 1;

e17:    b49 + b58 <= 1;

e18:    b41 + b50 + b59 <= 1;

e19:    b33 + b42 + b51 + b60 <= 1;

e20:    b25 + b34 + b43 + b52 + b61 <= 1;

e21:    b17 + b26 + b35 + b44 + b53 + b62 <= 1;

e22:    b9 + b18 + b27 + b36 + b45 + b54 + b63 <= 1;

e23:    b1 + b10 + b19 + b28 + b37 + b46 + b55 + b64 <= 1;

e24:    b2 + b11 + b20 + b29 + b38 + b47 + b56 <= 1;

e25:    b3 + b12 + b21 + b30 + b39 + b48 <= 1;

e26:    b4 + b13 + b22 + b31 + b40 <= 1;

e27:    b5 + b14 + b23 + b32 <= 1;

e28:    b6 + b15 + b24 <= 1;

e29:    b7 + b16 <= 1;

e30:    b2 + b9 <= 1;

e31:    b3 + b10 + b17 <= 1;

e32:    b4 + b11 + b18 + b25 <= 1;

e33:    b5 + b12 + b19 + b26 + b33 <= 1;

e34:    b6 + b13 + b20 + b27 + b34 + b41 <= 1;

e35:    b7 + b14 + b21 + b28 + b35 + b42 + b49 <= 1;

e36:    b8 + b15 + b22 + b29 + b36 + b43 + b50 + b57 <= 1;

e37:    b16 + b23 + b30 + b37 + b44 + b51 + b58 <= 1;

e38:    b24 + b31 + b38 + b45 + b52 + b59 <= 1;

e39:    b32 + b39 + b46 + b53 + b60 <= 1;

e40:    b40 + b47 + b54 + b61 <= 1;

e41:    b48 + b55 + b62 <= 1;

e42:    b56 + b63 <= 1;

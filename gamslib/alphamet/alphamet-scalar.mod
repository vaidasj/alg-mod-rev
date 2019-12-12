#  MIP written by GAMS Convert at 12/13/18 10:31:09
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         42       39        3        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        118       11      100        7        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        346      346        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


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
var b65 binary >= 0, <= 1;
var b66 binary >= 0, <= 1;
var b67 binary >= 0, <= 1;
var b68 binary >= 0, <= 1;
var b69 binary >= 0, <= 1;
var b70 binary >= 0, <= 1;
var b71 binary >= 0, <= 1;
var b72 binary >= 0, <= 1;
var b73 binary >= 0, <= 1;
var b74 binary >= 0, <= 1;
var b75 binary >= 0, <= 1;
var b76 binary >= 0, <= 1;
var b77 binary >= 0, <= 1;
var b78 binary >= 0, <= 1;
var b79 binary >= 0, <= 1;
var b80 binary >= 0, <= 1;
var b81 binary >= 0, <= 1;
var b82 binary >= 0, <= 1;
var b83 binary >= 0, <= 1;
var b84 binary >= 0, <= 1;
var b85 binary >= 0, <= 1;
var b86 binary >= 0, <= 1;
var b87 binary >= 0, <= 1;
var b88 binary >= 0, <= 1;
var b89 binary >= 0, <= 1;
var b90 binary >= 0, <= 1;
var b91 binary >= 0, <= 1;
var b92 binary >= 0, <= 1;
var b93 binary >= 0, <= 1;
var b94 binary >= 0, <= 1;
var b95 binary >= 0, <= 1;
var b96 binary >= 0, <= 1;
var b97 binary >= 0, <= 1;
var b98 binary >= 0, <= 1;
var b99 binary >= 0, <= 1;
var b100 binary >= 0, <= 1;
var b101 binary >= 0, <= 1;
var x102;
var x103;
var x104;
var x105;
var x106;
var x107;
var x108;
var x109;
var x110;
var x111;
var i112 integer >= 0, <= 100;
var i113 integer >= 0, <= 100;
var i114 integer >= 0, <= 100;
var i115 integer >= 0, <= 100;
var i116 integer >= 0, <= 100;
var i117 integer >= 0, <= 100;
var i118 integer >= 0, <= 100;

minimize obj:    i112 + i113 + i114 + i115 + i116 + i117 + i118;

subject to

e2:    x108 + x111 - 10*i112 = 0;

e3:    x104 + x108 + i112 - 10*i113 = 0;

e4:    2*x102 + x104 - x108 + i113 - 10*i114 = 0;

e5:    x103 + x105 - x106 + x110 + i114 - 10*i115 = 0;

e6:  - x102 + x104 + 2*x105 + i115 - 10*i116 = 0;

e7:    2*x103 + x104 - x105 + i116 - 10*i117 = 0;

e8:    x102 - x106 + x109 + i117 - 10*i118 = 0;

e9:  - x109 + i118 = 0;

e10:  - b3 - 2*b4 - 3*b5 - 4*b6 - 5*b7 - 6*b8 - 7*b9 - 8*b10 - 9*b11 + x102
      = 0;

e11:  - b13 - 2*b14 - 3*b15 - 4*b16 - 5*b17 - 6*b18 - 7*b19 - 8*b20 - 9*b21
      + x103 = 0;

e12:  - b23 - 2*b24 - 3*b25 - 4*b26 - 5*b27 - 6*b28 - 7*b29 - 8*b30 - 9*b31
      + x104 = 0;

e13:  - b33 - 2*b34 - 3*b35 - 4*b36 - 5*b37 - 6*b38 - 7*b39 - 8*b40 - 9*b41
      + x105 = 0;

e14:  - b43 - 2*b44 - 3*b45 - 4*b46 - 5*b47 - 6*b48 - 7*b49 - 8*b50 - 9*b51
      + x106 = 0;

e15:  - b53 - 2*b54 - 3*b55 - 4*b56 - 5*b57 - 6*b58 - 7*b59 - 8*b60 - 9*b61
      + x107 = 0;

e16:  - b63 - 2*b64 - 3*b65 - 4*b66 - 5*b67 - 6*b68 - 7*b69 - 8*b70 - 9*b71
      + x108 = 0;

e17:  - b73 - 2*b74 - 3*b75 - 4*b76 - 5*b77 - 6*b78 - 7*b79 - 8*b80 - 9*b81
      + x109 = 0;

e18:  - b83 - 2*b84 - 3*b85 - 4*b86 - 5*b87 - 6*b88 - 7*b89 - 8*b90 - 9*b91
      + x110 = 0;

e19:  - b93 - 2*b94 - 3*b95 - 4*b96 - 5*b97 - 6*b98 - 7*b99 - 8*b100 - 9*b101
      + x111 = 0;

e20:    b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 = 1;

e21:    b12 + b13 + b14 + b15 + b16 + b17 + b18 + b19 + b20 + b21 = 1;

e22:    b22 + b23 + b24 + b25 + b26 + b27 + b28 + b29 + b30 + b31 = 1;

e23:    b32 + b33 + b34 + b35 + b36 + b37 + b38 + b39 + b40 + b41 = 1;

e24:    b42 + b43 + b44 + b45 + b46 + b47 + b48 + b49 + b50 + b51 = 1;

e25:    b52 + b53 + b54 + b55 + b56 + b57 + b58 + b59 + b60 + b61 = 1;

e26:    b62 + b63 + b64 + b65 + b66 + b67 + b68 + b69 + b70 + b71 = 1;

e27:    b72 + b73 + b74 + b75 + b76 + b77 + b78 + b79 + b80 + b81 = 1;

e28:    b82 + b83 + b84 + b85 + b86 + b87 + b88 + b89 + b90 + b91 = 1;

e29:    b92 + b93 + b94 + b95 + b96 + b97 + b98 + b99 + b100 + b101 = 1;

e30:    b2 + b12 + b22 + b32 + b42 + b52 + b62 + b72 + b82 + b92 = 1;

e31:    b3 + b13 + b23 + b33 + b43 + b53 + b63 + b73 + b83 + b93 = 1;

e32:    b4 + b14 + b24 + b34 + b44 + b54 + b64 + b74 + b84 + b94 = 1;

e33:    b5 + b15 + b25 + b35 + b45 + b55 + b65 + b75 + b85 + b95 = 1;

e34:    b6 + b16 + b26 + b36 + b46 + b56 + b66 + b76 + b86 + b96 = 1;

e35:    b7 + b17 + b27 + b37 + b47 + b57 + b67 + b77 + b87 + b97 = 1;

e36:    b8 + b18 + b28 + b38 + b48 + b58 + b68 + b78 + b88 + b98 = 1;

e37:    b9 + b19 + b29 + b39 + b49 + b59 + b69 + b79 + b89 + b99 = 1;

e38:    b10 + b20 + b30 + b40 + b50 + b60 + b70 + b80 + b90 + b100 = 1;

e39:    b11 + b21 + b31 + b41 + b51 + b61 + b71 + b81 + b91 + b101 = 1;

e40:    x102 >= 1;

e41:    x104 >= 1;

e42:    x109 >= 1;

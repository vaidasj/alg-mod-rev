#  MIP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         89       53        4       32        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        118       77       41        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        384      384        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


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
var x14 >= 0;
var x15 >= 0;
var x16 >= 0;
var x17 >= 0;
var x18 >= 0;
var x19 >= 0;
var x20 >= 0;
var x21 >= 0, <= 9280;
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
var x41 >= 0;
var x42 >= 0;
var x43 >= 0;
var x44 >= 0;
var x45 >= 0;
var x46 >= 0;
var x47 >= 0;
var x48 >= 0;
var x49 >= 0;
var x50 >= 0;
var x51 >= 0;
var x52 >= 0;
var x53 >= 0;
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
var x86 >= 0;
var x87 >= 0;
var x88 >= 0;
var x89 >= 0;
var b90 binary >= 0, <= 1;
var x91;
var x92;
var x93;
var x94;
var x95;
var x96;
var x97;
var x98;
var x99;
var x100;
var x101;
var x102;
var b103 binary >= 0, <= 1;
var b104 binary >= 0, <= 1;
var b105 binary >= 0, <= 1;
var b106 binary >= 0, <= 1;
var b107 binary >= 0, <= 1;
var b108 binary >= 0, <= 1;
var b109 binary >= 0, <= 1;
var b110 binary >= 0, <= 1;
var x111 >= 0;
var x112 >= 0;
var x113 >= 0;
var x114 >= 0;
var x115 >= 0;
var x116 >= 0;
var x117 >= 0;
var x118 >= 0;

minimize obj:    x2 + 0.970873786407767*x3 + 0.942595909133754*x4
     + 0.91514165935316*x5 + x6 + 0.970873786407767*x7 + 0.942595909133754*x8
     + 0.91514165935316*x9 + x10 + 0.970873786407767*x11
     + 0.942595909133754*x12 + 0.91514165935316*x13;

subject to

e2:    x2 - 0.1*x18 - 3.5*x95 - 4.1*x96 - 10*b103 - 16*b104 = 0;

e3:    x3 - 0.1*x19 - 3.5*x97 - 4.1*x98 - 10*b105 - 16*b106 = 0;

e4:    x4 - 0.1*x20 - 3.5*x99 - 4.1*x100 - 10*b107 - 16*b108 = 0;

e5:    x5 - 0.1*x21 - 3.5*x101 - 4.1*x102 - 10*b109 - 16*b110 = 0;

e6:    x18 - 1000*x22 - 1000*x23 - 3000*x30 - 3000*x31 - 4500*x38 - 4500*x39
     - 5800*x46 - 5800*x47 = 0;

e7:    x19 - 1000*x24 - 1000*x25 - 3000*x32 - 3000*x33 - 4500*x40 - 4500*x41
     - 5800*x48 - 5800*x49 = 0;

e8:    x20 - 1000*x26 - 1000*x27 - 3000*x34 - 3000*x35 - 4500*x42 - 4500*x43
     - 5800*x50 - 5800*x51 = 0;

e9:    x21 - 1000*x28 - 1000*x29 - 3000*x36 - 3000*x37 - 4500*x44 - 4500*x45
     - 5800*x52 - 5800*x53 = 0;

e10:  - 20*x22 - 40*x30 - 50*x38 - 60*x46 + x95 = 0;

e11:  - 20*x23 - 40*x31 - 50*x39 - 60*x47 + x96 = 0;

e12:  - 20*x24 - 40*x32 - 50*x40 - 60*x48 + x97 = 0;

e13:  - 20*x25 - 40*x33 - 50*x41 - 60*x49 + x98 = 0;

e14:  - 20*x26 - 40*x34 - 50*x42 - 60*x50 + x99 = 0;

e15:  - 20*x27 - 40*x35 - 50*x43 - 60*x51 + x100 = 0;

e16:  - 20*x28 - 40*x36 - 50*x44 - 60*x52 + x101 = 0;

e17:  - 20*x29 - 40*x37 - 50*x45 - 60*x53 + x102 = 0;

e18:    x22 + x30 + x38 + x46 - b103 = 0;

e19:    x23 + x31 + x39 + x47 - b104 = 0;

e20:    x24 + x32 + x40 + x48 - b105 = 0;

e21:    x25 + x33 + x41 + x49 - b106 = 0;

e22:    x26 + x34 + x42 + x50 - b107 = 0;

e23:    x27 + x35 + x43 + x51 - b108 = 0;

e24:    x28 + x36 + x44 + x52 - b109 = 0;

e25:    x29 + x37 + x45 + x53 - b110 = 0;

e26:    x6 - 0.001*x14 - 15*b90 = 0;

e27:    x7 - 0.001*x15 = 0;

e28:    x8 - 0.001*x16 = 0;

e29:    x9 - 0.001*x17 = 0;

e30:  - x18 + x86 = 0;

e31:  - x19 - x86 + x87 = 0;

e32:  - x20 - x87 + x88 = 0;

e33:  - x21 - x88 + x89 = -24000;

e34:    x14 - 2*x86 + 48000*b90 >= 0;

e35:    x15 - 2*x87 + 48000*b90 >= 0;

e36:    x16 - 2*x88 + 48000*b90 >= 0;

e37:    x17 - 2*x89 + 48000*b90 >= 0;

e38:    x10 - 0.9*x111 - 0.15*x115 = 0;

e39:    x11 - 0.9*x112 - 0.15*x116 = 0;

e40:    x12 - 0.9*x113 - 0.15*x117 = 0;

e41:    x13 - 0.9*x114 - 0.15*x118 = 0;

e42:    x91 - x95 - x96 = 0;

e43:    x92 - x97 - x98 = 0;

e44:    x93 - x99 - x100 = 0;

e45:    x94 - x101 - x102 = 0;

e46:    x91 - x111 + x115 = 84;

e47:  - x91 + x92 - x112 + x116 = 0;

e48:  - x92 + x93 - x113 + x117 = 0;

e49:  - x93 + x94 - x114 + x118 = 0;

e50:    b54 + b62 + b70 + b78 = 1;

e51:    b55 + b63 + b71 + b79 = 1;

e52:    b56 + b64 + b72 + b80 = 1;

e53:    b57 + b65 + b73 + b81 = 1;

e54:    b58 + b66 + b74 + b82 = 1;

e55:    b59 + b67 + b75 + b83 = 1;

e56:    b60 + b68 + b76 + b84 = 1;

e57:    b61 + b69 + b77 + b85 = 1;

e58:    x22 - b54 <= 0;

e59:    x23 - b55 <= 0;

e60:    x24 - b56 <= 0;

e61:    x25 - b57 <= 0;

e62:    x26 - b58 <= 0;

e63:    x27 - b59 <= 0;

e64:    x28 - b60 <= 0;

e65:    x29 - b61 <= 0;

e66:    x22 + x30 - b54 - b62 <= 0;

e67:    x23 + x31 - b55 - b63 <= 0;

e68:    x24 + x32 - b56 - b64 <= 0;

e69:    x25 + x33 - b57 - b65 <= 0;

e70:    x26 + x34 - b58 - b66 <= 0;

e71:    x27 + x35 - b59 - b67 <= 0;

e72:    x28 + x36 - b60 - b68 <= 0;

e73:    x29 + x37 - b61 - b69 <= 0;

e74:    x30 + x38 - b54 - b62 - b70 <= 0;

e75:    x31 + x39 - b55 - b63 - b71 <= 0;

e76:    x32 + x40 - b56 - b64 - b72 <= 0;

e77:    x33 + x41 - b57 - b65 - b73 <= 0;

e78:    x34 + x42 - b58 - b66 - b74 <= 0;

e79:    x35 + x43 - b59 - b67 - b75 <= 0;

e80:    x36 + x44 - b60 - b68 - b76 <= 0;

e81:    x37 + x45 - b61 - b69 - b77 <= 0;

e82:    x38 + x46 - b62 - b70 - b78 <= 0;

e83:    x39 + x47 - b63 - b71 - b79 <= 0;

e84:    x40 + x48 - b64 - b72 - b80 <= 0;

e85:    x41 + x49 - b65 - b73 - b81 <= 0;

e86:    x42 + x50 - b66 - b74 - b82 <= 0;

e87:    x43 + x51 - b67 - b75 - b83 <= 0;

e88:    x44 + x52 - b68 - b76 - b84 <= 0;

e89:    x45 + x53 - b69 - b77 - b85 <= 0;

#  MIP written by GAMS Convert at 12/13/18 10:32:24
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#        135        1       78       56        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         81       41       40        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        451      451        0        0
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
var x41 >= 0;
var x42 >= 0;
var x43 := 20, >= 0;
var x44 := 20, >= 0;
var x45 := 30, >= 0;
var x46 := 40, >= 0;
var x47 >= 0;
var x48 >= 0;
var x49 >= 0;
var x50 >= 0;
var x51 >= 0;
var x52 >= 0;
var x53 >= 0;
var x54 >= 0;
var x55 >= 0;
var x56 >= 0;
var x57 >= 0;
var x58 := 10, >= 0;
var x59 >= 0;
var x60 >= 0;
var x61 >= 0;
var x62 >= 0;
var x63 >= 0;
var x64 >= 0;
var x65 >= 0;
var x66 >= 0;
var x67 >= 0;
var x68 >= 0;
var x69 >= 0;
var x70 >= 0;
var x71 >= 0;
var x72 >= 0;
var x73 >= 0;
var x74 >= 0;
var x75 >= 0;
var x76 >= 0;
var x77 >= 0;
var x78 >= 0;
var x79 >= 0;
var x80 >= 0;

minimize obj:    8*x41 + 7*x42 + 6*x43 + 5*x44 + 4*x45 + 3*x46 + 2*x47 + x48
     + 8*x49 + 7*x50 + 6*x51 + 5*x52 + 4*x53 + 3*x54 + 2*x55 + x56 + 8*x57
     + 7*x58 + 6*x59 + 5*x60 + 4*x61 + 3*x62 + 2*x63 + x64 + 8*x65 + 7*x66
     + 6*x67 + 5*x68 + 4*x69 + 3*x70 + 2*x71 + x72 + 8*x73 + 7*x74 + 6*x75
     + 5*x76 + 4*x77 + 3*x78 + 2*x79 + x80;

subject to

e2:    x41 >= -30;

e3:    x41 + x42 >= -10;

e4:    x41 + x42 + x43 >= 20;

e5:    x41 + x42 + x43 + x44 >= 40;

e6:    x41 + x42 + x43 + x44 + x45 >= 70;

e7:    x41 + x42 + x43 + x44 + x45 + x46 >= 110;

e8:  - 2*x41 >= -300;

e9:  - 2*x41 - 2*x42 >= -300;

e10:  - 2*x41 - 2*x42 - 2*x43 >= -300;

e11:  - 2*x41 - 2*x42 - 2*x43 - 2*x44 + x49 >= -300;

e12:  - 2*x41 - 2*x42 - 2*x43 - 2*x44 - 2*x45 + x49 + x50 >= -300;

e13:  - 2*x41 - 2*x42 - 2*x43 - 2*x44 - 2*x45 - 2*x46 + x49 + x50 + x51
      >= -300;

e14:  - 2*x41 - 2*x42 - 2*x43 - 2*x44 - 2*x45 - 2*x46 - 2*x47 + x49 + x50 + x51
      + x52 >= -300;

e15:  - 2*x41 - 2*x42 - 2*x43 - 2*x44 - 2*x45 - 2*x46 - 2*x47 - 2*x48 + x49
      + x50 + x51 + x52 + x53 >= -300;

e16:  - x41 >= -100;

e17:  - x41 - x42 >= -100;

e18:  - x41 - x42 - x43 >= -100;

e19:  - x41 - x42 - x43 - x44 >= -100;

e20:  - x41 - x42 - x43 - x44 - x45 + x57 >= -100;

e21:  - x41 - x42 - x43 - x44 - x45 - x46 + x57 + x58 >= -100;

e22:  - x41 - x42 - x43 - x44 - x45 - x46 - x47 + x57 + x58 + x59 >= -100;

e23:  - x41 - x42 - x43 - x44 - x45 - x46 - x47 - x48 + x57 + x58 + x59 + x60
      >= -100;

e24:  - x49 >= 0;

e25:  - x49 - x50 + x65 >= 0;

e26:  - x49 - x50 - x51 + x65 + x66 >= 0;

e27:  - x49 - x50 - x51 - x52 + x65 + x66 + x67 >= 0;

e28:  - x49 - x50 - x51 - x52 - x53 + x65 + x66 + x67 + x68 >= 0;

e29:  - x49 - x50 - x51 - x52 - x53 - x54 + x65 + x66 + x67 + x68 + x69 >= 0;

e30:  - x49 - x50 - x51 - x52 - x53 - x54 - x55 + x65 + x66 + x67 + x68 + x69
      + x70 >= 0;

e31:  - x49 - x50 - x51 - x52 - x53 - x54 - x55 - x56 + x65 + x66 + x67 + x68
      + x69 + x70 + x71 >= 0;

e32:  - x49 >= -900;

e33:  - x49 - x50 >= -900;

e34:  - x49 - x50 - x51 >= -900;

e35:  - x49 - x50 - x51 - x52 >= -900;

e36:  - x49 - x50 - x51 - x52 - x53 >= -900;

e37:  - x49 - x50 - x51 - x52 - x53 - x54 >= -900;

e38:  - x49 - x50 - x51 - x52 - x53 - x54 - x55 >= -900;

e39:  - x49 - x50 - x51 - x52 - x53 - x54 - x55 - x56 >= -900;

e40:  - 100*b1 + x41 >= 0;

e41:  - 100*b2 + x42 >= 0;

e42:  - 100*b3 + x43 >= 0;

e43:  - 100*b4 + x44 >= 0;

e44:  - 100*b5 + x45 >= 0;

e45:  - 100*b6 + x46 >= 0;

e46:  - 100*b7 + x47 >= 0;

e47:  - 100*b8 + x48 >= 0;

e48:  - 400*b9 + x49 >= 0;

e49:  - 400*b10 + x50 >= 0;

e50:  - 400*b11 + x51 >= 0;

e51:  - 400*b12 + x52 >= 0;

e52:  - 400*b13 + x53 >= 0;

e53:  - 400*b14 + x54 >= 0;

e54:  - 400*b15 + x55 >= 0;

e55:  - 400*b16 + x56 >= 0;

e56:  - 100*b17 + x57 >= 0;

e57:  - 100*b18 + x58 >= 0;

e58:  - 100*b19 + x59 >= 0;

e59:  - 100*b20 + x60 >= 0;

e60:  - 100*b21 + x61 >= 0;

e61:  - 100*b22 + x62 >= 0;

e62:  - 100*b23 + x63 >= 0;

e63:  - 100*b24 + x64 >= 0;

e64:  - b25 + x65 >= 0;

e65:  - b26 + x66 >= 0;

e66:  - b27 + x67 >= 0;

e67:  - b28 + x68 >= 0;

e68:  - b29 + x69 >= 0;

e69:  - b30 + x70 >= 0;

e70:  - b31 + x71 >= 0;

e71:  - b32 + x72 >= 0;

e72:  - 1000*b33 + x73 >= 0;

e73:  - 1000*b34 + x74 >= 0;

e74:  - 1000*b35 + x75 >= 0;

e75:  - 1000*b36 + x76 >= 0;

e76:  - 1000*b37 + x77 >= 0;

e77:  - 1000*b38 + x78 >= 0;

e78:  - 1000*b39 + x79 >= 0;

e79:  - 1000*b40 + x80 >= 0;

e80:  - 200*b1 + x41 <= 0;

e81:  - 200*b2 + x42 <= 0;

e82:  - 200*b3 + x43 <= 0;

e83:  - 200*b4 + x44 <= 0;

e84:  - 200*b5 + x45 <= 0;

e85:  - 200*b6 + x46 <= 0;

e86:  - 200*b7 + x47 <= 0;

e87:  - 200*b8 + x48 <= 0;

e88:  - 400*b9 + x49 <= 0;

e89:  - 400*b10 + x50 <= 0;

e90:  - 400*b11 + x51 <= 0;

e91:  - 400*b12 + x52 <= 0;

e92:  - 400*b13 + x53 <= 0;

e93:  - 400*b14 + x54 <= 0;

e94:  - 400*b15 + x55 <= 0;

e95:  - 400*b16 + x56 <= 0;

e96:  - 200*b17 + x57 <= 0;

e97:  - 200*b18 + x58 <= 0;

e98:  - 200*b19 + x59 <= 0;

e99:  - 200*b20 + x60 <= 0;

e100:  - 200*b21 + x61 <= 0;

e101:  - 200*b22 + x62 <= 0;

e102:  - 200*b23 + x63 <= 0;

e103:  - 200*b24 + x64 <= 0;

e104:  - 400*b25 + x65 <= 0;

e105:  - 400*b26 + x66 <= 0;

e106:  - 400*b27 + x67 <= 0;

e107:  - 400*b28 + x68 <= 0;

e108:  - 400*b29 + x69 <= 0;

e109:  - 400*b30 + x70 <= 0;

e110:  - 400*b31 + x71 <= 0;

e111:  - 400*b32 + x72 <= 0;

e112:  - 1000*b33 + x73 <= 0;

e113:  - 1000*b34 + x74 <= 0;

e114:  - 1000*b35 + x75 <= 0;

e115:  - 1000*b36 + x76 <= 0;

e116:  - 1000*b37 + x77 <= 0;

e117:  - 1000*b38 + x78 <= 0;

e118:  - 1000*b39 + x79 <= 0;

e119:  - 1000*b40 + x80 <= 0;

e120:    0.00208333*x41 <= 1;

e121:    0.000104166*x41 + 0.000333333*x49 + 1E-6*x65 <= 1;

e122:    0.00208333*x42 <= 1;

e123:    0.000104166*x42 + 0.000333333*x50 + 1E-6*x66 <= 1;

e124:    0.00208333*x43 <= 1;

e125:    0.000104166*x43 + 0.000333333*x51 + 1E-6*x67 <= 1;

e126:    0.00208333*x44 <= 1;

e127:    0.000104166*x44 + 0.000333333*x52 + 1E-6*x68 <= 1;

e128:    0.00208333*x45 <= 1;

e129:    0.000104166*x45 + 0.000333333*x53 + 1E-6*x69 <= 1;

e130:    0.00208333*x46 <= 1;

e131:    0.000104166*x46 + 0.000333333*x54 + 1E-6*x70 <= 1;

e132:    0.00208333*x47 <= 1;

e133:    0.000104166*x47 + 0.000333333*x55 + 1E-6*x71 <= 1;

e134:    0.00208333*x48 <= 1;

e135:    0.000104166*x48 + 0.000333333*x56 + 1E-6*x72 <= 1;
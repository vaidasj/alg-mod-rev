#  NLP written by GAMS Convert at 12/13/18 10:24:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         97       97        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        117      117        0        0        0        0        0        0
#  FX      4        4        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        337      257       80        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 14, >= 0;
var x2 := 14, >= 0;
var x3 := 14, >= 0;
var x4 := 14, >= 0;
var x5 := 14, >= 0;
var x6 := 14, >= 0;
var x7 := 14, >= 0;
var x8 := 14, >= 0;
var x9 := 14, >= 0;
var x10 := 14, >= 0;
var x11 := 14, >= 0;
var x12 := 14, >= 0;
var x13 := 14, >= 0;
var x14 := 14, >= 0;
var x15 := 14, >= 0;
var x16 := 14, >= 0;
var x17 := 18, >= 18, <= 18;
var x18 := 18, >= 0;
var x19 := 18, >= 0;
var x20 := 18, >= 0;
var x21 := 18, >= 0;
var x22 := 18, >= 0;
var x23 := 18, >= 0;
var x24 := 18, >= 0;
var x25 := 18, >= 0;
var x26 := 18, >= 0;
var x27 := 18, >= 0;
var x28 := 18, >= 0;
var x29 := 18, >= 0;
var x30 := 18, >= 0;
var x31 := 18, >= 0;
var x32 := 18, >= 0;
var x33 := 18, >= 0;
var x34 := 6.5, >= 6.5, <= 6.5;
var x35 := 7, >= 0;
var x36 := 7, >= 0;
var x37 := 7, >= 0;
var x38 := 7, >= 0;
var x39 := 7, >= 0;
var x40 := 7, >= 0;
var x41 := 7, >= 0;
var x42 := 7, >= 0;
var x43 := 7, >= 0;
var x44 := 7, >= 0;
var x45 := 7, >= 0;
var x46 := 7, >= 0;
var x47 := 7, >= 0;
var x48 := 7, >= 0;
var x49 := 7, >= 0;
var x50 := 7, >= 0;
var x51 >= 0, <= 0;
var x52 := 7, >= 0;
var x53 := 14, >= 0;
var x54 := 21, >= 0;
var x55 := 28, >= 0;
var x56 := 35, >= 0;
var x57 := 42, >= 0;
var x58 := 49, >= 0;
var x59 := 56, >= 0;
var x60 := 63, >= 0;
var x61 := 70, >= 0;
var x62 := 77, >= 0;
var x63 := 84, >= 0;
var x64 := 91, >= 0;
var x65 := 98, >= 0;
var x66 := 105, >= 0;
var x67 := 112, >= 0;
var x68 := 11, >= 0;
var x69 := 11, >= 0;
var x70 := 11, >= 0;
var x71 := 11, >= 0;
var x72 := 11, >= 0;
var x73 := 11, >= 0;
var x74 := 11, >= 0;
var x75 := 11, >= 0;
var x76 := 11, >= 0;
var x77 := 11, >= 0;
var x78 := 11, >= 0;
var x79 := 11, >= 0;
var x80 := 11, >= 0;
var x81 := 11, >= 0;
var x82 := 11, >= 0;
var x83 := 11, >= 0;
var x84 := 500, >= 500, <= 500;
var x85 := 489, >= 0;
var x86 := 478, >= 0;
var x87 := 467, >= 0;
var x88 := 456, >= 0;
var x89 := 445, >= 0;
var x90 := 434, >= 0;
var x91 := 423, >= 0;
var x92 := 412, >= 0;
var x93 := 401, >= 0;
var x94 := 390, >= 0;
var x95 := 379, >= 0;
var x96 := 368, >= 0;
var x97 := 357, >= 0;
var x98 := 346, >= 0;
var x99 := 335, >= 0;
var x100 := 324, >= 0;
var x101;
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
var x112;
var x113;
var x114;
var x115;
var x116;

maximize obj:    x101 + 0.952380952380952*x102 + 0.90702947845805*x103
     + 0.863837598531476*x104 + 0.822702474791882*x105 + 0.783526166468459*x106
     + 0.746215396636627*x107 + 0.710681330130121*x108 + 0.676839362028687*x109
     + 0.644608916217797*x110 + 0.613913253540759*x111 + 0.584679289086437*x112
     + 0.556837418177559*x113 + 0.530321350645295*x114 + 0.505067952995519*x115
     + 0.48101709809097*x116;

subject to

e1:    0.13*x1 - 0.87*x17 + x18 = 3.3;

e2:    0.13*x2 - 0.87*x18 + x19 = 3.3345;

e3:    0.13*x3 - 0.87*x19 + x20 = 3.3695175;

e4:    0.13*x4 - 0.87*x20 + x21 = 3.4050602625;

e5:    0.13*x5 - 0.87*x21 + x22 = 3.4411361664375;

e6:    0.13*x6 - 0.87*x22 + x23 = 3.47775320893406;

e7:    0.13*x7 - 0.87*x23 + x24 = 3.51491950706807;

e8:    0.13*x8 - 0.87*x24 + x25 = 3.55264329967409;

e9:    0.13*x9 - 0.87*x25 + x26 = 3.5909329491692;

e10:    0.13*x10 - 0.87*x26 + x27 = 3.62979694340674;

e11:    0.13*x11 - 0.87*x27 + x28 = 3.66924389755784;

e12:    0.13*x12 - 0.87*x28 + x29 = 3.70928255602121;

e13:    0.13*x13 - 0.87*x29 + x30 = 3.74992179436153;

e14:    0.13*x14 - 0.87*x30 + x31 = 3.79117062127695;

e15:    0.13*x15 - 0.87*x31 + x32 = 3.8330381805961;

e16:    0.13*x16 - 0.87*x32 + x33 = 3.87553375330505;

e17: -1.02**(-0.142857142857143*x52)*(1.1 + 0.1*x1) - 0.75*x34 + x35 = 0;

e18: -1.02**(-0.142857142857143*x53)*(1.1 + 0.1*x2) - 0.75*x35 + x36 = 0;

e19: -1.02**(-0.142857142857143*x54)*(1.1 + 0.1*x3) - 0.75*x36 + x37 = 0;

e20: -1.02**(-0.142857142857143*x55)*(1.1 + 0.1*x4) - 0.75*x37 + x38 = 0;

e21: -1.02**(-0.142857142857143*x56)*(1.1 + 0.1*x5) - 0.75*x38 + x39 = 0;

e22: -1.02**(-0.142857142857143*x57)*(1.1 + 0.1*x6) - 0.75*x39 + x40 = 0;

e23: -1.02**(-0.142857142857143*x58)*(1.1 + 0.1*x7) - 0.75*x40 + x41 = 0;

e24: -1.02**(-0.142857142857143*x59)*(1.1 + 0.1*x8) - 0.75*x41 + x42 = 0;

e25: -1.02**(-0.142857142857143*x60)*(1.1 + 0.1*x9) - 0.75*x42 + x43 = 0;

e26: -1.02**(-0.142857142857143*x61)*(1.1 + 0.1*x10) - 0.75*x43 + x44 = 0;

e27: -1.02**(-0.142857142857143*x62)*(1.1 + 0.1*x11) - 0.75*x44 + x45 = 0;

e28: -1.02**(-0.142857142857143*x63)*(1.1 + 0.1*x12) - 0.75*x45 + x46 = 0;

e29: -1.02**(-0.142857142857143*x64)*(1.1 + 0.1*x13) - 0.75*x46 + x47 = 0;

e30: -1.02**(-0.142857142857143*x65)*(1.1 + 0.1*x14) - 0.75*x47 + x48 = 0;

e31: -1.02**(-0.142857142857143*x66)*(1.1 + 0.1*x15) - 0.75*x48 + x49 = 0;

e32: -1.02**(-0.142857142857143*x67)*(1.1 + 0.1*x16) - 0.75*x49 + x50 = 0;

e33:  - x35 - x51 + x52 = 0;

e34:  - x36 - x52 + x53 = 0;

e35:  - x37 - x53 + x54 = 0;

e36:  - x38 - x54 + x55 = 0;

e37:  - x39 - x55 + x56 = 0;

e38:  - x40 - x56 + x57 = 0;

e39:  - x41 - x57 + x58 = 0;

e40:  - x42 - x58 + x59 = 0;

e41:  - x43 - x59 + x60 = 0;

e42:  - x44 - x60 + x61 = 0;

e43:  - x45 - x61 + x62 = 0;

e44:  - x46 - x62 + x63 = 0;

e45:  - x47 - x63 + x64 = 0;

e46:  - x48 - x64 + x65 = 0;

e47:  - x49 - x65 + x66 = 0;

e48:  - x50 - x66 + x67 = 0;

e49:  - x18 + x35 + x68 = 0;

e50:  - x19 + x36 + x69 = 0;

e51:  - x20 + x37 + x70 = 0;

e52:  - x21 + x38 + x71 = 0;

e53:  - x22 + x39 + x72 = 0;

e54:  - x23 + x40 + x73 = 0;

e55:  - x24 + x41 + x74 = 0;

e56:  - x25 + x42 + x75 = 0;

e57:  - x26 + x43 + x76 = 0;

e58:  - x27 + x44 + x77 = 0;

e59:  - x28 + x45 + x78 = 0;

e60:  - x29 + x46 + x79 = 0;

e61:  - x30 + x47 + x80 = 0;

e62:  - x31 + x48 + x81 = 0;

e63:  - x32 + x49 + x82 = 0;

e64:  - x33 + x50 + x83 = 0;

e65:    x68 - x84 + x85 = 0;

e66:    x69 - x85 + x86 = 0;

e67:    x70 - x86 + x87 = 0;

e68:    x71 - x87 + x88 = 0;

e69:    x72 - x88 + x89 = 0;

e70:    x73 - x89 + x90 = 0;

e71:    x74 - x90 + x91 = 0;

e72:    x75 - x91 + x92 = 0;

e73:    x76 - x92 + x93 = 0;

e74:    x77 - x93 + x94 = 0;

e75:    x78 - x94 + x95 = 0;

e76:    x79 - x95 + x96 = 0;

e77:    x80 - x96 + x97 = 0;

e78:    x81 - x97 + x98 = 0;

e79:    x82 - x98 + x99 = 0;

e80:    x83 - x99 + x100 = 0;

e81: -(x1 - 250/x85)*x68 + x101 = 0;

e82: -(x2 - 250/x86)*x69 + x102 = 0;

e83: -(x3 - 250/x87)*x70 + x103 = 0;

e84: -(x4 - 250/x88)*x71 + x104 = 0;

e85: -(x5 - 250/x89)*x72 + x105 = 0;

e86: -(x6 - 250/x90)*x73 + x106 = 0;

e87: -(x7 - 250/x91)*x74 + x107 = 0;

e88: -(x8 - 250/x92)*x75 + x108 = 0;

e89: -(x9 - 250/x93)*x76 + x109 = 0;

e90: -(x10 - 250/x94)*x77 + x110 = 0;

e91: -(x11 - 250/x95)*x78 + x111 = 0;

e92: -(x12 - 250/x96)*x79 + x112 = 0;

e93: -(x13 - 250/x97)*x80 + x113 = 0;

e94: -(x14 - 250/x98)*x81 + x114 = 0;

e95: -(x15 - 250/x99)*x82 + x115 = 0;

e96: -(x16 - 250/x100)*x83 + x116 = 0;

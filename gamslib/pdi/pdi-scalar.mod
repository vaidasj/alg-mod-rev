#  LP written by GAMS Convert at 12/13/18 10:24:29
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         69       69        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#        134      134        0        0        0        0        0        0
#  FX      4        4        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        396      396        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 >= 0;
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
var x54 >= 0;
var x55 >= 0;
var x56 >= 0;
var x57 >= 0;
var x58 >= 0;
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
var x69 >= 0, <= 5000;
var x70 >= 0, <= 5000;
var x71 >= 0, <= 5000;
var x72 >= 0, <= 5000;
var x73 := 1200, >= 1200, <= 3000;
var x74 := 1200, >= 1200, <= 3000;
var x75 := 1200, >= 1200, <= 3000;
var x76 := 1200, >= 1200, <= 3000;
var x77 := 700, >= 700, <= 1500;
var x78 := 700, >= 700, <= 1500;
var x79 := 700, >= 700, <= 1500;
var x80 := 700, >= 700, <= 1500;
var x81 >= 0, <= 1000;
var x82 >= 0, <= 1000;
var x83 >= 0, <= 1000;
var x84 >= 0, <= 1000;
var x85 >= 0, <= 500;
var x86 >= 0, <= 500;
var x87 >= 0, <= 500;
var x88 >= 0, <= 500;
var x89 >= 0, <= 0;
var x90 >= 0, <= 0;
var x91 >= 0, <= 0;
var x92 >= 0, <= 0;
var x93 >= 0;
var x94 >= 0;
var x95 >= 0;
var x96 := 200, >= 200;
var x97 >= 0;
var x98 >= 0;
var x99 >= 0;
var x100 := 200, >= 200;
var x101 >= 0;
var x102 >= 0;
var x103 >= 0;
var x104 := 200, >= 200;
var x105 >= 0;
var x106 >= 0;
var x107 >= 0;
var x108 := 200, >= 200;
var x109 := 2000, >= 2000, <= 2500;
var x110 >= 0, <= 2500;
var x111 := 2000, >= 2000, <= 3000;
var x112 := 1500, >= 1500, <= 2000;
var x113 := 1500, >= 1500, <= 3000;
var x114 >= 0, <= 3000;
var x115 >= 0, <= 3000;
var x116 >= 0, <= 3000;
var x117 >= 0, <= 3000;
var x118 >= 0, <= 2500;
var x119 >= 0, <= 2500;
var x120 >= 0, <= 2500;
var x121 >= 0, <= 2500;
var x122 >= 0, <= 4000;
var x123 >= 0, <= 4000;
var x124 >= 0, <= 4000;
var x125 >= 0, <= 4000;
var x126 >= 0, <= 2500;
var x127 >= 0, <= 2500;
var x128 >= 0, <= 2500;
var x129 >= 0, <= 2500;
var x131;
var x132;
var x133;
var x134;

maximize obj:    x131 - x132 - x133 - x134 + 10;

subject to

e1:  - x1 + x114 = 0;

e2:  - x2 - x93 + x115 = 0;

e3:  - x3 - x94 + x116 = 0;

e4:  - x4 - x95 + x117 = 0;

e5:  - x5 - x9 + x118 = 0;

e6:  - x6 - x10 - x97 + x119 = 0;

e7:  - x7 - x11 - x98 + x120 = 0;

e8:  - x8 - x12 - x99 + x121 = 0;

e9:  - x13 - x21 + x122 = 0;

e10:  - x14 - x22 - x101 + x123 = 0;

e11:  - x15 - x23 - x102 + x124 = 0;

e12:  - x16 - x24 - x103 + x125 = 0;

e13:  - x17 - x25 + x126 = 0;

e14:  - x18 - x26 - x105 + x127 = 0;

e15:  - x19 - x27 - x106 + x128 = 0;

e16:  - x20 - x28 - x107 + x129 = 0;

e17:  - x1 - x5 + x69 + x81 = 0;

e18:  - x2 - x6 + x70 + x82 = 0;

e19:  - x3 - x7 + x71 + x83 = 0;

e20:  - x4 - x8 + x72 + x84 = 0;

e21:  - x9 - x13 - x17 + x73 + x85 = 0;

e22:  - x10 - x14 - x18 + x74 + x86 = 0;

e23:  - x11 - x15 - x19 + x75 + x87 = 0;

e24:  - x12 - x16 - x20 + x76 + x88 = 0;

e25:  - x21 - x25 + x77 + x89 = 0;

e26:  - x22 - x26 + x78 + x90 = 0;

e27:  - x23 - x27 + x79 + x91 = 0;

e28:  - x24 - x28 + x80 + x92 = 0;

e29:    x29 + x33 + x93 - x114 = 0;

e30:    x30 + x34 + x94 - x115 = 0;

e31:    x31 + x35 + x95 - x116 = 0;

e32:    x32 + x36 + x96 - x117 = 0;

e33:    x37 + x41 + x45 + x97 - x118 = 0;

e34:    x38 + x42 + x46 + x98 - x119 = 0;

e35:    x39 + x43 + x47 + x99 - x120 = 0;

e36:    x40 + x44 + x48 + x100 - x121 = 0;

e37:    x49 + x53 + x57 + x101 - x122 = 0;

e38:    x50 + x54 + x58 + x102 - x123 = 0;

e39:    x51 + x55 + x59 + x103 - x124 = 0;

e40:    x52 + x56 + x60 + x104 - x125 = 0;

e41:    x61 + x65 + x105 - x126 = 0;

e42:    x62 + x66 + x106 - x127 = 0;

e43:    x63 + x67 + x107 - x128 = 0;

e44:    x64 + x68 + x108 - x129 = 0;

e45:    x29 - x109 = 0;

e46:    x30 - x109 = 0;

e47:    x31 - x109 = 0;

e48:    x32 - x109 = 0;

e49:    x33 + x37 + x49 - x110 = 0;

e50:    x34 + x38 + x50 - x110 = 0;

e51:    x35 + x39 + x51 - x110 = 0;

e52:    x36 + x40 + x52 - x110 = 0;

e53:    x41 - x111 = 0;

e54:    x42 - x111 = 0;

e55:    x43 - x111 = 0;

e56:    x44 - x111 = 0;

e57:    x45 + x53 + x61 - x112 = 0;

e58:    x46 + x54 + x62 - x112 = 0;

e59:    x47 + x55 + x63 - x112 = 0;

e60:    x48 + x56 + x64 - x112 = 0;

e61:    x57 + x65 - x113 = 0;

e62:    x58 + x66 - x113 = 0;

e63:    x59 + x67 - x113 = 0;

e64:    x60 + x68 - x113 = 0;

e65:  - 70*x29 - 70*x30 - 77*x31 - 77*x32 - 68*x33 - 68*x34 - 74.8*x35
      - 74.8*x36 - 68*x37 - 68*x38 - 74.8*x39 - 74.8*x40 - 65*x41 - 65*x42
      - 71.5*x43 - 71.5*x44 - 72*x45 - 72*x46 - 79.2*x47 - 79.2*x48 - 68*x49
      - 68*x50 - 74.8*x51 - 74.8*x52 - 72*x53 - 72*x54 - 79.2*x55 - 79.2*x56
      - 71*x57 - 71*x58 - 78.1*x59 - 78.1*x60 - 72*x61 - 72*x62 - 79.2*x63
      - 79.2*x64 - 71*x65 - 71*x66 - 78.1*x67 - 78.1*x68 + x131 = 0;

e66:  - 10*x1 - 10*x2 - 10*x3 - 10*x4 - 12*x5 - 12*x6 - 12*x7 - 12*x8 - 8*x9
      - 8*x10 - 8*x11 - 8*x12 - 4*x13 - 4*x14 - 4*x15 - 4*x16 - 5*x17 - 5*x18
      - 5*x19 - 5*x20 - 6*x21 - 6*x22 - 6*x23 - 6*x24 - 8*x25 - 8*x26 - 8*x27
      - 8*x28 - 15*x29 - 15*x30 - 15*x31 - 15*x32 - 19*x33 - 19*x34 - 19*x35
      - 19*x36 - 20*x37 - 20*x38 - 20*x39 - 20*x40 - 22*x41 - 22*x42 - 22*x43
      - 22*x44 - 18*x45 - 18*x46 - 18*x47 - 18*x48 - 16*x49 - 16*x50 - 16*x51
      - 16*x52 - 18*x53 - 18*x54 - 18*x55 - 18*x56 - 19*x57 - 19*x58 - 19*x59
      - 19*x60 - 15*x61 - 15*x62 - 15*x63 - 15*x64 - 21*x65 - 21*x66 - 21*x67
      - 21*x68 + x132 = 0;

e67:  - 35*x69 - 36*x70 - 37*x71 - 38*x72 - 40*x73 - 41*x74 - 42*x75 - 43*x76
      - 38*x77 - 39*x78 - 40*x79 - 41*x80 - 45*x81 - 46*x82 - 47*x83 - 49*x84
      - 43*x85 - 44*x86 - 45*x87 - 47*x88 - x90 - 2*x91 - 4*x92 + x133 = 0;

e68:  - 2*x93 - 2*x94 - 2*x95 - 2*x96 - 2*x97 - 2*x98 - 2*x99 - 2*x100 - x101
      - x102 - x103 - x104 - 3*x105 - 3*x106 - 3*x107 - 3*x108 + x134 = 0;

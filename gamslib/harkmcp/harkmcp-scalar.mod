#  MCP written by GAMS Convert at 12/13/18 10:30:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         92       14       78        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         92       92        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        329      287       42        0


var x1 := 1;
var x2 := 1;
var x3 := 1;
var x4 := 25;
var x5 := 25;
var x6 := 25;
var x7 := 1;
var x8 := 1;
var x9 := 1;
var x10;
var x11;
var x12;
var x13;
var x14;
var x15;
var x16;
var x17;
var x18;
var x19;
var x20;
var x21;
var x22;
var x23;
var x24;
var x25;
var x26;
var x27;
var x28;
var x29;
var x30;
var x31;
var x32;
var x33;
var x34;
var x35;
var x36;
var x37;
var x38;
var x39;
var x40;
var x41;
var x42;
var x43;
var x44;
var x45;
var x46;
var x47;
var x48;
var x49;
var x50;
var x51;
var x52;
var x53;
var x54;
var x55;
var x56;
var x57;
var x58;
var x59;
var x60;
var x61;
var x62;
var x63;
var x64;
var x65;
var x66;
var x67;
var x68;
var x69;
var x70;
var x71;
var x72;
var x73;
var x74;
var x75;
var x76;
var x77;
var x78;
var x79;
var x80;
var x81;
var x82;
var x83;
var x84;
var x85;
var x86;
var x87;
var x88;
var x89;
var x90;
var x91;
var x92;

subject to

e1:    0.2*x1 + x7 >= 19 complements x1 >= 0;

e2:    0.01*x2 + x8 >= 27 complements x2 >= 0;

e3:    0.3*x3 + x9 >= 30 complements x3 >= 0;

e4:    x4 - x42 - x51 - x52 + x55 + x58 >= 0 complements x24 >= 0;

e5:  - x43 - x53 + x61 >= 0 complements x25 >= 0;

e6:  - x44 - x54 + x62 >= 0 complements x26 >= 0;

e7:    x51 - x55 - x56 - x57 + x59 + x63 >= 0 complements x27 >= 0;

e8:    x52 + x56 - x58 - x59 - x60 + x64 >= 0 complements x28 >= 0;

e9:    x53 + x54 + x57 + x60 - x61 - x62 - x63 - x64 >= 0 complements x29 >= 0;

e10:  - x45 - x65 - x66 + x69 + x72 >= 0 complements x30 >= 0;

e11:    x5 - x46 - x67 + x75 >= 0 complements x31 >= 0;

e12:  - x47 - x68 + x76 >= 0 complements x32 >= 0;

e13:    x65 - x69 - x70 - x71 + x73 + x77 >= 0 complements x33 >= 0;

e14:    x66 + x70 - x72 - x73 - x74 + x78 >= 0 complements x34 >= 0;

e15:    x67 + x68 + x71 + x74 - x75 - x76 - x77 - x78
      >= 0 complements x35 >= 0;

e16:  - x48 - x79 - x80 + x83 + x86 >= 0 complements x36 >= 0;

e17:  - x49 - x81 + x89 >= 0 complements x37 >= 0;

e18:    x6 - x50 - x82 + x90 >= 0 complements x38 >= 0;

e19:    x79 - x83 - x84 - x85 + x87 + x91 >= 0 complements x39 >= 0;

e20:    x80 + x84 - x86 - x87 - x88 + x92 >= 0 complements x40 >= 0;

e21:    x81 + x82 + x85 + x88 - x89 - x90 - x91 - x92
      >= 0 complements x41 >= 0;

e22:  - x1 + x42 + x45 + x48 >= 0 complements x7 >= 0;

e23:  - x2 + x43 + x46 + x49 >= 0 complements x8 >= 0;

e24:  - x3 + x44 + x47 + x50 >= 0 complements x9 >= 0;

e25:  - x7 + x24 + 0.2*x42 >= 0 complements x42 >= 0;

e26:  - x8 + x25 + 0.01*x43 >= 0 complements x43 >= 0;

e27:  - x9 + x26 + 0.3*x44 >= 0 complements x44 >= 0;

e28:  - x7 + x30 + 0.2*x45 >= 0 complements x45 >= 0;

e29:  - x8 + x31 + 0.01*x46 >= 0 complements x46 >= 0;

e30:  - x9 + x32 + 0.3*x47 >= 0 complements x47 >= 0;

e31:  - x7 + x36 + 0.2*x48 >= 0 complements x48 >= 0;

e32:  - x8 + x37 + 0.01*x49 >= 0 complements x49 >= 0;

e33:  - x9 + x38 + 0.3*x50 >= 0 complements x50 >= 0;

e34: 0.5*x10*x10 + x24 - x27 >= -1 complements x51 >= 0;

e35: 0.2*x11*x11 + x24 - x28 >= -2 complements x52 >= 0;

e36: 0.3*x12*x12 + x25 - x29 >= -3 complements x53 >= 0;

e37: 0.4*x13*x13 + x26 - x29 >= -1 complements x54 >= 0;

e38: 0.3*x14*x14 - x24 + x27 >= -2 complements x55 >= 0;

e39: 0.1*x15*x15 + x27 - x28 >= -1 complements x56 >= 0;

e40: 0.1*x16*x16 + x27 - x29 >= -1 complements x57 >= 0;

e41: 0.5*x17*x17 - x24 + x28 >= -3 complements x58 >= 0;

e42: 0.2*x18*x18 - x27 + x28 >= -2 complements x59 >= 0;

e43: x19*x19 + x28 - x29 >= -1 complements x60 >= 0;

e44: 0.25*x20*x20 - x25 + x29 >= -2 complements x61 >= 0;

e45: 0.2*x21*x21 - x26 + x29 >= -2 complements x62 >= 0;

e46: 0.9*x22*x22 - x27 + x29 >= -1 complements x63 >= 0;

e47: 0.8*x23*x23 - x28 + x29 >= -3 complements x64 >= 0;

e48: 0.5*x10*x10 + x30 - x33 >= -1 complements x65 >= 0;

e49: 0.2*x11*x11 + x30 - x34 >= -2 complements x66 >= 0;

e50: 0.3*x12*x12 + x31 - x35 >= -3 complements x67 >= 0;

e51: 0.4*x13*x13 + x32 - x35 >= -1 complements x68 >= 0;

e52: 0.3*x14*x14 - x30 + x33 >= -2 complements x69 >= 0;

e53: 0.1*x15*x15 + x33 - x34 >= -1 complements x70 >= 0;

e54: 0.1*x16*x16 + x33 - x35 >= -1 complements x71 >= 0;

e55: 0.5*x17*x17 - x30 + x34 >= -3 complements x72 >= 0;

e56: 0.2*x18*x18 - x33 + x34 >= -2 complements x73 >= 0;

e57: x19*x19 + x34 - x35 >= -1 complements x74 >= 0;

e58: 0.25*x20*x20 - x31 + x35 >= -2 complements x75 >= 0;

e59: 0.2*x21*x21 - x32 + x35 >= -2 complements x76 >= 0;

e60: 0.9*x22*x22 - x33 + x35 >= -1 complements x77 >= 0;

e61: 0.8*x23*x23 - x34 + x35 >= -3 complements x78 >= 0;

e62: 0.5*x10*x10 + x36 - x39 >= -1 complements x79 >= 0;

e63: 0.2*x11*x11 + x36 - x40 >= -2 complements x80 >= 0;

e64: 0.3*x12*x12 + x37 - x41 >= -3 complements x81 >= 0;

e65: 0.4*x13*x13 + x38 - x41 >= -1 complements x82 >= 0;

e66: 0.3*x14*x14 - x36 + x39 >= -2 complements x83 >= 0;

e67: 0.1*x15*x15 + x39 - x40 >= -1 complements x84 >= 0;

e68: 0.1*x16*x16 + x39 - x41 >= -1 complements x85 >= 0;

e69: 0.5*x17*x17 - x36 + x40 >= -3 complements x86 >= 0;

e70: 0.2*x18*x18 - x39 + x40 >= -2 complements x87 >= 0;

e71: x19*x19 + x40 - x41 >= -1 complements x88 >= 0;

e72: 0.25*x20*x20 - x37 + x41 >= -2 complements x89 >= 0;

e73: 0.2*x21*x21 - x38 + x41 >= -2 complements x90 >= 0;

e74: 0.9*x22*x22 - x39 + x41 >= -1 complements x91 >= 0;

e75: 0.8*x23*x23 - x40 + x41 >= -3 complements x92 >= 0;

e76:    x4 - x24 >= -1 complements x4 >= 0;

e77:    0.8*x5 - x31 >= -2 complements x5 >= 0;

e78:    0.6*x6 - x38 >= -1.5 complements x6 >= 0;

e79:    x10 - x51 - x65 - x79 >= 0 complements x10 >= 0;

e80:    x11 - x52 - x66 - x80 >= 0 complements x11 >= 0;

e81:    x12 - x53 - x67 - x81 >= 0 complements x12 >= 0;

e82:    x13 - x54 - x68 - x82 >= 0 complements x13 >= 0;

e83:    x14 - x55 - x69 - x83 >= 0 complements x14 >= 0;

e84:    x15 - x56 - x70 - x84 >= 0 complements x15 >= 0;

e85:    x16 - x57 - x71 - x85 >= 0 complements x16 >= 0;

e86:    x17 - x58 - x72 - x86 >= 0 complements x17 >= 0;

e87:    x18 - x59 - x73 - x87 >= 0 complements x18 >= 0;

e88:    x19 - x60 - x74 - x88 >= 0 complements x19 >= 0;

e89:    x20 - x61 - x75 - x89 >= 0 complements x20 >= 0;

e90:    x21 - x62 - x76 - x90 >= 0 complements x21 >= 0;

e91:    x22 - x63 - x77 - x91 >= 0 complements x22 >= 0;

e92:    x23 - x64 - x78 - x92 >= 0 complements x23 >= 0;

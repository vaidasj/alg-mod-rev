#  MIP written by GAMS Convert at 12/13/18 10:24:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         49       45        4        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         86       45        9        0        0       32        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        225      225        0        0
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
var s2s22 >= 0;
var s2s23 >= 0;
var s2s24 >= 0;
var s2s25 >= 0;
var s2s26 >= 0;
var s2s27 >= 0;
var s2s28 >= 0;
var s2s29 >= 0;
var s2s30 >= 0;
var s2s31 >= 0;
var s2s32 >= 0;
var s2s33 >= 0;
var s2s34 >= 0;
var s2s35 >= 0;
var s2s36 >= 0;
var s2s37 >= 0;
var s2s38 >= 0;
var s2s39 >= 0;
var s2s40 >= 0;
var s2s41 >= 0;
var s2s42 >= 0;
var s2s43 >= 0;
var s2s44 >= 0;
var s2s45 >= 0;
var s2s46 >= 0;
var s2s47 >= 0;
var s2s48 >= 0;
var s2s49 >= 0;
var s2s50 >= 0;
var s2s51 >= 0;
var s2s52 >= 0;
var s2s53 >= 0;
var x54 >= 0;
var x55 >= 0;
var x56 >= 0;
var x57 >= 0;
var b58 binary >= 0, <= 1;
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
var b71 binary >= 0, <= 1;
var b72 binary >= 0, <= 1;
var b73 binary >= 0, <= 1;
var b74 binary >= 0, <= 1;
var b75 binary >= 0, <= 1;
var b76 binary >= 0, <= 1;
var b77 binary >= 0, <= 1;
var b78 binary >= 0, <= 1;
var x79 >= 0;
var x80 >= 0;
var x81 >= 0;
var x82 >= 0;
var x83 >= 0;
var x84 >= 0;
var x85 >= 0;
var x86 >= 0;

suffix sosno integer IN;
suffix ref integer IN;
let s2s22.sosno := -1;
let s2s22.ref   := 1;
let s2s23.sosno := -1;
let s2s23.ref   := 2;
let s2s24.sosno := -1;
let s2s24.ref   := 3;
let s2s25.sosno := -1;
let s2s25.ref   := 4;
let s2s26.sosno := -2;
let s2s26.ref   := 1;
let s2s27.sosno := -2;
let s2s27.ref   := 2;
let s2s28.sosno := -2;
let s2s28.ref   := 3;
let s2s29.sosno := -2;
let s2s29.ref   := 4;
let s2s30.sosno := -3;
let s2s30.ref   := 1;
let s2s31.sosno := -3;
let s2s31.ref   := 2;
let s2s32.sosno := -3;
let s2s32.ref   := 3;
let s2s33.sosno := -3;
let s2s33.ref   := 4;
let s2s34.sosno := -4;
let s2s34.ref   := 1;
let s2s35.sosno := -4;
let s2s35.ref   := 2;
let s2s36.sosno := -4;
let s2s36.ref   := 3;
let s2s37.sosno := -4;
let s2s37.ref   := 4;
let s2s38.sosno := -5;
let s2s38.ref   := 1;
let s2s39.sosno := -5;
let s2s39.ref   := 2;
let s2s40.sosno := -5;
let s2s40.ref   := 3;
let s2s41.sosno := -5;
let s2s41.ref   := 4;
let s2s42.sosno := -6;
let s2s42.ref   := 1;
let s2s43.sosno := -6;
let s2s43.ref   := 2;
let s2s44.sosno := -6;
let s2s44.ref   := 3;
let s2s45.sosno := -6;
let s2s45.ref   := 4;
let s2s46.sosno := -7;
let s2s46.ref   := 1;
let s2s47.sosno := -7;
let s2s47.ref   := 2;
let s2s48.sosno := -7;
let s2s48.ref   := 3;
let s2s49.sosno := -7;
let s2s49.ref   := 4;
let s2s50.sosno := -8;
let s2s50.ref   := 1;
let s2s51.sosno := -8;
let s2s51.ref   := 2;
let s2s52.sosno := -8;
let s2s52.ref   := 3;
let s2s53.sosno := -8;
let s2s53.ref   := 4;

minimize obj:    x2 + 0.970873786407767*x3 + 0.942595909133754*x4
     + 0.91514165935316*x5 + x6 + 0.970873786407767*x7 + 0.942595909133754*x8
     + 0.91514165935316*x9 + x10 + 0.970873786407767*x11
     + 0.942595909133754*x12 + 0.91514165935316*x13;

subject to

e2:    x2 - 0.1*x18 - 3.5*x63 - 4.1*x64 - 10*b71 - 16*b72 = 0;

e3:    x3 - 0.1*x19 - 3.5*x65 - 4.1*x66 - 10*b73 - 16*b74 = 0;

e4:    x4 - 0.1*x20 - 3.5*x67 - 4.1*x68 - 10*b75 - 16*b76 = 0;

e5:    x5 - 0.1*x21 - 3.5*x69 - 4.1*x70 - 10*b77 - 16*b78 = 0;

e6:    x18 - 1000*s2s22 - 3000*s2s23 - 4500*s2s24 - 5800*s2s25 - 1000*s2s26
     - 3000*s2s27 - 4500*s2s28 - 5800*s2s29 = 0;

e7:    x19 - 1000*s2s30 - 3000*s2s31 - 4500*s2s32 - 5800*s2s33 - 1000*s2s34
     - 3000*s2s35 - 4500*s2s36 - 5800*s2s37 = 0;

e8:    x20 - 1000*s2s38 - 3000*s2s39 - 4500*s2s40 - 5800*s2s41 - 1000*s2s42
     - 3000*s2s43 - 4500*s2s44 - 5800*s2s45 = 0;

e9:    x21 - 1000*s2s46 - 3000*s2s47 - 4500*s2s48 - 5800*s2s49 - 1000*s2s50
     - 3000*s2s51 - 4500*s2s52 - 5800*s2s53 = 0;

e10:  - 20*s2s22 - 40*s2s23 - 50*s2s24 - 60*s2s25 + x63 = 0;

e11:  - 20*s2s26 - 40*s2s27 - 50*s2s28 - 60*s2s29 + x64 = 0;

e12:  - 20*s2s30 - 40*s2s31 - 50*s2s32 - 60*s2s33 + x65 = 0;

e13:  - 20*s2s34 - 40*s2s35 - 50*s2s36 - 60*s2s37 + x66 = 0;

e14:  - 20*s2s38 - 40*s2s39 - 50*s2s40 - 60*s2s41 + x67 = 0;

e15:  - 20*s2s42 - 40*s2s43 - 50*s2s44 - 60*s2s45 + x68 = 0;

e16:  - 20*s2s46 - 40*s2s47 - 50*s2s48 - 60*s2s49 + x69 = 0;

e17:  - 20*s2s50 - 40*s2s51 - 50*s2s52 - 60*s2s53 + x70 = 0;

e18:    s2s22 + s2s23 + s2s24 + s2s25 - b71 = 0;

e19:    s2s26 + s2s27 + s2s28 + s2s29 - b72 = 0;

e20:    s2s30 + s2s31 + s2s32 + s2s33 - b73 = 0;

e21:    s2s34 + s2s35 + s2s36 + s2s37 - b74 = 0;

e22:    s2s38 + s2s39 + s2s40 + s2s41 - b75 = 0;

e23:    s2s42 + s2s43 + s2s44 + s2s45 - b76 = 0;

e24:    s2s46 + s2s47 + s2s48 + s2s49 - b77 = 0;

e25:    s2s50 + s2s51 + s2s52 + s2s53 - b78 = 0;

e26:    x6 - 0.001*x14 - 15*b58 = 0;

e27:    x7 - 0.001*x15 = 0;

e28:    x8 - 0.001*x16 = 0;

e29:    x9 - 0.001*x17 = 0;

e30:  - x18 + x54 = 0;

e31:  - x19 - x54 + x55 = 0;

e32:  - x20 - x55 + x56 = 0;

e33:  - x21 - x56 + x57 = -24000;

e34:    x14 - 2*x54 + 48000*b58 >= 0;

e35:    x15 - 2*x55 + 48000*b58 >= 0;

e36:    x16 - 2*x56 + 48000*b58 >= 0;

e37:    x17 - 2*x57 + 48000*b58 >= 0;

e38:    x10 - 0.9*x79 - 0.15*x83 = 0;

e39:    x11 - 0.9*x80 - 0.15*x84 = 0;

e40:    x12 - 0.9*x81 - 0.15*x85 = 0;

e41:    x13 - 0.9*x82 - 0.15*x86 = 0;

e42:    x59 - x63 - x64 = 0;

e43:    x60 - x65 - x66 = 0;

e44:    x61 - x67 - x68 = 0;

e45:    x62 - x69 - x70 = 0;

e46:    x59 - x62 - x79 + x83 = 0;

e47:  - x59 + x60 - x80 + x84 = 0;

e48:  - x60 + x61 - x81 + x85 = 0;

e49:  - x61 + x62 - x82 + x86 = 0;

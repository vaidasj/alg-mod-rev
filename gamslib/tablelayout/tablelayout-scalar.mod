#  MIP written by GAMS Convert at 12/13/18 11:43:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         57       31       25        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         59       31       28        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        277      277        0        0
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

minimize obj:    10*b1 + 30*b2 + 40*b3 + 50*b4 + 20*b5 + 60*b6 + 10*b7 + 30*b8
     + 40*b9 + 50*b10 + 20*b11 + 60*b12 + 10*b13 + 30*b14 + 40*b15 + 50*b16
     + 20*b17 + 60*b18 + 10*b19 + 30*b20 + 40*b21 + 50*b22 + 20*b23 + 10*b24
     + 30*b25 + 40*b26 + 50*b27 + 20*b28;

subject to

e1:    b1 + b2 + b3 + b4 + b5 + b6 = 1;

e2:    b7 + b8 + b9 + b10 + b11 + b12 = 1;

e3:    b13 + b14 + b15 + b16 + b17 + b18 = 1;

e4:    b19 + b20 + b21 + b22 + b23 = 1;

e5:    b24 + b25 + b26 + b27 + b28 = 1;

e6:  - 172*b1 - 65*b2 - 53*b3 - 43*b4 - 92*b5 - 43*b6 + x29 = 0;

e7:  - 43*b1 - 32*b2 - 32*b3 - 32*b4 - 32*b5 - 32*b6 + x30 = 0;

e8:  - 13*b1 - 13*b2 - 13*b3 - 13*b4 - 13*b5 - 13*b6 + x31 = 0;

e9:  - 132*b1 - 62*b2 - 62*b3 - 62*b4 - 90*b5 - 62*b6 + x32 = 0;

e10:  - 182*b1 - 79*b2 - 73*b3 - 42*b4 - 98*b5 - 42*b6 + x33 = 0;

e11:  - 103*b7 - 47*b8 - 47*b9 - 47*b10 - 53*b11 - 47*b12 + x34 = 0;

e12:  - 36*b7 - 36*b8 - 36*b9 - 36*b10 - 36*b11 - 36*b12 + x35 = 0;

e13:  - 127*b7 - 52*b8 - 52*b9 - 52*b10 - 66*b11 - 52*b12 + x36 = 0;

e14:  - 30*b7 - 30*b8 - 30*b9 - 30*b10 - 30*b11 - 30*b12 + x37 = 0;

e15:  - 85*b7 - 43*b8 - 43*b9 - 43*b10 - 62*b11 - 43*b12 + x38 = 0;

e16:  - 155*b13 - 64*b14 - 52*b15 - 49*b16 - 88*b17 - 49*b18 + x39 = 0;

e17:  - 93*b13 - 40*b14 - 33*b15 - 33*b16 - 50*b17 - 33*b18 + x40 = 0;

e18:  - 76*b13 - 44*b14 - 44*b15 - 44*b16 - 50*b17 - 44*b18 + x41 = 0;

e19:  - 126*b13 - 56*b14 - 54*b15 - 54*b16 - 67*b17 - 54*b18 + x42 = 0;

e20:  - 131*b13 - 50*b14 - 37*b15 - 37*b16 - 70*b17 - 37*b18 + x43 = 0;

e21:  - 88*b19 - 35*b20 - 33*b21 - 24*b22 - 44*b23 + x44 = 0;

e22:  - 10*b19 - 10*b20 - 10*b21 - 10*b22 - 10*b23 + x45 = 0;

e23:  - 48*b19 - 32*b20 - 32*b21 - 32*b22 - 32*b23 + x46 = 0;

e24:  - 70*b19 - 42*b20 - 42*b21 - 42*b22 - 53*b23 + x47 = 0;

e25:  - 104*b19 - 50*b20 - 38*b21 - 38*b22 - 50*b23 + x48 = 0;

e26:  - 103*b24 - 43*b25 - 43*b26 - 43*b27 - 58*b28 + x49 = 0;

e27:  - 80*b24 - 46*b25 - 46*b26 - 46*b27 - 46*b28 + x50 = 0;

e28:  - 10*b24 - 10*b25 - 10*b26 - 10*b27 - 10*b28 + x51 = 0;

e29:  - 141*b24 - 54*b25 - 54*b26 - 54*b27 - 104*b28 + x52 = 0;

e30:  - 179*b24 - 85*b25 - 85*b26 - 85*b27 - 98*b28 + x53 = 0;

e31:  - x29 + x54 >= 0;

e32:  - x30 + x55 >= 0;

e33:  - x31 + x56 >= 0;

e34:  - x32 + x57 >= 0;

e35:  - x33 + x58 >= 0;

e36:  - x34 + x54 >= 0;

e37:  - x35 + x55 >= 0;

e38:  - x36 + x56 >= 0;

e39:  - x37 + x57 >= 0;

e40:  - x38 + x58 >= 0;

e41:  - x39 + x54 >= 0;

e42:  - x40 + x55 >= 0;

e43:  - x41 + x56 >= 0;

e44:  - x42 + x57 >= 0;

e45:  - x43 + x58 >= 0;

e46:  - x44 + x54 >= 0;

e47:  - x45 + x55 >= 0;

e48:  - x46 + x56 >= 0;

e49:  - x47 + x57 >= 0;

e50:  - x48 + x58 >= 0;

e51:  - x49 + x54 >= 0;

e52:  - x50 + x55 >= 0;

e53:  - x51 + x56 >= 0;

e54:  - x52 + x57 >= 0;

e55:  - x53 + x58 >= 0;

e56:    x54 + x55 + x56 + x57 + x58 <= 345;

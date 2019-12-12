#  MCP written by GAMS Convert at 12/13/18 10:30:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         78       78        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         96       96        0        0        0        0        0        0
#  FX     18       18        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        346      146      200        0


var x1 := 1, >= 1, <= 1;
var x2 := 1;
var x3 := 1;
var x4 := 1;
var x5 := 1;
var x6 := 1;
var x7 := 1;
var x8 := 1;
var x9 := 1;
var x10 := 1;
var x11 := 1;
var x12 := 1;
var x13 := 1;
var x14 := 1;
var x15 := 1;
var x16 := 1;
var x17 := 1;
var x18 := 1;
var x19 := 1;
var x20 := 0.737;
var x21 := 0.2911;
var x22 := 0.6625;
var x23;
var x24 := 1, >= 1, <= 1;
var x25 := 711.6443;
var x26 := 930.3509;
var x27 := 497.4428;
var x28 := 657.3677;
var x29 := 840.05;
var x30 := 515.4296;
var x31 := 641.7037;
var x32 := 812.2222;
var x33 := 492.0307;
var x34 := 15.6639;
var x35 := 27.8278;
var x36 := 23.3988;
var x37 := 69.9406;
var x38 := 118.1287;
var x39 := 5.412;
var x40 := 657.5754, >= 657.5754, <= 657.5754;
var x41 := 338.7076, >= 338.7076, <= 338.7076;
var x42 := 1548.5192, >= 1548.5192, <= 1548.5192;
var x43 := 0.074;
var x44 := 0.14;
var x45 := 0.152;
var x46 := 2515.9, >= 2515.9, <= 2515.9;
var x47 := 1565.987, >= 1565.987, <= 1565.987;
var x48 := 948.1, >= 948.1, <= 948.1;
var x49 := 2515.9;
var x50 := 442.643;
var x51 >= 0, <= 0;
var x52 >= 0, <= 0;
var x53 := 767.776;
var x54 >= 0, <= 0;
var x55 >= 0, <= 0;
var x56 := 355.568;
var x57 := 948.1;
var x58 := 256.645;
var x59 := 464.1656;
var x60 := 156.2598;
var x61 := 452.1765;
var x62 := 307.8561;
var x63 := 202.0416;
var x64 := 2.823;
var x65 := 9.8806;
var x66 := 128.4482;
var x67;
var x68 := 148.4488;
var x69 := 10.6931;
var x70;
var x71;
var x72;
var x73 := 1123.5941;
var x74 := 194.0449;
var x75 := 28.6572;
var x76 := 65.2754;
var x77;
var x78 := 141.1519, >= 141.1519, <= 141.1519;
var x79 := 61.4089;
var x80 := 52.893;
var x81;
var x82 := 159.1419;
var x83 := 159.1419;
var x84 := 0.06, >= 0.06, <= 0.06;
var x85 := 0.06, >= 0.06, <= 0.06;
var x86 := 39.1744, >= 39.1744, <= 39.1744;
var x87 := 20.6884;
var x88 := 46.1511;
var x89 := 92.3023;
var x90;
var x91 >= 0, <= 0;
var x92 := 58.759, >= 58.759, <= 58.759;
var x93 := 548.7478;
var x94 := 574.8463;
var x95 := 100.1122;
var x96;

subject to

e1: -0.90909*x1*(1.1 + x23) + x5 = 0;

e2: -0.81466*x1*(1.22751 + x23) + x6 = 0;

e3: -0.92521*x1*(1.08084 + x23) + x7 = 0;

e4:  - x1 + x8 = 0;

e5:  - x1 + x9 = 0;

e6:  - x1 + x10 = 0;

e7: x17*x25 - (x2*x31 + x5*x37) = 0;

e8: x18*x26 - (x3*x32 + x6*x38) = 0;

e9: x19*x27 - (x4*x33 + x7*x39) = 0;

e10: x14*x28 - (x2*x31 + x8*x34) = 0;

e11: x15*x29 - (x3*x32 + x9*x35) = 0;

e12: x16*x30 - (x4*x33 + x10*x36) = 0;

e13:    0.99*x14 - 0.12591*x17 - 0.10353*x18 - 0.02358*x19 - x20 = 0;

e14:    0.9608*x15 - 0.19834*x17 - 0.35524*x18 - 0.11608*x19 - x21 = 0;

e15:    0.95*x16 - 0.01407*x17 - 0.18954*x18 - 0.0839*x19 - x22 = 0;

e16:    x11 - 0.93076*x18 - 0.06924*x19 = 0;

e17:    x12 - 0.93774*x18 - 0.06226*x19 = 0;

e18:    x13 - 0.9308*x18 - 0.0692*x19 = 0;

e19:  - 0.33263*x17 - 0.43486*x18 - 0.23251*x19 + x24 = 0;

e20: -0.61447*x49**0.38258*x50**0.0674*x40**0.55002 + x28 = 0;

e21: -1.60111*x53**0.53476*x41**0.46524 + x29 = 0;

e22: -0.52019*x56**0.16234*x57**0.42326*x42**0.4144 + x30 = 0;

e23: x43*x49 - 0.38258*x28*x20 = 0;

e24: 0.5278*x44*x50 - 0.0674*x28*x20 = 0;

e25: 1.21879*x44*x53 - 0.53476*x29*x21 = 0;

e26: 1.11541*x44*x56 - 0.16234*x30*x22 = 0;

e27: x45*x57 - 0.42326*x30*x22 = 0;

e28:  - x46 + x49 + x52 + x55 = 0;

e29:  - x47 + x50 + x53 + x56 = 0;

e30:  - x48 + x51 + x54 + x57 = 0;

e31: -3.85424*(0.86628*x34**1.5 + 0.13372*x31**1.5)**0.666666666666667 + x28
      = 0;

e32: -3.51886*(0.84602*x35**1.5 + 0.15398*x32**1.5)**0.666666666666667 + x29
      = 0;

e33: -3.23592*(0.82436*x36**1.5 + 0.17564*x33**1.5)**0.666666666666667 + x30
      = 0;

e34: x34/x31 - (0.154361176524911*x8/x2)**2 = 0;

e35: x35/x32 - (0.182005153542469*x9/x3)**2 = 0;

e36: x36/x33 - (0.213062254354894*x10/x4)**2 = 0;

e37: -1.59539*(0.2482*x37**0.5 + 0.7518*x31**0.5)**2 + x25 = 0;

e38: -1.34652*(0.05111*x38**(-0.515151515151515) + 0.94889*x32**(-
     0.515151515151515))**(-1.94117647058824) + x26 = 0;

e39: -1.01839*(1e-5*x39**(-1.5) + 0.99999*x33**(-1.5))**(-0.666666666666667)
      + x27 = 0;

e40: x37/x31 - (0.330140994945464*x2/x5)**2 = 0;

e41: x38/x32 - (0.0538629345867277*x3/x6)**0.66 = 0;

e42: x39/x33 - (1.0000100001e-5*x4/x7)**0.4 = 0;

e43:  - 0.12591*x28 - 0.19834*x29 - 0.01407*x30 + x58 = 0;

e44:  - 0.10353*x28 - 0.35524*x29 - 0.18954*x30 + x59 = 0;

e45:  - 0.02358*x28 - 0.11608*x29 - 0.0839*x30 + x60 = 0;

e46: x17*x61 - (0.9109*(0.47 - 0.47*x84)*x93 + 0.9109*(0.47 - 0.47*x85)*x94)
      = 0;

e47: x18*x62 - (0.9109*(0.31999 - 0.31999*x84)*x93 + 0.9109*(0.31999 - 0.31999*
     x85)*x94) = 0;

e48: x19*x63 - (0.9109*(0.21001 - 0.21001*x84)*x93 + 0.9109*(0.21001 - 0.21001*
     x85)*x94) = 0;

e49:    x70 = 0;

e50:    x71 = 0;

e51:    x72 = 0;

e52:    x73 - x93 - x94 = 0;

e53: -(x43*x46 + x44*x47 + x45*x48 + x91*x1) + x93 = 0;

e54: -(x20*x28 + x21*x29 + x22*x30 - (x43*x46 + x44*x47 + x45*x48) + x92*x1)
      + x81 - x90 + x94 = 0;

e55:  - 0.0891*x93 - 0.0891*x94 + x95 = 0;

e56:    x64 - 0.02*x78 = 0;

e57:    x65 - 0.07*x78 = 0;

e58:    x66 - 0.91*x78 = 0;

e59:    x74 - x75 - x76 + x77 - x95 = 0;

e60: -(0.090909*x37 + 0.1853432966*x38 + 0.0747939764*x39)*x1 + x75 = 0;

e61: -(0.90909*x37 + 0.81466*x38 + 0.92521*x39)*x1*x23 + x90 = 0;

e62: -(0.01*x14*x28 + 0.0392*x15*x29 + 0.05*x16*x30) + x76 = 0;

e63:    x77 = 0;

e64: -(0.9109*x84*x93 + 0.9109*x85*x94) + x79 = 0;

e65: -(x17*x64 + x18*x65 + x19*x66) + x74 - x80 = 0;

e66:    x81 = 0;

e67: -x86*x1 - x79 - x80 - x81 + x83 = 0;

e68: x11*x87 + 0.13*(x70*x17 + x71*x18 + x72*x19) - 0.13*x82 = 0;

e69: x12*x88 + 0.29*(x70*x17 + x71*x18 + x72*x19) - 0.29*x82 = 0;

e70: x13*x89 + 0.58*(x70*x17 + x71*x18 + x72*x19) - 0.58*x82 = 0;

e71:    x67 = 0;

e72:    x68 - 0.93076*x87 - 0.93774*x88 - 0.9308*x89 = 0;

e73:    x69 - 0.06924*x87 - 0.06226*x88 - 0.0692*x89 = 0;

e74:  - x34 - x35 - x36 + 0.90909*x37 + 0.81466*x38 + 0.92521*x39 - x86 - x91
      - x92 = 0;

e75:    x25 - x58 - x61 - x64 - x67 - x70 = 0;

e76:    x26 - x59 - x62 - x65 - x68 - x71 = 0;

e77:    x27 - x60 - x63 - x66 - x69 - x72 = 0;

e78: -x61**0.47*x62**0.31999*x63**0.21001 + x96 = 0;

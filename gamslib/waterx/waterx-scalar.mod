#  MINLP written by GAMS Convert at 12/13/18 10:30:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         55       27        0       28        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         71       57       14        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        241      181       60        0
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
var x29 := 0.547722557505166, >= 0.15, <= 2;
var x30 := 0.547722557505166, >= 0.15, <= 2;
var x31 := 0.547722557505166, >= 0.15, <= 2;
var x32 := 0.547722557505166, >= 0.15, <= 2;
var x33 := 0.547722557505166, >= 0.15, <= 2;
var x34 := 0.547722557505166, >= 0.15, <= 2;
var x35 := 0.547722557505166, >= 0.15, <= 2;
var x36 := 0.547722557505166, >= 0.15, <= 2;
var x37 := 0.547722557505166, >= 0.15, <= 2;
var x38 := 0.547722557505166, >= 0.15, <= 2;
var x39 := 0.547722557505166, >= 0.15, <= 2;
var x40 := 0.547722557505166, >= 0.15, <= 2;
var x41 := 0.547722557505166, >= 0.15, <= 2;
var x42 := 0.547722557505166, >= 0.15, <= 2;
var x43 := 11.5, >= 6.5;
var x44 := 8.25, >= 3.25;
var x45 := 21.58, >= 16.58;
var x46 := 19.92, >= 14.92;
var x47 := 17.925, >= 12.925;
var x48 := 17.26, >= 12.26;
var x49 := 13.76, >= 8.76;
var x50 := 21.08, >= 16.08;
var x51 := 0.961470588235294, >= 0, <= 2.5;
var x52 := 2.30752941176471, >= 0, <= 6;
var x53;
var x54;
var x55;
var x57;
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

minimize obj:    10*x53 + x54 + 10*x55 + x57;

subject to

e1:  - x1 - x2 - x3 + x15 + x16 + x17 + x51 = 0;

e2:  - x4 - x5 - x6 - x7 + x18 + x19 + x20 + x21 + x52 = 0;

e3:    x1 + x4 - x8 - x9 - x10 - x11 - x15 - x18 + x22 + x23 + x24 + x25
     = 1.212;

e4:    x2 + x8 + x12 - x16 - x22 - x26 = 0.452;

e5:    x9 - x12 + x13 - x23 + x26 - x27 = 0.245;

e6:    x5 + x10 - x13 - x14 - x19 - x24 + x27 + x28 = 0.652;

e7:    x6 + x14 - x20 - x28 = 0.252;

e8:    x3 + x7 + x11 - x17 - x21 - x25 = 0.456;

e9: -(1.5722267648148*x1 + 1.5722267648148*x15)*(x1 - x15)/x29**5.33 + x43
     - x45 = 0;

e10: -(1.32004857865156*x2 + 1.32004857865156*x16)*(x2 - x16)/x30**5.33 + x43
      - x46 = 0;

e11: -(2.57705917665854*x3 + 2.57705917665854*x17)*(x3 - x17)/x31**5.33 + x43
      - x50 = 0;

e12: -(2.06257339263358*x4 + 2.06257339263358*x18)*(x4 - x18)/x32**5.33 + x44
      - x45 = 0;

e13: -(2.40235218067626*x5 + 2.40235218067626*x19)*(x5 - x19)/x33**5.33 + x44
      - x48 = 0;

e14: -(1.339*x6 + 1.339*x20)*(x6 - x20)/x34**5.33 + x44 - x49 = 0;

e15: -(1.37419139860501*x7 + 1.37419139860501*x21)*(x7 - x21)/x35**5.33 + x44
      - x50 = 0;

e16: -(1.2916134290104*x8 + 1.2916134290104*x22)*(x8 - x22)/x36**5.33 + x45
      - x46 = 0;

e17: -(1.60230396616872*x9 + 1.60230396616872*x23)*(x9 - x23)/x37**5.33 + x45
      - x47 = 0;

e18: -(1.339*x10 + 1.339*x24)*(x10 - x24)/x38**5.33 + x45 - x48 = 0;

e19: -(2.14329116080854*x11 + 2.14329116080854*x25)*(x11 - x25)/x39**5.33 + x45
      - x50 = 0;

e20: -(1.24561882211213*x12 + 1.24561882211213*x26)*(x12 - x26)/x40**5.33 - x46
      + x47 = 0;

e21: -(1.15157500841239*x13 + 1.15157500841239*x27)*(x13 - x27)/x41**5.33 - x47
      + x48 = 0;

e22: -(2.06257339263358*x14 + 2.06257339263358*x28)*(x14 - x28)/x42**5.33 + x48
      - x49 = 0;

e23: -(1.02*x51*(-6.5 + x43) + 1.02*x52*(-3.25 + x44)) + x53 = 0;

e24: -0.069*(1526.43375224737*x29**1.29 + 1281.60056179763*x30**1.29 + 
     2501.99920063936*x31**1.29 + 2002.49843945008*x32**1.29 + 2332.38075793812
     *x33**1.29 + 1300*x34**1.29 + 1334.16640641263*x35**1.29 + 
     1253.99362039845*x36**1.29 + 1555.6349186104*x37**1.29 + 1300*x38**1.29 + 
     2080.86520466848*x39**1.29 + 1209.33866224478*x40**1.29 + 1118.03398874989
     *x41**1.29 + 2002.49843945008*x42**1.29) + x54 = 0;

e25:  - 0.2*x51 - 0.17*x52 + x55 = 0;

e27:  - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 - x11 - x12 - x13
      - x14 - x15 - x16 - x17 - x18 - x19 - x20 - x21 - x22 - x23 - x24 - x25
      - x26 - x27 - x28 + x57 = 0;

e28:    x1 - 2*b58 <= 0;

e29:    x2 - 2*b59 <= 0;

e30:    x3 - 2*b60 <= 0;

e31:    x4 - 2*b61 <= 0;

e32:    x5 - 2*b62 <= 0;

e33:    x6 - 2*b63 <= 0;

e34:    x7 - 2*b64 <= 0;

e35:    x8 - 2*b65 <= 0;

e36:    x9 - 2*b66 <= 0;

e37:    x10 - 2*b67 <= 0;

e38:    x11 - 2*b68 <= 0;

e39:    x12 - 2*b69 <= 0;

e40:    x13 - 2*b70 <= 0;

e41:    x14 - 2*b71 <= 0;

e42:    x15 + 2*b58 <= 2;

e43:    x16 + 2*b59 <= 2;

e44:    x17 + 2*b60 <= 2;

e45:    x18 + 2*b61 <= 2;

e46:    x19 + 2*b62 <= 2;

e47:    x20 + 2*b63 <= 2;

e48:    x21 + 2*b64 <= 2;

e49:    x22 + 2*b65 <= 2;

e50:    x23 + 2*b66 <= 2;

e51:    x24 + 2*b67 <= 2;

e52:    x25 + 2*b68 <= 2;

e53:    x26 + 2*b69 <= 2;

e54:    x27 + 2*b70 <= 2;

e55:    x28 + 2*b71 <= 2;

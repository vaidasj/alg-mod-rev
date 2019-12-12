#  MIP written by GAMS Convert at 12/13/18 10:24:47
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         31        1        4       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         69       46        0       23        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        205      205        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var i1 integer >= 0, <= 2;
var i2 integer >= 0, <= 3;
var i3 integer >= 0, <= 4;
var i4 integer >= 0, <= 3;
var i5 integer >= 0, <= 4;
var i6 integer >= 0, <= 3;
var i7 integer >= 0, <= 4;
var i8 integer >= 0, <= 4;
var i9 integer >= 0, <= 3;
var i10 integer >= 0, <= 4;
var i11 integer >= 0, <= 3;
var i12 integer >= 0, <= 4;
var i13 integer >= 0, <= 4;
var i14 integer >= 0, <= 3;
var i15 integer >= 0, <= 4;
var i16 integer >= 0, <= 4;
var i17 integer >= 0, <= 4;
var i18 integer >= 0, <= 3;
var i19 integer >= 0, <= 4;
var i20 integer >= 0, <= 4;
var i21 integer >= 0, <= 4;
var i22 integer >= 0, <= 4;
var i23 integer >= 0, <= 4;
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

minimize obj:    4.7*i1 + 4.7*i2 + 4.7*i3 + 5.6*i4 + 5.6*i5 + 7*i6 + 7*i7
     + 8.5*i8 + 6.15*i9 + 6.15*i10 + 7.4*i11 + 7.4*i12 + 9.1*i13 + 7.65*i14
     + 7.65*i15 + 7.65*i16 + 9*i17 + 8.2*i18 + 8.2*i19 + 9.6*i20 + 9.4*i21
     + 9.65*i22 + 10.2*i23 + 0.037*x24 + 0.037*x25 + 0.037*x26 + 0.046*x27
     + 0.046*x28 + 0.06*x29 + 0.06*x30 + 0.075*x31 + 0.0515*x32 + 0.0515*x33
     + 0.0515*x34 + 0.0515*x35 + 0.064*x36 + 0.064*x37 + 0.064*x38 + 0.064*x39
     + 0.081*x40 + 0.081*x41 + 0.0665*x42 + 0.0665*x43 + 0.0665*x44
     + 0.0665*x45 + 0.0665*x46 + 0.0665*x47 + 0.08*x48 + 0.08*x49 + 0.072*x50
     + 0.072*x51 + 0.072*x52 + 0.072*x53 + 0.072*x54 + 0.072*x55 + 0.086*x56
     + 0.086*x57 + 0.086*x58 + 0.084*x59 + 0.084*x60 + 0.084*x61 + 0.0865*x62
     + 0.0865*x63 + 0.0865*x64 + 0.092*x65 + 0.092*x66 + 0.092*x67 + 0.092*x68;

subject to

e2:    x24 + x25 + x26 + x32 + x34 + x36 + x38 + x40 + x50 + x53 + x56 + x59
     + x65 >= 475;

e3:    x27 + x28 + x33 + x35 + x42 + x44 + x46 + x51 + x54 + x57 + x62 + x66
     >= 659;

e4:    x29 + x30 + x37 + x39 + x43 + x45 + x48 + x52 + x55 + x60 + x63 + x67
     >= 672;

e5:    x31 + x41 + x47 + x49 + x58 + x61 + x64 + x68 >= 1123;

e6:  - 100*i1 + x24 <= 0;

e7:  - 200*i2 + x25 <= 0;

e8:  - 600*i3 + x26 <= 0;

e9:  - 200*i4 + x27 <= 0;

e10:  - 600*i5 + x28 <= 0;

e11:  - 200*i6 + x29 <= 0;

e12:  - 600*i7 + x30 <= 0;

e13:  - 600*i8 + x31 <= 0;

e14:  - 200*i9 + x32 + x33 <= 0;

e15:  - 600*i10 + x34 + x35 <= 0;

e16:  - 200*i11 + x36 + x37 <= 0;

e17:  - 600*i12 + x38 + x39 <= 0;

e18:  - 600*i13 + x40 + x41 <= 0;

e19:  - 200*i14 + x42 + x43 <= 0;

e20:  - 600*i15 + x44 + x45 <= 0;

e21:  - 600*i16 + x46 + x47 <= 0;

e22:  - 600*i17 + x48 + x49 <= 0;

e23:  - 200*i18 + x50 + x51 + x52 <= 0;

e24:  - 600*i19 + x53 + x54 + x55 <= 0;

e25:  - 600*i20 + x56 + x57 + x58 <= 0;

e26:  - 600*i21 + x59 + x60 + x61 <= 0;

e27:  - 600*i22 + x62 + x63 + x64 <= 0;

e28:  - 600*i23 + x65 + x66 + x67 + x68 <= 0;

e29:    i1 <= 2;

e30:    i2 + i4 + i6 + i9 + i11 + i14 + i18 <= 3;

e31:    i3 + i5 + i7 + i8 + i10 + i12 + i13 + i15 + i16 + i17 + i19 + i20 + i21
      + i22 + i23 <= 4;

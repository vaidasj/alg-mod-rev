#  MIP written by GAMS Convert at 12/13/18 10:24:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         34        4        4       26        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         72       49        0       23        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        232      232        0        0
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
var x70;
var x71;
var x72;

minimize obj:    x72;

subject to

e2:  - i1 - i2 - i3 - i4 - i5 - i6 - i7 - i8 - i9 - i10 - i11 - i12 - i13 - i14
     - i15 - i16 - i17 - i18 - i19 - i20 - i21 - i22 - i23 + x70 = 0;

e3:  - 370*i1 - 370*i2 - 370*i3 - 460*i4 - 460*i5 - 600*i6 - 600*i7 - 750*i8
     - 515*i9 - 515*i10 - 640*i11 - 640*i12 - 810*i13 - 665*i14 - 665*i15
     - 665*i16 - 800*i17 - 720*i18 - 720*i19 - 860*i20 - 840*i21 - 865*i22
     - 920*i23 + x71 = 0;

e4:  - 370*x24 - 370*x25 - 370*x26 - 460*x27 - 460*x28 - 600*x29 - 600*x30
     - 750*x31 - 515*x32 - 515*x33 - 515*x34 - 515*x35 - 640*x36 - 640*x37
     - 640*x38 - 640*x39 - 810*x40 - 810*x41 - 665*x42 - 665*x43 - 665*x44
     - 665*x45 - 665*x46 - 665*x47 - 800*x48 - 800*x49 - 720*x50 - 720*x51
     - 720*x52 - 720*x53 - 720*x54 - 720*x55 - 860*x56 - 860*x57 - 860*x58
     - 840*x59 - 840*x60 - 840*x61 - 865*x62 - 865*x63 - 865*x64 - 920*x65
     - 920*x66 - 920*x67 - 920*x68 + x72 = 0;

e5:    x24 + x25 + x26 + x32 + x34 + x36 + x38 + x40 + x50 + x53 + x56 + x59
     + x65 >= 475;

e6:    x27 + x28 + x33 + x35 + x42 + x44 + x46 + x51 + x54 + x57 + x62 + x66
     >= 659;

e7:    x29 + x30 + x37 + x39 + x43 + x45 + x48 + x52 + x55 + x60 + x63 + x67
     >= 672;

e8:    x31 + x41 + x47 + x49 + x58 + x61 + x64 + x68 >= 1123;

e9:  - 100*i1 + x24 <= 0;

e10:  - 200*i2 + x25 <= 0;

e11:  - 600*i3 + x26 <= 0;

e12:  - 200*i4 + x27 <= 0;

e13:  - 600*i5 + x28 <= 0;

e14:  - 200*i6 + x29 <= 0;

e15:  - 600*i7 + x30 <= 0;

e16:  - 600*i8 + x31 <= 0;

e17:  - 200*i9 + x32 + x33 <= 0;

e18:  - 600*i10 + x34 + x35 <= 0;

e19:  - 200*i11 + x36 + x37 <= 0;

e20:  - 600*i12 + x38 + x39 <= 0;

e21:  - 600*i13 + x40 + x41 <= 0;

e22:  - 200*i14 + x42 + x43 <= 0;

e23:  - 600*i15 + x44 + x45 <= 0;

e24:  - 600*i16 + x46 + x47 <= 0;

e25:  - 600*i17 + x48 + x49 <= 0;

e26:  - 200*i18 + x50 + x51 + x52 <= 0;

e27:  - 600*i19 + x53 + x54 + x55 <= 0;

e28:  - 600*i20 + x56 + x57 + x58 <= 0;

e29:  - 600*i21 + x59 + x60 + x61 <= 0;

e30:  - 600*i22 + x62 + x63 + x64 <= 0;

e31:  - 600*i23 + x65 + x66 + x67 + x68 <= 0;

e32:    i1 <= 2;

e33:    i2 + i4 + i6 + i9 + i11 + i14 + i18 <= 3;

e34:    i3 + i5 + i7 + i8 + i10 + i12 + i13 + i15 + i16 + i17 + i19 + i20 + i21
      + i22 + i23 <= 4;

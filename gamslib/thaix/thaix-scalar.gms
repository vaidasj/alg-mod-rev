*  MIP written by GAMS Convert at 12/13/18 10:24:48
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*         34        4        4       26        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         72       49        0       23        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        232      232        0        0
*
*  Solve m using MIP minimizing x69;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72;

Positive Variables  x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37
          ,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54
          ,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34;


e1..    x69 - x72 =E= 0;

e2..  - i1 - i2 - i3 - i4 - i5 - i6 - i7 - i8 - i9 - i10 - i11 - i12 - i13
      - i14 - i15 - i16 - i17 - i18 - i19 - i20 - i21 - i22 - i23 + x70 =E= 0;

e3..  - 370*i1 - 370*i2 - 370*i3 - 460*i4 - 460*i5 - 600*i6 - 600*i7 - 750*i8
      - 515*i9 - 515*i10 - 640*i11 - 640*i12 - 810*i13 - 665*i14 - 665*i15
      - 665*i16 - 800*i17 - 720*i18 - 720*i19 - 860*i20 - 840*i21 - 865*i22
      - 920*i23 + x71 =E= 0;

e4..  - 370*x24 - 370*x25 - 370*x26 - 460*x27 - 460*x28 - 600*x29 - 600*x30
      - 750*x31 - 515*x32 - 515*x33 - 515*x34 - 515*x35 - 640*x36 - 640*x37
      - 640*x38 - 640*x39 - 810*x40 - 810*x41 - 665*x42 - 665*x43 - 665*x44
      - 665*x45 - 665*x46 - 665*x47 - 800*x48 - 800*x49 - 720*x50 - 720*x51
      - 720*x52 - 720*x53 - 720*x54 - 720*x55 - 860*x56 - 860*x57 - 860*x58
      - 840*x59 - 840*x60 - 840*x61 - 865*x62 - 865*x63 - 865*x64 - 920*x65
      - 920*x66 - 920*x67 - 920*x68 + x72 =E= 0;

e5..    x24 + x25 + x26 + x32 + x34 + x36 + x38 + x40 + x50 + x53 + x56 + x59
      + x65 =G= 475;

e6..    x27 + x28 + x33 + x35 + x42 + x44 + x46 + x51 + x54 + x57 + x62 + x66
      =G= 659;

e7..    x29 + x30 + x37 + x39 + x43 + x45 + x48 + x52 + x55 + x60 + x63 + x67
      =G= 672;

e8..    x31 + x41 + x47 + x49 + x58 + x61 + x64 + x68 =G= 1123;

e9..  - 100*i1 + x24 =L= 0;

e10..  - 200*i2 + x25 =L= 0;

e11..  - 600*i3 + x26 =L= 0;

e12..  - 200*i4 + x27 =L= 0;

e13..  - 600*i5 + x28 =L= 0;

e14..  - 200*i6 + x29 =L= 0;

e15..  - 600*i7 + x30 =L= 0;

e16..  - 600*i8 + x31 =L= 0;

e17..  - 200*i9 + x32 + x33 =L= 0;

e18..  - 600*i10 + x34 + x35 =L= 0;

e19..  - 200*i11 + x36 + x37 =L= 0;

e20..  - 600*i12 + x38 + x39 =L= 0;

e21..  - 600*i13 + x40 + x41 =L= 0;

e22..  - 200*i14 + x42 + x43 =L= 0;

e23..  - 600*i15 + x44 + x45 =L= 0;

e24..  - 600*i16 + x46 + x47 =L= 0;

e25..  - 600*i17 + x48 + x49 =L= 0;

e26..  - 200*i18 + x50 + x51 + x52 =L= 0;

e27..  - 600*i19 + x53 + x54 + x55 =L= 0;

e28..  - 600*i20 + x56 + x57 + x58 =L= 0;

e29..  - 600*i21 + x59 + x60 + x61 =L= 0;

e30..  - 600*i22 + x62 + x63 + x64 =L= 0;

e31..  - 600*i23 + x65 + x66 + x67 + x68 =L= 0;

e32..    i1 =L= 2;

e33..    i2 + i4 + i6 + i9 + i11 + i14 + i18 =L= 3;

e34..    i3 + i5 + i7 + i8 + i10 + i12 + i13 + i15 + i16 + i17 + i19 + i20
       + i21 + i22 + i23 =L= 4;

* set non-default bounds
i1.up = 2;
i2.up = 3;
i3.up = 4;
i4.up = 3;
i5.up = 4;
i6.up = 3;
i7.up = 4;
i8.up = 4;
i9.up = 3;
i10.up = 4;
i11.up = 3;
i12.up = 4;
i13.up = 4;
i14.up = 3;
i15.up = 4;
i16.up = 4;
i17.up = 4;
i18.up = 3;
i19.up = 4;
i20.up = 4;
i21.up = 4;
i22.up = 4;
i23.up = 4;

* set non-default priorities
i1.prior = 3;
i2.prior = 2;
i4.prior = 2;
i6.prior = 2;
i9.prior = 2;
i11.prior = 2;
i14.prior = 2;
i18.prior = 2;

Model m / all /;

m.limrow=0; m.limcol=0;
m.prioropt = 1;

Solve m using MIP minimizing x69;

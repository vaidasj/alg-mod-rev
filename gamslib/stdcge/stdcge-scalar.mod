#  NLP written by GAMS Convert at 12/13/18 11:23:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         49       49        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         49       49        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        175       89       86        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 35, >= 1E-5;
var x2 := 55, >= 1E-5;
var x3 := 20, >= 1E-5;
var x4 := 30, >= 1E-5;
var x5 := 15, >= 1E-5;
var x6 := 25, >= 1E-5;
var x7 := 21, >= 1E-5;
var x8 := 8, >= 1E-5;
var x9 := 17, >= 1E-5;
var x10 := 9, >= 1E-5;
var x11 := 73, >= 1E-5;
var x12 := 72, >= 1E-5;
var x13 := 20, >= 1E-5;
var x14 := 30, >= 1E-5;
var x15 := 19, >= 1E-5;
var x16 := 14, >= 1E-5;
var x17 := 16, >= 1E-5;
var x18 := 15, >= 1E-5;
var x19 := 8, >= 1E-5;
var x20 := 4, >= 1E-5;
var x21 := 13, >= 1E-5;
var x22 := 11, >= 1E-5;
var x23 := 84, >= 1E-5;
var x24 := 85, >= 1E-5;
var x25 := 70, >= 1E-5;
var x26 := 72, >= 1E-5;
var x27 := 1, >= 1E-5;
var x28 := 1, >= 1, <= 1;
var x29 := 1, >= 1E-5;
var x30 := 1, >= 1E-5;
var x31 := 1, >= 1E-5;
var x32 := 1, >= 1E-5;
var x33 := 1, >= 1E-5;
var x34 := 1, >= 1E-5;
var x35 := 1, >= 1E-5;
var x36 := 1, >= 1E-5;
var x37 := 1, >= 1E-5;
var x38 := 1, >= 1E-5;
var x39 := 1, >= 1E-5;
var x40 := 1, >= 1E-5;
var x41 := 1, >= 1E-5;
var x42 := 17, >= 1E-5;
var x43 := 2, >= 1E-5;
var x44 := 23, >= 1E-5;
var x45 := 5, >= 0;
var x46 := 4, >= 0;
var x47 := 1, >= 0;
var x48 := 2, >= 0;

maximize obj: x13**0.4*x14**0.6;

subject to

e1: -1.97962633005252*x3**0.571428571428571*x5**0.428571428571429 + x1 = 0;

e2: -1.99174121480513*x4**0.545454545454545*x6**0.454545454545455 + x2 = 0;

e3: -0.571428571428571*x29*x1/x27 + x3 = 0;

e4: -0.545454545454545*x30*x2/x27 + x4 = 0;

e5: -0.428571428571429*x29*x1/x28 + x5 = 0;

e6: -0.454545454545455*x30*x2/x28 + x6 = 0;

e7:    x7 - 0.287671232876712*x11 = 0;

e8:    x8 - 0.111111111111111*x12 = 0;

e9:    x9 - 0.232876712328767*x11 = 0;

e10:    x10 - 0.125*x12 = 0;

e11:    x1 - 0.479452054794521*x11 = 0;

e12:    x2 - 0.763888888888889*x12 = 0;

e13:  - 0.479452054794521*x29 + x31 - 0.287671232876712*x33
      - 0.232876712328767*x34 = 0;

e14:  - 0.763888888888889*x30 + x32 - 0.111111111111111*x33 - 0.125*x34 = 0;

e15:  - 12.7777777777778*x27 - 10.2222222222222*x28 + x44 = 0;

e16: -0.0684931506849315*x31*x11 + x45 = 0;

e17: -0.0555555555555556*x32*x12 + x46 = 0;

e18:    x47 = 0;

e19:    x48 = 0;

e20: -(0.575757575757576*x44 - 0.575757575757576*x43 + 0.575757575757576*x45 + 
     0.575757575757576*x46 + 0.575757575757576*x47 + 0.575757575757576*x48)/x33
      + x15 = 0;

e21: -(0.424242424242424*x44 - 0.424242424242424*x43 + 0.424242424242424*x45 + 
     0.424242424242424*x46 + 0.424242424242424*x47 + 0.424242424242424*x48)/x34
      + x16 = 0;

e22: -(6.19354838709677*x41 + 0.516129032258065*x42 + 0.516129032258065*x43)/
     x33 + x17 = 0;

e23: -(5.80645161290323*x41 + 0.483870967741935*x42 + 0.483870967741935*x43)/
     x34 + x18 = 0;

e24:  - 9.44444444444444*x27 - 7.55555555555556*x28 + x42 = 0;

e25:    x43 - 0.0571428571428571*x44 - 0.0571428571428571*x45
      - 0.0571428571428571*x46 - 0.0571428571428571*x47
      - 0.0571428571428571*x48 = 0;

e26: -(20*x27 + 16*x28 - 0.4*x42 - 0.4*x44)/x33 + x13 = 0;

e27: -(30*x27 + 24*x28 - 0.6*x42 - 0.6*x44)/x34 + x14 = 0;

e28:    x35 - x41 = 0;

e29:    x36 - x41 = 0;

e30:    x37 - x41 = 0;

e31:    x38 - x41 = 0;

e32:    x19 + x20 - x21 - x22 = -12;

e33: -1.78631298097427*(0.316984436431308*x21**0.5 + 0.683015563568692*x25**0.5
     )**2 + x23 = 0;

e34: -1.8103795278422*(0.315975006847877*x22**0.5 + 0.684024993152123*x26**0.5)
     **2 + x24 = 0;

e35: -(0.423659272868161*x33/x37)**2*x23 + x21 = 0;

e36: -(0.425145461109024*x34/x38)**2*x24 + x22 = 0;

e37: -(0.912870929175277*x33/x39)**2*x23 + x25 = 0;

e38: -(0.920357986616844*x34/x40)**2*x24 + x26 = 0;

e39: -2.42780549270868*(0.747349691412928*x19**1.5 + 0.252650308587072*x25**1.5
     )**0.666666666666667 + x11 = 0;

e40: -2.91102542459458*(0.809256430169454*x20**1.5 + 0.190743569830546*x26**1.5
     )**0.666666666666667 + x12 = 0;

e41: -(1.02120377146637*x31/x39)**(-2)*x11 + x25 = 0;

e42: -(1*x32/x40)**(-2)*x12 + x26 = 0;

e43: -(3.02076149339864*x31/x35)**(-2)*x11 + x19 = 0;

e44: -(4.24264068711929*x32/x36)**(-2)*x12 + x20 = 0;

e45:  - x7 - x8 - x13 - x15 - x17 + x23 = 0;

e46:  - x9 - x10 - x14 - x16 - x18 + x24 = 0;

e47:    x3 + x4 = 50;

e48:    x5 + x6 = 40;

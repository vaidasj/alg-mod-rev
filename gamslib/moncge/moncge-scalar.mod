#  NLP written by GAMS Convert at 12/13/18 11:23:24
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         51       51        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         51       51        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        189       95       94        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 11.6666666666667, >= 1E-5;
var x2 := 31, >= 1E-5;
var x3 := 6.66666666666667, >= 1E-5;
var x4 := 16.9090909090909, >= 1E-5;
var x5 := 5, >= 1E-5;
var x6 := 14.0909090909091, >= 1E-5;
var x7 := 21, >= 1E-5;
var x8 := 8, >= 1E-5;
var x9 := 17, >= 1E-5;
var x10 := 9, >= 1E-5;
var x11 := 49.6666666666667, >= 1E-5;
var x12 := 48, >= 1E-5;
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
var x25 := 46.6666666666667, >= 1E-5;
var x26 := 48, >= 1E-5;
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
var x49 := 23.3333333333333;
var x50 := 24;

maximize obj: x13**0.4*x14**0.6;

subject to

e1: -1.97962633005252*x3**0.571428571428571*x5**0.428571428571429 + x1 = 0;

e2: -1.99174121480513*x4**0.545454545454546*x6**0.454545454545455 + x2 = 0;

e3:    x7 - 0.422818791946309*x11 = 0;

e4:    x8 - 0.166666666666667*x12 = 0;

e5:    x9 - 0.342281879194631*x11 = 0;

e6:    x10 - 0.1875*x12 = 0;

e7:    x1 - 0.23489932885906*x11 = 0;

e8:    x2 - 0.645833333333333*x12 = 0;

e9: -0.571428571428571*x29*x1/x27 + x3 = 0;

e10: -0.545454545454546*x30*x2/x27 + x4 = 0;

e11: -0.428571428571429*x29*x1/x28 + x5 = 0;

e12: -0.454545454545455*x30*x2/x28 + x6 = 0;

e13:  - 0.23489932885906*x29 + x31 - 0.422818791946309*x33
      - 0.342281879194631*x34 = 0;

e14:  - 0.645833333333333*x30 + x32 - 0.166666666666667*x33 - 0.1875*x34 = 0;

e15:  - 6.02491582491582*x27 - 4.87878787878788*x28 + x44
      - 0.255555555555556*x49 - 0.255555555555556*x50 = 0;

e16: -0.100671140939597*x31*x11 + x45 = 0;

e17: -0.0833333333333333*x32*x12 + x46 = 0;

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

e24:  - 4.45319865319865*x27 - 3.60606060606061*x28 + x42
      - 0.188888888888889*x49 - 0.188888888888889*x50 = 0;

e25:    x43 - 0.0571428571428571*x44 - 0.0571428571428571*x45
      - 0.0571428571428571*x46 - 0.0571428571428571*x47
      - 0.0571428571428571*x48 = 0;

e26: -(9.43030303030303*x27 + 7.63636363636363*x28 - 0.4*x42 - 0.4*x44 + 0.4*
     x49 + 0.4*x50)/x33 + x13 = 0;

e27: -(14.1454545454545*x27 + 11.4545454545455*x28 - 0.6*x42 - 0.6*x44 + 0.6*
     x49 + 0.6*x50)/x34 + x14 = 0;

e28: -0.5*x39*x25 + x49 = 0;

e29: -0.5*x40*x26 + x50 = 0;

e30:    x35 - x41 = 0;

e31:    x36 - x41 = 0;

e32:    x37 - x41 = 0;

e33:    x38 - x41 = 0;

e34:    x19 + x20 - x21 - x22 = -12;

e35: -2.43772760307852*(0.319214484027929*x21**0.666666666666667 + 
     0.680785515972071*x25**0.666666666666667)**1.5 + x23 = 0;

e36: -2.49105629778685*(0.325301619326159*x22**0.666666666666667 + 
     0.674698380673841*x26**0.666666666666667)**1.5 + x24 = 0;

e37: -(0.578192834851047*x33/x37)**3*x23 + x21 = 0;

e38: -(0.597780742720094*x34/x38)**3*x24 + x22 = 0;

e39: -(0.82207069144349*x33/x39)**3*x23 + x25 = 0;

e40: -(0.826559465943655*x34/x40)**3*x24 + x26 = 0;

e41: -2.17200564514278*(0.707193905303813*x19**1.5 + 0.292806094696188*x25**1.5
     )**0.666666666666667 + x11 = 0;

e42: -2.57028516937072*(0.775990762260204*x20**1.5 + 0.224009237739796*x26**1.5
     )**0.666666666666667 + x12 = 0;

e43: -(1.03164224142176*x31/x39)**(-2)*x11 + x25 = 0;

e44: -(0.999999999999999*x32/x40)**(-2)*x12 + x26 = 0;

e45: -(2.49165273128767*x31/x35)**(-2)*x11 + x19 = 0;

e46: -(3.46410161513775*x32/x36)**(-2)*x12 + x20 = 0;

e47:  - x7 - x8 - x13 - x15 - x17 + x23 = 0;

e48:  - x9 - x10 - x14 - x16 - x18 + x24 = 0;

e49:    x3 + x4 = 23.5757575757576;

e50:    x5 + x6 = 19.0909090909091;

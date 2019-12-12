#  NLP written by GAMS Convert at 12/13/18 11:23:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         15       15        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         15       15        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         45       21       24        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 15, >= 0.001;
var x2 := 35, >= 0.001;
var x3 := 5, >= 0.001;
var x4 := 20, >= 0.001;
var x5 := 10, >= 0.001;
var x6 := 15, >= 0.001;
var x7 := 15, >= 0.001;
var x8 := 35, >= 0.001;
var x9 := 1, >= 0.001;
var x10 := 1, >= 0.001;
var x11 := 1, >= 0.001;
var x12 := 1, >= 0.001;
var x13 := 1, >= 0.001;
var x14 := 1, >= 1, <= 1;

maximize obj: x1**0.3*x2**0.7;

subject to

e1: -(7.5*x13 + 7.5*x14)/x9 + x1 = 0;

e2: -(17.5*x13 + 17.5*x14)/x10 + x2 = 0;

e3: -1.88988157484231*x3**0.333333333333333*x5**0.666666666666667 + x7 = 0;

e4: -1.97962633005252*x4**0.571428571428571*x6**0.428571428571429 + x8 = 0;

e5: -0.333333333333333*x11*x7/x13 + x3 = 0;

e6: -0.571428571428571*x12*x8/x13 + x4 = 0;

e7: -0.666666666666667*x11*x7/x14 + x5 = 0;

e8: -0.428571428571429*x12*x8/x14 + x6 = 0;

e9:    x1 - x7 = 0;

e10:    x2 - x8 = 0;

e11:    x3 + x4 = 25;

e12:    x5 + x6 = 25;

e13:    x9 - x11 = 0;

e14:    x10 - x12 = 0;

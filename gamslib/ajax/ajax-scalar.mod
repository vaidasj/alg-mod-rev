#  LP written by GAMS Convert at 12/13/18 10:24:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        5        0        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         13       13        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         37       37        0        0
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

maximize obj:  - 76*x1 - 75*x2 - 73*x3 - 82*x4 - 80*x5 - 78*x6 - 96*x7 - 95*x8
     - 92*x9 - 72*x10 - 71*x11 - 70*x12 + 5958000;

subject to

e1:    0.0188679245283019*x1 + 0.0196078431372549*x4 + 0.0192307692307692*x7
     + 0.0238095238095238*x10 <= 672;

e2:    0.0192307692307692*x2 + 0.0204081632653061*x5 + 0.0222222222222222*x8
     + 0.0227272727272727*x11 <= 600;

e3:    0.0204081632653061*x3 + 0.0227272727272727*x6 + 0.0212765957446809*x9
     + 0.025*x12 <= 480;

e4:    x1 + x2 + x3 = 30000;

e5:    x4 + x5 + x6 = 20000;

e6:    x7 + x8 + x9 = 12000;

e7:    x10 + x11 + x12 = 8000;

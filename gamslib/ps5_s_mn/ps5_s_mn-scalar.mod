#  NLP written by GAMS Convert at 12/13/18 11:34:20
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21        6       15        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         16       16        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         58       53        5        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 0.0001, >= 0.0001;
var x2 := 0.0001, >= 0.0001;
var x3 := 0.0001, >= 0.0001;
var x4 := 0.0001, >= 0.0001;
var x5 := 0.0001, >= 0.0001;
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

maximize obj:    0.204031699713663*x6 + 0.106424863577545*x7
     + 0.0588209224827239*x8 + 0.268958777758543*x9 + 0.361763736467525*x10
     - 0.204031699713663*x11 - 0.106424863577545*x12 - 0.0588209224827239*x13
     - 0.268958777758543*x14 - 0.361763736467525*x15;

subject to

e2: -x1**0.5 + x6 = 0;

e3: -x2**0.5 + x7 = 0;

e4: -x3**0.5 + x8 = 0;

e5: -x4**0.5 + x9 = 0;

e6: -x5**0.5 + x10 = 0;

e7:  - 0.2*x1 + x11 >= 0;

e8:  - 0.4*x2 + x12 >= 0;

e9:  - 0.6*x3 + x13 >= 0;

e10:  - 0.8*x4 + x14 >= 0;

e11:  - x5 + x15 >= 0;

e12:  - 0.2*x1 + 0.2*x2 + x11 - x12 >= 0;

e13:  - 0.4*x2 + 0.4*x3 + x12 - x13 >= 0;

e14:  - 0.6*x3 + 0.6*x4 + x13 - x14 >= 0;

e15:  - 0.8*x4 + 0.8*x5 + x14 - x15 >= 0;

e16:  - x5 + x15 >= 0;

e17:    x1 - x2 >= 0;

e18:    x2 - x3 >= 0;

e19:    x3 - x4 >= 0;

e20:    x4 - x5 >= 0;

e21:    x5 >= 0;

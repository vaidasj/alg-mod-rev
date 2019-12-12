#  MPEC written by GAMS Convert at 12/13/18 11:23:06
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        2        9        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         12       12        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        113        2      111        0
# 
#  Reformulation has removed 1 variable and 1 equation


var x1 := 7.44154669705633;
var x2 := 4.09781044734645;
var x3 := 2.59064374743843;
var x4 := 0.935385768072125;
var x5 := 17.9489523419981;
var x6 := 4.09781044734645;
var x7 := 1.30472575767983;
var x8 := 5.59008254355618;
var x9 := 3.22217945382394;
var x10 := 1.67709431683909, >= 0;
var x11 := 47.2793507462771;

maximize obj: x10*x11 - 3*x10 - 9.23329152870807*x10**2.33333333333333;

subject to

e1: (10*x1)**0.833333333333333 + 0.833333333333333*x1*x11/(x1 + x2 + x3 + x4 + 
    x5 + x6 + x7 + x8 + x9 + x10) - x11 >= -5 complements x1 >= 0;

e2: (10*x2)**1 + 0.833333333333333*x2*x11/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + 
    x8 + x9 + x10) - x11 >= -3 complements x2 >= 0;

e3: (10*x3)**1.11111111111111 + 0.833333333333333*x3*x11/(x1 + x2 + x3 + x4 + 
    x5 + x6 + x7 + x8 + x9 + x10) - x11 >= -8 complements x3 >= 0;

e4: (10*x4)**1.66666666666667 + 0.833333333333333*x4*x11/(x1 + x2 + x3 + x4 + 
    x5 + x6 + x7 + x8 + x9 + x10) - x11 >= -5 complements x4 >= 0;

e5: (10*x5)**0.666666666666667 + 0.833333333333333*x5*x11/(x1 + x2 + x3 + x4 + 
    x5 + x6 + x7 + x8 + x9 + x10) - x11 >= -1 complements x5 >= 0;

e6: (10*x6)**1 + 0.833333333333333*x6*x11/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + 
    x8 + x9 + x10) - x11 >= -3 complements x6 >= 0;

e7: (10*x7)**1.42857142857143 + 0.833333333333333*x7*x11/(x1 + x2 + x3 + x4 + 
    x5 + x6 + x7 + x8 + x9 + x10) - x11 >= -7 complements x7 >= 0;

e8: (10*x8)**0.909090909090909 + 0.833333333333333*x8*x11/(x1 + x2 + x3 + x4 + 
    x5 + x6 + x7 + x8 + x9 + x10) - x11 >= -4 complements x8 >= 0;

e9: (10*x9)**1.05263157894737 + 0.833333333333333*x9*x11/(x1 + x2 + x3 + x4 + 
    x5 + x6 + x7 + x8 + x9 + x10) - x11 >= -6 complements x9 >= 0;

e10: -(5000/(x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10))**
     0.833333333333333 + x11 = 0 complements x11;

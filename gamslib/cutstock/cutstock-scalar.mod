#  MIP written by GAMS Convert at 12/13/18 11:23:27
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        1        4        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        1        0        4        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          9        9        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var i1 integer := 48.5, >= 0, <= 1313;
var i2 integer := 305, >= 0, <= 1313;
var i3 integer := 131.666666666667, >= 0, <= 1313;
var i4 integer := 30.1428571428571, >= 0, <= 1313;

minimize obj:    i1 + i2 + i3 + i4;

subject to

e2:    2*i1 >= 97;

e3:    2*i2 >= 610;

e4:    3*i3 >= 395;

e5:    7*i4 >= 211;

#  MINLP written by GAMS Convert at 12/13/18 10:32:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        1        2        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        1        0        4        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          9        5        4        0
# 
#  Reformulation has removed 1 variable and 1 equation


var i1 integer := 24, >= 12, <= 60;
var i2 integer := 24, >= 12, <= 60;
var i3 integer := 24, >= 12, <= 60;
var i4 integer := 24, >= 12, <= 60;

minimize obj: (6.931 - i1*i2/(i3*i4))^2 + 1;

subject to

e2:  - i3 + i4 >= 0;

e3:    i1 - i2 >= 0;

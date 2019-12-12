#  MIP written by GAMS Convert at 12/13/18 10:30:51
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          2        1        1        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        1        0        4        0        0        0        0
#  FX      1        0        0        1        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          8        8        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


var i1 integer := 2, >= 2, <= 4;
var i2 integer := 3, >= 3, <= 3;
var i3 integer := 2, >= 2, <= 4;
var i4 integer := 2, >= 2, <= 3;

minimize obj:    1000*i1 + 100*i2 + 10*i3 + i4;

subject to

e1:    i1 + i3 + i4 >= 7;

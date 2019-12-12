#  MIP written by GAMS Convert at 12/13/18 10:24:52
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          4        0        1        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        1        2        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          8        8        0        0


var x1;
var b2 binary >= 0, <= 1;
var b3 binary >= 0, <= 1;

minimize obj: x1;

subject to

e1:    x1 >= 0;

e2:  - x1 + 0.23947*b2 + 0.75835*b3 <= -0.569251999888962;

e3:    b2 + b3 <= 1;

e4:  - b2 - b3 <= -1;

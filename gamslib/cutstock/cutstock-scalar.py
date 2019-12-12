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


from pyomo.environ import *

model = m = ConcreteModel()


m.i1 = Var(within=Integers,bounds=(0,1313),initialize=48.5)
m.i2 = Var(within=Integers,bounds=(0,1313),initialize=305)
m.i3 = Var(within=Integers,bounds=(0,1313),initialize=131.666666666667)
m.i4 = Var(within=Integers,bounds=(0,1313),initialize=30.1428571428571)

m.obj = Objective(expr=   m.i1 + m.i2 + m.i3 + m.i4, sense=minimize)

m.c2 = Constraint(expr=   2*m.i1 >= 97)

m.c3 = Constraint(expr=   2*m.i2 >= 610)

m.c4 = Constraint(expr=   3*m.i3 >= 395)

m.c5 = Constraint(expr=   7*m.i4 >= 211)

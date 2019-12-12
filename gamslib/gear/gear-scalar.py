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


from pyomo.environ import *

model = m = ConcreteModel()


m.i1 = Var(within=Integers,bounds=(12,60),initialize=24)
m.i2 = Var(within=Integers,bounds=(12,60),initialize=24)
m.i3 = Var(within=Integers,bounds=(12,60),initialize=24)
m.i4 = Var(within=Integers,bounds=(12,60),initialize=24)

m.obj = Objective(expr=(6.931 - m.i1*m.i2/(m.i3*m.i4))**2 + 1, sense=minimize)

m.c2 = Constraint(expr= - m.i3 + m.i4 >= 0)

m.c3 = Constraint(expr=   m.i1 - m.i2 >= 0)

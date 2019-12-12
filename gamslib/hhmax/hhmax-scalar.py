#  NLP written by GAMS Convert at 12/13/18 11:23:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        3        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          3        3        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          5        3        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0.001,None),initialize=0.001)
m.x2 = Var(within=Reals,bounds=(0.001,None),initialize=0.001)

m.obj = Objective(expr=m.x1**0.2*m.x2**0.8, sense=maximize)

m.c1 = Constraint(expr=   m.x1 == 8)

m.c2 = Constraint(expr=   m.x2 == 16)

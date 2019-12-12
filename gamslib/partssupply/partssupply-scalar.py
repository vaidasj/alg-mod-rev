#  NLP written by GAMS Convert at 12/13/18 11:43:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        3        3        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         15       13        2        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x2 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   0.2*m.x3 + 0.8*m.x4 - 0.2*m.x5 - 0.8*m.x6, sense=maximize)

m.c2 = Constraint(expr=-sqrt(m.x1) + m.x3 == 0)

m.c3 = Constraint(expr=-sqrt(m.x2) + m.x4 == 0)

m.c4 = Constraint(expr= - 0.2*m.x1 + m.x5 >= 0)

m.c5 = Constraint(expr= - 0.3*m.x2 + m.x6 >= 0)

m.c6 = Constraint(expr=   m.x1 - m.x2 >= 0)

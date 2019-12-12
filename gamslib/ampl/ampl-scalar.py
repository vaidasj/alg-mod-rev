#  LP written by GAMS Convert at 12/13/18 10:24:42
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         13        9        0        4        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         23       23        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         75       75        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,35.8),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,7.32),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   1.73*m.x1 + 1.8*m.x2 + 1.6*m.x3 + 2.2*m.x4 + 1.82*m.x5 + 1.9*m.x6 + 1.7*m.x7 + 0.95*m.x8
                        + 1.05*m.x9 + 1.1*m.x10 + 0.95*m.x11 + 1.33*m.x12 - 0.03*m.x13 - 0.03*m.x14 - 0.03*m.x15
                        - 0.03*m.x16 + 0.02*m.x17 - 0.025*m.x18 - 0.025*m.x19 - 0.025*m.x20 - 0.025*m.x21 - 0.01*m.x22
                       , sense=maximize)

m.c1 = Constraint(expr=   m.x1 + m.x5 + m.x9 <= 123)

m.c2 = Constraint(expr=   m.x2 + m.x6 + m.x10 <= 123)

m.c3 = Constraint(expr=   m.x3 + m.x7 + m.x11 <= 123)

m.c4 = Constraint(expr=   m.x4 + m.x8 + m.x12 <= 123)

m.c5 = Constraint(expr=   0.79*m.x1 + 0.83*m.x5 + 0.92*m.x9 - m.x13 + m.x14 == 0)

m.c6 = Constraint(expr=   0.79*m.x2 + 0.83*m.x6 + 0.92*m.x10 - m.x14 + m.x15 == 0)

m.c7 = Constraint(expr=   0.79*m.x3 + 0.83*m.x7 + 0.92*m.x11 - m.x15 + m.x16 == 0)

m.c8 = Constraint(expr=   0.79*m.x4 + 0.83*m.x8 + 0.92*m.x12 - m.x16 + m.x17 == 0)

m.c9 = Constraint(expr=   0.21*m.x1 + 0.17*m.x5 + 0.08*m.x9 - m.x18 + m.x19 == 0)

m.c10 = Constraint(expr=   0.21*m.x2 + 0.17*m.x6 + 0.08*m.x10 - m.x19 + m.x20 == 0)

m.c11 = Constraint(expr=   0.21*m.x3 + 0.17*m.x7 + 0.08*m.x11 - m.x20 + m.x21 == 0)

m.c12 = Constraint(expr=   0.21*m.x4 + 0.17*m.x8 + 0.08*m.x12 - m.x21 + m.x22 == 0)

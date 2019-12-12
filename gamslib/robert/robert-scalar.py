#  LP written by GAMS Convert at 12/13/18 10:24:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        7        0        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         18       18        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         57       57        0        0
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
m.x10 = Var(within=Reals,bounds=(0,400),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,275),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   25*m.x1 + 20*m.x2 + 10*m.x3 + 50*m.x4 + 50*m.x5 + 50*m.x6 + 75*m.x7 + 80*m.x8 + 100*m.x9
                        - 0.5*m.x10 - 0.5*m.x11 - 0.5*m.x12 + 15*m.x13 - 2*m.x14 - 2*m.x15 - 2*m.x16 + 25*m.x17
                       , sense=maximize)

m.c1 = Constraint(expr=   m.x1 + m.x4 + m.x7 <= 40)

m.c2 = Constraint(expr=   m.x2 + m.x5 + m.x8 <= 40)

m.c3 = Constraint(expr=   m.x3 + m.x6 + m.x9 <= 40)

m.c4 = Constraint(expr=   5*m.x1 + 3*m.x4 + m.x7 - m.x10 + m.x11 == 0)

m.c5 = Constraint(expr=   5*m.x2 + 3*m.x5 + m.x8 - m.x11 + m.x12 == 0)

m.c6 = Constraint(expr=   5*m.x3 + 3*m.x6 + m.x9 - m.x12 + m.x13 == 0)

m.c7 = Constraint(expr=   m.x1 + 2*m.x4 + 3*m.x7 - m.x14 + m.x15 == 0)

m.c8 = Constraint(expr=   m.x2 + 2*m.x5 + 3*m.x8 - m.x15 + m.x16 == 0)

m.c9 = Constraint(expr=   m.x3 + 2*m.x6 + 3*m.x9 - m.x16 + m.x17 == 0)

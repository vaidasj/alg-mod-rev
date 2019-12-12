#  NLP written by GAMS Convert at 12/13/18 10:32:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         10        8        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         13       13        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         34       27        7        0
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
m.x8 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x10 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(None,100),initialize=0)
m.x13 = Var(within=Reals,bounds=(None,200),initialize=0)

m.obj = Objective(expr= - m.x10 + m.x11, sense=maximize)

m.c1 = Constraint(expr= - 6*m.x1 - 16*m.x2 - 10*m.x3 + m.x10 == 0)

m.c2 = Constraint(expr=   m.x11 - 9*m.x12 - 15*m.x13 == 0)

m.c3 = Constraint(expr= - m.x4 - m.x6 + m.x12 == 0)

m.c4 = Constraint(expr= - m.x5 - m.x7 + m.x13 == 0)

m.c5 = Constraint(expr=   m.x1 + m.x2 - m.x6 - m.x7 == 0)

m.c6 = Constraint(expr=   m.x3 - m.x4 - m.x5 == 0)

m.c7 = Constraint(expr=m.x8*(m.x6 + m.x7) - 3*m.x1 - m.x2 == 0)

m.c8 = Constraint(expr=m.x8*m.x6 - 2.5*m.x6 - 0.5*m.x4 <= 0)

m.c9 = Constraint(expr=m.x8*m.x7 - 1.5*m.x7 + 0.5*m.x5 <= 0)

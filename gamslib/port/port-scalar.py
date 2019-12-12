#  LP written by GAMS Convert at 12/13/18 10:24:38
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        2        1        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         27       27        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(None,10),initialize=0)

m.obj = Objective(expr=   0.043*m.x1 + 0.045*m.x2 + 0.027*m.x3 + 0.025*m.x4 + 0.022*m.x5, sense=maximize)

m.c1 = Constraint(expr=   m.x3 + m.x4 + m.x5 >= 4)

m.c2 = Constraint(expr=   2*m.x1 + 5*m.x2 + 2*m.x3 + m.x4 + m.x5 - 1.4*m.x6 <= 0)

m.c3 = Constraint(expr=   9*m.x1 + 2*m.x2 + 15*m.x3 + 4*m.x4 + 3*m.x5 - 5*m.x6 <= 0)

m.c5 = Constraint(expr= - m.x1 - m.x2 - m.x3 - m.x4 - m.x5 + m.x6 == 0)

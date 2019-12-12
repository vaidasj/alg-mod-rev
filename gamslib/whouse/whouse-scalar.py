#  LP written by GAMS Convert at 12/13/18 10:24:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        5        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         13       13        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         28       28        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   m.x1 + m.x2 + m.x3 + m.x4 - 10*m.x5 - 12*m.x6 - 8*m.x7 - 9*m.x8 + 10*m.x9 + 12*m.x10 + 8*m.x11
                        + 9*m.x12, sense=minimize)

m.c1 = Constraint(expr=   m.x1 + m.x5 - m.x9 == 50)

m.c2 = Constraint(expr= - m.x1 + m.x2 + m.x6 - m.x10 == 0)

m.c3 = Constraint(expr= - m.x2 + m.x3 + m.x7 - m.x11 == 0)

m.c4 = Constraint(expr= - m.x3 + m.x4 + m.x8 - m.x12 == 0)

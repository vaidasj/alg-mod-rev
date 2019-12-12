#  LP written by GAMS Convert at 12/13/18 11:24:25
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        1        3        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          7        7        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         19       19        0        0
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

m.obj = Objective(expr=   0.225*m.x1 + 0.153*m.x2 + 0.162*m.x3 + 0.225*m.x4 + 0.162*m.x5 + 0.126*m.x6, sense=minimize)

m.c2 = Constraint(expr=   m.x1 + m.x2 + m.x3 <= 350)

m.c3 = Constraint(expr=   m.x4 + m.x5 + m.x6 <= 600)

m.c4 = Constraint(expr=   m.x1 + m.x4 >= 373.173647535)

m.c5 = Constraint(expr=   m.x2 + m.x5 >= 330.73502802)

m.c6 = Constraint(expr=   m.x3 + m.x6 >= 268.438086565)

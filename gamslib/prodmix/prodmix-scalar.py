#  LP written by GAMS Convert at 12/13/18 10:24:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        1        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        5        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         13       13        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   12*m.x1 + 20*m.x2 + 18*m.x3 + 40*m.x4, sense=maximize)

m.c1 = Constraint(expr=   4*m.x1 + 9*m.x2 + 7*m.x3 + 10*m.x4 <= 6000)

m.c2 = Constraint(expr=   m.x1 + m.x2 + 3*m.x3 + 40*m.x4 <= 4000)

#  LP written by GAMS Convert at 12/13/18 10:24:28
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          5        5        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         10       10        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         46       46        0        0
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

m.obj = Objective(expr=   4.1*m.x1 + 4.3*m.x2 + 5.8*m.x3 + 6*m.x4 + 7.6*m.x5 + 7.5*m.x6 + 7.3*m.x7 + 6.9*m.x8 + 7.3*m.x9
                       , sense=minimize)

m.c1 = Constraint(expr=   10*m.x1 + 10*m.x2 + 40*m.x3 + 60*m.x4 + 30*m.x5 + 30*m.x6 + 30*m.x7 + 50*m.x8 + 20*m.x9 == 30)

m.c2 = Constraint(expr=   10*m.x1 + 30*m.x2 + 50*m.x3 + 30*m.x4 + 30*m.x5 + 40*m.x6 + 20*m.x7 + 40*m.x8 + 30*m.x9 == 30)

m.c3 = Constraint(expr=   80*m.x1 + 60*m.x2 + 10*m.x3 + 10*m.x4 + 40*m.x5 + 30*m.x6 + 50*m.x7 + 10*m.x8 + 50*m.x9 == 40)

m.c4 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 + m.x9 == 1)

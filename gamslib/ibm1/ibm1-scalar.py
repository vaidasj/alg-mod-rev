#  LP written by GAMS Convert at 12/13/18 10:24:43
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        8        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         14       14        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         54       54        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,200),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,750),initialize=0)
m.x3 = Var(within=Reals,bounds=(400,800),initialize=400)
m.x4 = Var(within=Reals,bounds=(100,700),initialize=100)
m.x5 = Var(within=Reals,bounds=(0,1500),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(1500,None),initialize=1500)
m.x9 = Var(within=Reals,bounds=(250,300),initialize=250)
m.x10 = Var(within=Reals,bounds=(0,60),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,100),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,40),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,30),initialize=0)

m.obj = Objective(expr=   0.03*m.x1 + 0.08*m.x2 + 0.17*m.x3 + 0.12*m.x4 + 0.15*m.x5 + 0.21*m.x6 + 0.38*m.x7
                       , sense=minimize)

m.c1 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 == 2000)

m.c2 = Constraint(expr= - 0.7*m.x1 - 0.75*m.x2 - 0.8*m.x3 - 0.75*m.x4 - 0.8*m.x5 - 0.97*m.x6 + m.x8 == 0)

m.c3 = Constraint(expr= - 0.02*m.x1 - 0.06*m.x2 - 0.08*m.x3 - 0.12*m.x4 - 0.02*m.x5 - 0.01*m.x6 - m.x7 + m.x9 == 0)

m.c4 = Constraint(expr= - 0.15*m.x1 - 0.04*m.x2 - 0.02*m.x3 - 0.04*m.x4 - 0.02*m.x5 - 0.01*m.x6 + m.x10 == 0)

m.c5 = Constraint(expr= - 0.03*m.x1 - 0.05*m.x2 - 0.08*m.x3 - 0.02*m.x4 - 0.06*m.x5 - 0.01*m.x6 + m.x11 == 0)

m.c6 = Constraint(expr= - 0.02*m.x1 - 0.04*m.x2 - 0.01*m.x3 - 0.02*m.x4 - 0.02*m.x5 + m.x12 == 0)

m.c7 = Constraint(expr= - 0.02*m.x1 - 0.03*m.x2 - 0.01*m.x5 + m.x13 == 0)

#  LP written by GAMS Convert at 12/13/18 10:24:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         14       14        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         22       22        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         58       58        0        0
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
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(18,25),initialize=18)
m.x16 = Var(within=Reals,bounds=(12,15),initialize=12)
m.x17 = Var(within=Reals,bounds=(0,7),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,6),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,10),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,6),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,10),initialize=0)

m.obj = Objective(expr= - 65*m.x1 - 65*m.x2 - 58*m.x3 - 73*m.x4 - 56*m.x5 - 71*m.x6 - 40*m.x9 - 60*m.x10 - 70*m.x11
                        - 55*m.x12 - 50*m.x13 - 45*m.x14 + 265*m.x15 + 275*m.x16 + 310*m.x17 + 120*m.x18 + 150*m.x19
                        - 120*m.x20 - 150*m.x21, sense=maximize)

m.c1 = Constraint(expr=   0.97*m.x1 + 0.97*m.x2 - m.x3 - m.x4 - m.x5 - m.x6 == 0)

m.c2 = Constraint(expr=   m.x3 - 0.6*m.x7 == 0)

m.c3 = Constraint(expr=   m.x4 - 0.3*m.x8 == 0)

m.c4 = Constraint(expr=   m.x5 - 0.4*m.x7 == 0)

m.c5 = Constraint(expr=   m.x6 - 0.7*m.x8 == 0)

m.c6 = Constraint(expr= - m.x7 + m.x9 + m.x10 + m.x11 + m.x18 - m.x20 == 0)

m.c7 = Constraint(expr= - m.x8 + m.x12 + m.x13 + m.x14 + m.x19 - m.x21 == 0)

m.c8 = Constraint(expr=   m.x9 - 0.68*m.x15 == 0)

m.c9 = Constraint(expr=   m.x10 - 0.45*m.x16 == 0)

m.c10 = Constraint(expr=   m.x11 - 0.25*m.x17 == 0)

m.c11 = Constraint(expr=   m.x12 - 0.32*m.x15 == 0)

m.c12 = Constraint(expr=   m.x13 - 0.55*m.x16 == 0)

m.c13 = Constraint(expr=   m.x14 - 0.75*m.x17 == 0)

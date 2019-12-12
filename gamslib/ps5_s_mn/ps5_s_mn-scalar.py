#  NLP written by GAMS Convert at 12/13/18 11:34:41
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         21        6       15        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         16       16        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         58       53        5        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x2 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x3 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x4 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x5 = Var(within=Reals,bounds=(0.0001,None),initialize=0.0001)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   0.204031699713663*m.x6 + 0.106424863577545*m.x7 + 0.0588209224827239*m.x8
                        + 0.268958777758543*m.x9 + 0.361763736467525*m.x10 - 0.204031699713663*m.x11
                        - 0.106424863577545*m.x12 - 0.0588209224827239*m.x13 - 0.268958777758543*m.x14
                        - 0.361763736467525*m.x15, sense=maximize)

m.c2 = Constraint(expr=-m.x1**0.5 + m.x6 == 0)

m.c3 = Constraint(expr=-m.x2**0.5 + m.x7 == 0)

m.c4 = Constraint(expr=-m.x3**0.5 + m.x8 == 0)

m.c5 = Constraint(expr=-m.x4**0.5 + m.x9 == 0)

m.c6 = Constraint(expr=-m.x5**0.5 + m.x10 == 0)

m.c7 = Constraint(expr= - 0.2*m.x1 + m.x11 >= 0)

m.c8 = Constraint(expr= - 0.4*m.x2 + m.x12 >= 0)

m.c9 = Constraint(expr= - 0.6*m.x3 + m.x13 >= 0)

m.c10 = Constraint(expr= - 0.8*m.x4 + m.x14 >= 0)

m.c11 = Constraint(expr= - m.x5 + m.x15 >= 0)

m.c12 = Constraint(expr= - 0.2*m.x1 + 0.2*m.x2 + m.x11 - m.x12 >= 0)

m.c13 = Constraint(expr= - 0.4*m.x2 + 0.4*m.x3 + m.x12 - m.x13 >= 0)

m.c14 = Constraint(expr= - 0.6*m.x3 + 0.6*m.x4 + m.x13 - m.x14 >= 0)

m.c15 = Constraint(expr= - 0.8*m.x4 + 0.8*m.x5 + m.x14 - m.x15 >= 0)

m.c16 = Constraint(expr= - m.x5 + m.x15 >= 0)

m.c17 = Constraint(expr=   m.x1 - m.x2 >= 0)

m.c18 = Constraint(expr=   m.x2 - m.x3 >= 0)

m.c19 = Constraint(expr=   m.x3 - m.x4 >= 0)

m.c20 = Constraint(expr=   m.x4 - m.x5 >= 0)

m.c21 = Constraint(expr=   m.x5 >= 0)

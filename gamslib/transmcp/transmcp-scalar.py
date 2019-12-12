#  MCP written by GAMS Convert at 12/13/18 10:30:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        0       11        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         11       11        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         27       24        3        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)

m.c1 = Complementarity(expr=(   m.x1 - m.x3 >= -0.225, m.x6 >= 0))

m.c2 = Complementarity(expr=(   m.x1 - m.x4 >= -0.0765, m.x7 >= 0))

m.c3 = Complementarity(expr=(   m.x1 - m.x5 >= -0.162, m.x8 >= 0))

m.c4 = Complementarity(expr=(   m.x2 - m.x3 >= -0.225, m.x9 >= 0))

m.c5 = Complementarity(expr=(   m.x2 - m.x4 >= -0.162, m.x10 >= 0))

m.c6 = Complementarity(expr=(   m.x2 - m.x5 >= -0.126, m.x11 >= 0))

m.c7 = Complementarity(expr=( - m.x6 - m.x7 - m.x8 >= -350, m.x1 >= 0))

m.c8 = Complementarity(expr=( - m.x9 - m.x10 - m.x11 >= -600, m.x2 >= 0))

m.c9 = Complementarity(expr=(-325*(1/m.x3)**1.5 + m.x6 + m.x9 >= 0, m.x3 >= 0))

m.c10 = Complementarity(expr=(-300*(1/m.x4)**1.2 + m.x7 + m.x10 >= 0, m.x4 >= 0))

m.c11 = Complementarity(expr=(-275*(1/m.x5)**2 + m.x8 + m.x11 >= 0, m.x5 >= 0))

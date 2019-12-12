#  MCP written by GAMS Convert at 12/13/18 10:30:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        0        6        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          6        6        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         16        5       11        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=65.7933224657568)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=10)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=10)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=10)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=10)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=10)

m.c1 = Complementarity(expr=(-5000*m.x1**(-1.1) + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 >= 0, m.x1 >= 0))

m.c2 = Complementarity(expr=((0.2*m.x2)**0.833333333333333 - (m.x1 - 0.000181818181818182*m.x1**2.1*m.x2)
                              >= -10, m.x2 >= 0))

m.c3 = Complementarity(expr=((0.2*m.x3)**0.909090909090909 - (m.x1 - 0.000181818181818182*m.x1**2.1*m.x3)
                              >= -8, m.x3 >= 0))

m.c4 = Complementarity(expr=((0.2*m.x4)**1 - (m.x1 - 0.000181818181818182*m.x1**2.1*m.x4) >= -6, m.x4 >= 0))

m.c5 = Complementarity(expr=((0.2*m.x5)**1.11111111111111 - (m.x1 - 0.000181818181818182*m.x1**2.1*m.x5)
                              >= -4, m.x5 >= 0))

m.c6 = Complementarity(expr=((0.2*m.x6)**1.25 - (m.x1 - 0.000181818181818182*m.x1**2.1*m.x6) >= -2, m.x6 >= 0))

#  MCP written by GAMS Convert at 12/13/18 10:30:48
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        6        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          6        6        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         20       10       10        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x2 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(None,None),initialize=1)
m.x6 = Var(within=Reals,bounds=(None,None),initialize=1)

m.c1 = Complementarity(expr=(m.x1*m.x2 == 1)

m.c2 = Complementarity(expr=(m.x3/m.x1/m.x4 == 4.8)

m.c3 = Complementarity(expr=(m.x5/m.x2/m.x6 == 0.98)

m.c4 = Complementarity(expr=(m.x6*m.x4 == 1)

m.c5 = Complementarity(expr=(   m.x1 - m.x2 + 1E-7*m.x3 - 1E-5*m.x5 == 0)

m.c6 = Complementarity(expr=(   2*m.x1 - 2*m.x2 + 1E-7*m.x3 - 0.01*m.x4 - 1E-5*m.x5 + 0.01*m.x6 == 0)

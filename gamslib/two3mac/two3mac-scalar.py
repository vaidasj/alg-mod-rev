#  MCP written by GAMS Convert at 12/13/18 11:30:32
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          6        0        6        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          6        6        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         25        3       22        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(1,1),initialize=1)
m.x2 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(0.0001,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=10)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=10)

m.c1 = Complementarity(expr=(-((0.4*(0.36*m.x1**(-1) + 0.16*(1.5*m.x2)**(-1))**(-1)/m.x1)**2*m.x5 + (0.35*(
                             0.836660026534076*m.x1**0.5 + 0.547722557505166*m.x2**0.5)**2/m.x1)**0.5*m.x6)
                              - -60, m.x1 == 1))

m.c2 = Complementarity(expr=(-((0.177777777777778*(0.36*m.x1**(-1) + 0.16*(1.5*m.x2)**(-1))**(-1)/m.x2)**2*m.x5 + (0.15*
                             (0.836660026534076*m.x1**0.5 + 0.547722557505166*m.x2**0.5)**2/m.x2)**0.5*m.x6)
                              >= -25, m.x2 >= 0.0001))

m.c3 = Complementarity(expr=(m.x5 - (0.5*(0.2*m.x2*m.x5*(0.177777777777778*(0.36*m.x1**(-1) + 0.16*(1.5*m.x2)**(-1))**(-
                             1)/m.x2)**2 + 25*m.x2)*(0.5*m.x3**0.5 + 0.5*m.x4**0.5)*m.x3**(-1.5) + 0.3*(0.3*m.x2*m.x5*(
                             0.177777777777778*(0.36*m.x1**(-1) + 0.16*(1.5*m.x2)**(-1))**(-1)/m.x2)**2 + 60*m.x1)*(0.3*
                             m.x3**(-0.25) + 0.7*m.x4**(-0.25))*m.x3**(-0.75)) >= 0, m.x3 >= 0.0001))

m.c4 = Complementarity(expr=(-(0.5*(0.2*m.x2*m.x5*(0.177777777777778*(0.36*m.x1**(-1) + 0.16*(1.5*m.x2)**(-1))**(-1)/
                             m.x2)**2 + 25*m.x2)*(0.5*m.x3**0.5 + 0.5*m.x4**0.5)*m.x4**(-1.5) + 0.7*(0.3*m.x2*m.x5*(
                             0.177777777777778*(0.36*m.x1**(-1) + 0.16*(1.5*m.x2)**(-1))**(-1)/m.x2)**2 + 60*m.x1)*(0.3*
                             m.x3**(-0.25) + 0.7*m.x4**(-0.25))*m.x4**(-0.75)) + m.x6 >= 0, m.x4 >= 0.0001))

m.c5 = Complementarity(expr=(0.666666666666667*(0.36*m.x1**(-1) + 0.16*(1.5*m.x2)**(-1))**(-1) - m.x3 >= 0, m.x5 >= 0))

m.c6 = Complementarity(expr=(0.5*(0.836660026534076*m.x1**0.5 + 0.547722557505166*m.x2**0.5)**2 - m.x4 >= 0, m.x6 >= 0))

#  MCP written by GAMS Convert at 12/13/18 10:30:49
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         19        0       19        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         19       19        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        138       95       43        0


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x2 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x3 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x5 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x6 = Var(within=Reals,bounds=(1E-5,None),initialize=1)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x13 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=1)
m.x15 = Var(within=Reals,bounds=(9.1,9.1),initialize=9.1)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=9.2)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=9.6)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=10.1)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=8.6)

m.c1 = Complementarity(expr=(-(0.425531914893617*m.x15/(0.425531914893617*m.x1**(-0.2) + 0.212765957446809*m.x2**(-0.2)
                              + 0.340425531914894*m.x3**(-0.2) + 0.0212765957446809*m.x5**(-0.2))*(1/m.x1)**1.2 + 
                             0.0666666666666667*m.x16/(0.0666666666666667*m.x1**(-0.6) + 0.666666666666667*m.x2**(-0.6)
                              + 0.166666666666667*m.x3**(-0.6) + 0.1*m.x6**(-0.6))*(1/m.x1)**1.6 + 0.333333333333333*
                             m.x17/(0.333333333333333*m.x1**0.2 + 0.333333333333333*m.x2**0.2 + 0.25*m.x3**0.2 + 
                             0.0833333333333333*m.x5**0.2)*(1/m.x1)**0.8 + 0.340136054421769*m.x18/(0.340136054421769*
                             m.x1**0.5 + 0.340136054421769*m.x2**0.5 + 0.306122448979592*m.x3**0.5 + 0.0136054421768707*
                             m.x6**0.5)*(1/m.x1)**0.5 + 0.326086956521739*m.x19/(0.326086956521739*m.x1**0.4 + 
                             0.434782608695652*m.x2**0.4 + 0.217391304347826*m.x3**0.4 + 0.0217391304347826*m.x6**0.4)*(
                             1/m.x1)**0.6) + 4*m.x7 + 4*m.x8 + 1.6*m.x9 + 1.6*m.x10 + 1.6*m.x11 + 0.9*m.x12 + 7*m.x13
                              + 8*m.x14 >= 0, m.x1 >= 1E-5))

m.c2 = Complementarity(expr=(-(0.212765957446809*m.x15/(0.425531914893617*m.x1**(-0.2) + 0.212765957446809*m.x2**(-0.2)
                              + 0.340425531914894*m.x3**(-0.2) + 0.0212765957446809*m.x5**(-0.2))*(1/m.x2)**1.2 + 
                             0.666666666666667*m.x16/(0.0666666666666667*m.x1**(-0.6) + 0.666666666666667*m.x2**(-0.6)
                              + 0.166666666666667*m.x3**(-0.6) + 0.1*m.x6**(-0.6))*(1/m.x2)**1.6 + 0.333333333333333*
                             m.x17/(0.333333333333333*m.x1**0.2 + 0.333333333333333*m.x2**0.2 + 0.25*m.x3**0.2 + 
                             0.0833333333333333*m.x5**0.2)*(1/m.x2)**0.8 + 0.340136054421769*m.x18/(0.340136054421769*
                             m.x1**0.5 + 0.340136054421769*m.x2**0.5 + 0.306122448979592*m.x3**0.5 + 0.0136054421768707*
                             m.x6**0.5)*(1/m.x2)**0.5 + 0.434782608695652*m.x19/(0.326086956521739*m.x1**0.4 + 
                             0.434782608695652*m.x2**0.4 + 0.217391304347826*m.x3**0.4 + 0.0217391304347826*m.x6**0.4)*(
                             1/m.x2)**0.6) + 6*m.x9 + 8*m.x10 + 7*m.x11 >= 0, m.x2 >= 1E-5))

m.c3 = Complementarity(expr=(-(0.340425531914894*m.x15/(0.425531914893617*m.x1**(-0.2) + 0.212765957446809*m.x2**(-0.2)
                              + 0.340425531914894*m.x3**(-0.2) + 0.0212765957446809*m.x5**(-0.2))*(1/m.x3)**1.2 + 
                             0.166666666666667*m.x16/(0.0666666666666667*m.x1**(-0.6) + 0.666666666666667*m.x2**(-0.6)
                              + 0.166666666666667*m.x3**(-0.6) + 0.1*m.x6**(-0.6))*(1/m.x3)**1.6 + 0.25*m.x17/(
                             0.333333333333333*m.x1**0.2 + 0.333333333333333*m.x2**0.2 + 0.25*m.x3**0.2 + 
                             0.0833333333333333*m.x5**0.2)*(1/m.x3)**0.8 + 0.306122448979592*m.x18/(0.340136054421769*
                             m.x1**0.5 + 0.340136054421769*m.x2**0.5 + 0.306122448979592*m.x3**0.5 + 0.0136054421768707*
                             m.x6**0.5)*(1/m.x3)**0.5 + 0.217391304347826*m.x19/(0.326086956521739*m.x1**0.4 + 
                             0.434782608695652*m.x2**0.4 + 0.217391304347826*m.x3**0.4 + 0.0217391304347826*m.x6**0.4)*(
                             1/m.x3)**0.6) + 4*m.x7 + 3.5*m.x8 >= -7.5, m.x3 >= 1E-5))

m.c4 = Complementarity(expr=( - 5.3*m.x7 - 5*m.x8 - 2*m.x9 - 2*m.x10 - 2*m.x11 - m.x12 - 4*m.x13 - 5*m.x14
                              >= -12.1, m.x4 >= 0))

m.c5 = Complementarity(expr=(-(0.0212765957446809*m.x15/(0.425531914893617*m.x1**(-0.2) + 0.212765957446809*m.x2**(-0.2)
                              + 0.340425531914894*m.x3**(-0.2) + 0.0212765957446809*m.x5**(-0.2))*(1/m.x5)**1.2 + 
                             0.0833333333333333*m.x17/(0.333333333333333*m.x1**0.2 + 0.333333333333333*m.x2**0.2 + 0.25*
                             m.x3**0.2 + 0.0833333333333333*m.x5**0.2)*(1/m.x5)**0.8) - 2*m.x7 - m.x8 - 2*m.x9 - 4*m.x10
                              - m.x11 - 3*m.x13 - 2*m.x14 >= -11.3, m.x5 >= 1E-5))

m.c6 = Complementarity(expr=(-(0.1*m.x16/(0.0666666666666667*m.x1**(-0.6) + 0.666666666666667*m.x2**(-0.6) + 
                             0.166666666666667*m.x3**(-0.6) + 0.1*m.x6**(-0.6))*(1/m.x6)**1.6 + 0.0136054421768707*m.x18
                             /(0.340136054421769*m.x1**0.5 + 0.340136054421769*m.x2**0.5 + 0.306122448979592*m.x3**0.5
                              + 0.0136054421768707*m.x6**0.5)*(1/m.x6)**0.5 + 0.0217391304347826*m.x19/(
                             0.326086956521739*m.x1**0.4 + 0.434782608695652*m.x2**0.4 + 0.217391304347826*m.x3**0.4 + 
                             0.0217391304347826*m.x6**0.4)*(1/m.x6)**0.6) - m.x7 - 6*m.x8 - 3*m.x9 - m.x10 - 8*m.x11
                              - m.x13 - 8*m.x14 >= -15.7, m.x6 >= 1E-5))

m.c7 = Complementarity(expr=( - 4*m.x1 - 4*m.x3 + 5.3*m.x4 + 2*m.x5 + m.x6 >= 0, m.x7 >= 0))

m.c8 = Complementarity(expr=( - 4*m.x1 - 3.5*m.x3 + 5*m.x4 + m.x5 + 6*m.x6 >= 0, m.x8 >= 0))

m.c9 = Complementarity(expr=( - 1.6*m.x1 - 6*m.x2 + 2*m.x4 + 2*m.x5 + 3*m.x6 >= 0, m.x9 >= 0))

m.c10 = Complementarity(expr=( - 1.6*m.x1 - 8*m.x2 + 2*m.x4 + 4*m.x5 + m.x6 >= 0, m.x10 >= 0))

m.c11 = Complementarity(expr=( - 1.6*m.x1 - 7*m.x2 + 2*m.x4 + m.x5 + 8*m.x6 >= 0, m.x11 >= 0))

m.c12 = Complementarity(expr=( - 0.9*m.x1 + m.x4 >= 0, m.x12 >= 0))

m.c13 = Complementarity(expr=( - 7*m.x1 + 4*m.x4 + 3*m.x5 + m.x6 >= 0, m.x13 >= 0))

m.c14 = Complementarity(expr=( - 8*m.x1 + 5*m.x4 + 2*m.x5 + 8*m.x6 >= 0, m.x14 >= 0))

m.c15 = Complementarity(expr=( - m.x3 - 3*m.x4 - 5*m.x5 - 0.1*m.x6 + m.x15 - 0, m.x15 == 9.1))

m.c16 = Complementarity(expr=( - 2*m.x3 - 0.1*m.x4 - 0.1*m.x5 - 7*m.x6 + m.x16 >= 0, m.x16 >= 0))

m.c17 = Complementarity(expr=( - 1.5*m.x3 - 2*m.x4 - 6*m.x5 - 0.1*m.x6 + m.x17 >= 0, m.x17 >= 0))

m.c18 = Complementarity(expr=( - m.x3 - m.x4 - 0.1*m.x5 - 8*m.x6 + m.x18 >= 0, m.x18 >= 0))

m.c19 = Complementarity(expr=( - 2*m.x3 - 6*m.x4 - 0.1*m.x5 - 0.5*m.x6 + m.x19 >= 0, m.x19 >= 0))

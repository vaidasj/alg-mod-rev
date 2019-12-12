#  MPEC written by GAMS Convert at 12/13/18 11:23:07
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         11        2        9        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         12       12        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        113        2      111        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *
from pyomo.mpec import Complementarity

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=7.44154669705633)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=4.09781044734645)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=2.59064374743843)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0.935385768072125)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=17.9489523419981)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=4.09781044734645)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=1.30472575767983)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=5.59008254355618)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=3.22217945382394)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=1.67709431683909)
m.x11 = Var(within=Reals,bounds=(None,None),initialize=47.2793507462771)

m.obj = Objective(expr=m.x10*m.x11 - 3*m.x10 - 9.23329152870807*m.x10**2.33333333333333, sense=maximize)

m.c1 = Complementarity(expr=((10*m.x1)**0.833333333333333 + 0.833333333333333*m.x1*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + 
                             m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10) - m.x11 >= -5, m.x1 >= 0))

m.c2 = Complementarity(expr=((10*m.x2)**1 + 0.833333333333333*m.x2*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7
                              + m.x8 + m.x9 + m.x10) - m.x11 >= -3, m.x2 >= 0))

m.c3 = Complementarity(expr=((10*m.x3)**1.11111111111111 + 0.833333333333333*m.x3*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + 
                             m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10) - m.x11 >= -8, m.x3 >= 0))

m.c4 = Complementarity(expr=((10*m.x4)**1.66666666666667 + 0.833333333333333*m.x4*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + 
                             m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10) - m.x11 >= -5, m.x4 >= 0))

m.c5 = Complementarity(expr=((10*m.x5)**0.666666666666667 + 0.833333333333333*m.x5*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + 
                             m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10) - m.x11 >= -1, m.x5 >= 0))

m.c6 = Complementarity(expr=((10*m.x6)**1 + 0.833333333333333*m.x6*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7
                              + m.x8 + m.x9 + m.x10) - m.x11 >= -3, m.x6 >= 0))

m.c7 = Complementarity(expr=((10*m.x7)**1.42857142857143 + 0.833333333333333*m.x7*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + 
                             m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10) - m.x11 >= -7, m.x7 >= 0))

m.c8 = Complementarity(expr=((10*m.x8)**0.909090909090909 + 0.833333333333333*m.x8*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + 
                             m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10) - m.x11 >= -4, m.x8 >= 0))

m.c9 = Complementarity(expr=((10*m.x9)**1.05263157894737 + 0.833333333333333*m.x9*m.x11/(m.x1 + m.x2 + m.x3 + m.x4 + 
                             m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10) - m.x11 >= -6, m.x9 >= 0))

m.c10 = Complementarity(expr=(-(5000/(m.x1 + m.x2 + m.x3 + m.x4 + m.x5 + m.x6 + m.x7 + m.x8 + m.x9 + m.x10))**
                              0.833333333333333 + m.x11 == 0, m.x11))

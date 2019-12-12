#  NLP written by GAMS Convert at 12/13/18 11:23:23
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         15       15        0        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         15       15        0        0        0        0        0        0
#  FX      1        1        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         45       21       24        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0.001,None),initialize=15)
m.x2 = Var(within=Reals,bounds=(0.001,None),initialize=35)
m.x3 = Var(within=Reals,bounds=(0.001,None),initialize=5)
m.x4 = Var(within=Reals,bounds=(0.001,None),initialize=20)
m.x5 = Var(within=Reals,bounds=(0.001,None),initialize=10)
m.x6 = Var(within=Reals,bounds=(0.001,None),initialize=15)
m.x7 = Var(within=Reals,bounds=(0.001,None),initialize=15)
m.x8 = Var(within=Reals,bounds=(0.001,None),initialize=35)
m.x9 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x10 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x11 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x12 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x13 = Var(within=Reals,bounds=(0.001,None),initialize=1)
m.x14 = Var(within=Reals,bounds=(1,1),initialize=1)

m.obj = Objective(expr=m.x1**0.3*m.x2**0.7, sense=maximize)

m.c1 = Constraint(expr=-(7.5*m.x13 + 7.5*m.x14)/m.x9 + m.x1 == 0)

m.c2 = Constraint(expr=-(17.5*m.x13 + 17.5*m.x14)/m.x10 + m.x2 == 0)

m.c3 = Constraint(expr=-1.88988157484231*m.x3**0.333333333333333*m.x5**0.666666666666667 + m.x7 == 0)

m.c4 = Constraint(expr=-1.97962633005252*m.x4**0.571428571428571*m.x6**0.428571428571429 + m.x8 == 0)

m.c5 = Constraint(expr=-0.333333333333333*m.x11*m.x7/m.x13 + m.x3 == 0)

m.c6 = Constraint(expr=-0.571428571428571*m.x12*m.x8/m.x13 + m.x4 == 0)

m.c7 = Constraint(expr=-0.666666666666667*m.x11*m.x7/m.x14 + m.x5 == 0)

m.c8 = Constraint(expr=-0.428571428571429*m.x12*m.x8/m.x14 + m.x6 == 0)

m.c9 = Constraint(expr=   m.x1 - m.x7 == 0)

m.c10 = Constraint(expr=   m.x2 - m.x8 == 0)

m.c11 = Constraint(expr=   m.x3 + m.x4 == 25)

m.c12 = Constraint(expr=   m.x5 + m.x6 == 25)

m.c13 = Constraint(expr=   m.x9 - m.x11 == 0)

m.c14 = Constraint(expr=   m.x10 - m.x12 == 0)

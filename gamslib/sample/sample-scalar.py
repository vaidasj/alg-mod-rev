#  NLP written by GAMS Convert at 12/13/18 10:24:34
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          3        1        0        2        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        5        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         13        9        4        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(2.5E-6,0.01),initialize=0.005)
m.x2 = Var(within=Reals,bounds=(3.33333333333333E-6,0.01),initialize=0.005)
m.x3 = Var(within=Reals,bounds=(5E-6,0.01),initialize=0.005)
m.x4 = Var(within=Reals,bounds=(1E-5,0.01),initialize=0.005)

m.obj = Objective(expr=1/m.x1 + 1/m.x2 + 1/m.x3 + 1/m.x4, sense=minimize)

m.c1 = Constraint(expr=   4*m.x1 + 2.25*m.x2 + m.x3 + 0.25*m.x4 <= 0.0401)

m.c2 = Constraint(expr=   0.16*m.x1 + 0.36*m.x2 + 0.64*m.x3 + 0.64*m.x4 <= 0.010085)

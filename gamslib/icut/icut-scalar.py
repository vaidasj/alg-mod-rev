#  MIP written by GAMS Convert at 12/13/18 10:30:51
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          2        1        1        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#          5        1        0        4        0        0        0        0
#  FX      1        0        0        1        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#          8        8        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.i1 = Var(within=Integers,bounds=(2,4),initialize=2)
m.i2 = Var(within=Integers,bounds=(3,3),initialize=3)
m.i3 = Var(within=Integers,bounds=(2,4),initialize=2)
m.i4 = Var(within=Integers,bounds=(2,3),initialize=2)

m.obj = Objective(expr=   1000*m.i1 + 100*m.i2 + 10*m.i3 + m.i4, sense=minimize)

m.c1 = Constraint(expr=   m.i1 + m.i3 + m.i4 >= 7)

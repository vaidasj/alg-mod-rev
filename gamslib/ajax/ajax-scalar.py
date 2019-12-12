#  LP written by GAMS Convert at 12/13/18 10:24:40
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#          8        5        0        3        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         13       13        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#         37       37        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr= - 76*m.x1 - 75*m.x2 - 73*m.x3 - 82*m.x4 - 80*m.x5 - 78*m.x6 - 96*m.x7 - 95*m.x8 - 92*m.x9
                        - 72*m.x10 - 71*m.x11 - 70*m.x12 + 5958000, sense=maximize)

m.c1 = Constraint(expr=   0.0188679245283019*m.x1 + 0.0196078431372549*m.x4 + 0.0192307692307692*m.x7
                        + 0.0238095238095238*m.x10 <= 672)

m.c2 = Constraint(expr=   0.0192307692307692*m.x2 + 0.0204081632653061*m.x5 + 0.0222222222222222*m.x8
                        + 0.0227272727272727*m.x11 <= 600)

m.c3 = Constraint(expr=   0.0204081632653061*m.x3 + 0.0227272727272727*m.x6 + 0.0212765957446809*m.x9 + 0.025*m.x12
                        <= 480)

m.c4 = Constraint(expr=   m.x1 + m.x2 + m.x3 == 30000)

m.c5 = Constraint(expr=   m.x4 + m.x5 + m.x6 == 20000)

m.c6 = Constraint(expr=   m.x7 + m.x8 + m.x9 == 12000)

m.c7 = Constraint(expr=   m.x10 + m.x11 + m.x12 == 8000)

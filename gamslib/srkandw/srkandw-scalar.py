#  LP written by GAMS Convert at 12/13/18 11:22:38
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         26        1       24        1        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         29       29        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        123      123        0        0
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
m.x13 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,None),initialize=0)

m.obj = Objective(expr=   2*m.x1 + 2*m.x2 + 3*m.x3 + 3*m.x4 + 2.1*m.x5 + 2.8*m.x6 + 2.1*m.x7 + 0.6*m.x8 + 1.5*m.x9
                        + 0.9*m.x10 + 1.2*m.x11 + 1.6*m.x12 + 1.2*m.x13 + 1.2*m.x14 + 1.2*m.x15 + 0.6*m.x16 + 3.6*m.x17
                        + 4.8*m.x18 + 3.6*m.x19 + 0.9*m.x20 + 2.25*m.x21 + 1.35*m.x22 + 1.8*m.x23 + 2.4*m.x24
                        + 1.8*m.x25 + 1.8*m.x26 + 1.8*m.x27 + 0.9*m.x28, sense=minimize)

m.c2 = Constraint(expr=   m.x1 + m.x2 + m.x3 + m.x4 <= 50)

m.c3 = Constraint(expr=   2*m.x1 + 6*m.x3 + m.x5 >= 200)

m.c4 = Constraint(expr=   2*m.x1 + 6*m.x3 + m.x6 >= 180)

m.c5 = Constraint(expr=   2*m.x1 + 6*m.x3 + m.x7 >= 160)

m.c6 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x5 + m.x8 >= 200)

m.c7 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x5 + m.x9 >= 180)

m.c8 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x5 + m.x10 >= 160)

m.c9 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x6 + m.x11 >= 200)

m.c10 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x6 + m.x12 >= 180)

m.c11 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x6 + m.x13 >= 160)

m.c12 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x7 + m.x14 >= 200)

m.c13 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x7 + m.x15 >= 180)

m.c14 = Constraint(expr=   2*m.x2 + 6*m.x4 + 0*m.x7 + m.x16 >= 160)

m.c15 = Constraint(expr=   3*m.x1 + 3.4*m.x3 + m.x17 >= 180)

m.c16 = Constraint(expr=   3*m.x1 + 3.4*m.x3 + m.x18 >= 160)

m.c17 = Constraint(expr=   3*m.x1 + 3.4*m.x3 + m.x19 >= 140)

m.c18 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x17 + m.x20 >= 180)

m.c19 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x17 + m.x21 >= 160)

m.c20 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x17 + m.x22 >= 140)

m.c21 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x18 + m.x23 >= 180)

m.c22 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x18 + m.x24 >= 160)

m.c23 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x18 + m.x25 >= 140)

m.c24 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x19 + m.x26 >= 180)

m.c25 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x19 + m.x27 >= 160)

m.c26 = Constraint(expr=   3*m.x2 + 3.4*m.x4 + 0*m.x19 + m.x28 >= 140)

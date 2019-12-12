#  MIP written by GAMS Convert at 12/13/18 10:24:35
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         51       11        0       40        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         49       44        5        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        178      178        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


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
m.x29 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x31 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x32 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x33 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x34 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x35 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x36 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x37 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x38 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x39 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x40 = Var(within=Reals,bounds=(0,None),initialize=0)
m.x41 = Var(within=Reals,bounds=(0,None),initialize=0)
m.b42 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b43 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b44 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b45 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b46 = Var(within=Binary,bounds=(0,1),initialize=0)
m.x47 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x48 = Var(within=Reals,bounds=(None,None),initialize=0)
m.x49 = Var(within=Reals,bounds=(None,None),initialize=0)

m.obj = Objective(expr=   m.b42 + m.b43 + m.b44 + m.b45 + m.b46, sense=minimize)

m.c1 = Constraint(expr=   m.x2 + m.x3 + m.x4 + m.x5 + m.x6 - 1.2*m.x7 - 1.2*m.x8 - 1.2*m.x9 - 1.2*m.x10 - 1.2*m.x11
                        == 0)

m.c2 = Constraint(expr=   m.x7 + m.x8 + m.x9 + m.x10 + m.x11 - 0.2*m.x17 - 0.2*m.x18 - 0.2*m.x19 - 0.2*m.x20 - 0.2*m.x21
                        == 0)

m.c3 = Constraint(expr= - m.x12 - m.x13 - m.x14 - m.x15 - m.x16 + m.x47 == 0)

m.c4 = Constraint(expr=   m.x12 + m.x13 + m.x14 + m.x15 + m.x16 - 0.9*m.x22 - 0.9*m.x23 - 0.9*m.x24 - 0.9*m.x25
                        - 0.9*m.x26 - 0.7*m.x27 - 0.7*m.x28 - 0.7*m.x29 - 0.7*m.x30 - 0.7*m.x31 == 0)

m.c5 = Constraint(expr= - 0.2*m.x22 - 0.2*m.x23 - 0.2*m.x24 - 0.2*m.x25 - 0.2*m.x26 - 0.4*m.x27 - 0.4*m.x28 - 0.4*m.x29
                        - 0.4*m.x30 - 0.4*m.x31 + 0.2*m.x32 + 0.2*m.x33 + 0.2*m.x34 + 0.2*m.x35 + 0.2*m.x36 + m.x48
                        == 0)

m.c6 = Constraint(expr=   m.x22 + m.x23 + m.x24 + m.x25 + m.x26 + m.x27 + m.x28 + m.x29 + m.x30 + m.x31 - 1.2*m.x32
                        - 1.2*m.x33 - 1.2*m.x34 - 1.2*m.x35 - 1.2*m.x36 == 0)

m.c7 = Constraint(expr= - 1.2*m.x17 - 1.2*m.x18 - 1.2*m.x19 - 1.2*m.x20 - 1.2*m.x21 + m.x32 + m.x33 + m.x34 + m.x35
                        + m.x36 == 0)

m.c8 = Constraint(expr= - 1.4*m.x2 - 1.4*m.x3 - 1.4*m.x4 - 1.4*m.x5 - 1.4*m.x6 + m.x49 == 0)

m.c9 = Constraint(expr=   m.x17 + m.x18 + m.x19 + m.x20 + m.x21 - m.x37 - m.x38 - m.x39 - m.x40 - m.x41 == 0)

m.c10 = Constraint(expr=   m.x37 + m.x38 + m.x39 + m.x40 + m.x41 == 0.5)

m.c11 = Constraint(expr=   m.x12 <= 2)

m.c12 = Constraint(expr=   m.x13 <= 2.5)

m.c13 = Constraint(expr=   m.x14 <= 0)

m.c14 = Constraint(expr=   m.x15 <= 0)

m.c15 = Constraint(expr=   m.x16 <= 0)

m.c16 = Constraint(expr=   m.x22 + m.x27 <= 2.35)

m.c17 = Constraint(expr=   m.x23 + m.x28 <= 2.8)

m.c18 = Constraint(expr=   m.x24 + m.x29 <= 0)

m.c19 = Constraint(expr=   m.x25 + m.x30 <= 0)

m.c20 = Constraint(expr=   m.x26 + m.x31 <= 0)

m.c21 = Constraint(expr=   m.x32 <= 1.9)

m.c22 = Constraint(expr=   m.x33 <= 2.4)

m.c23 = Constraint(expr=   m.x34 <= 0)

m.c24 = Constraint(expr=   m.x35 <= 0)

m.c25 = Constraint(expr=   m.x36 <= 0)

m.c26 = Constraint(expr=   m.x2 <= 0)

m.c27 = Constraint(expr=   m.x3 <= 0)

m.c28 = Constraint(expr=   m.x4 <= 0.8)

m.c29 = Constraint(expr=   m.x5 <= 0)

m.c30 = Constraint(expr=   m.x6 <= 0)

m.c31 = Constraint(expr=   m.x7 <= 0)

m.c32 = Constraint(expr=   m.x8 <= 0)

m.c33 = Constraint(expr=   m.x9 <= 0.6)

m.c34 = Constraint(expr=   m.x10 <= 0.5)

m.c35 = Constraint(expr=   m.x11 <= 0)

m.c36 = Constraint(expr=   m.x17 <= 0)

m.c37 = Constraint(expr=   m.x18 <= 0)

m.c38 = Constraint(expr=   m.x19 <= 0)

m.c39 = Constraint(expr=   m.x20 <= 0)

m.c40 = Constraint(expr=   m.x21 <= 0.6)

m.c41 = Constraint(expr=   m.x37 <= 0)

m.c42 = Constraint(expr=   m.x38 <= 0)

m.c43 = Constraint(expr=   m.x39 <= 0)

m.c44 = Constraint(expr=   m.x40 <= 0)

m.c45 = Constraint(expr=   m.x41 <= 0.6)

m.c46 = Constraint(expr=   0.05*m.x12 + 0.05*m.x22 + 0.05*m.x27 + 0.05*m.x32 - 0.2*m.b42 <= 0)

m.c47 = Constraint(expr=   0.05*m.x10 - 0.05*m.b43 <= 0)

m.c48 = Constraint(expr=   0.2*m.x4 + 0.2*m.x9 + 0.3*m.x12 + 0.3*m.x22 + 0.3*m.x27 + 0.3*m.x32 - 1.6*m.b44 <= 0)

m.c49 = Constraint(expr=   1.2*m.x21 + 1.2*m.x41 - 2.4*m.b45 <= 0)

m.c50 = Constraint(expr=   0.7*m.x4 + 0.7*m.x9 + 0.5*m.x10 + 1.2*m.x12 + 0.4*m.x13 + 1.2*m.x22 + 0.4*m.x23 + 1.2*m.x27
                         + 0.4*m.x28 + 1.2*m.x32 + 0.4*m.x33 - 8.3*m.b46 <= 0)

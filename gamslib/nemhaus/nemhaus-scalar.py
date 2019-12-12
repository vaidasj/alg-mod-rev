#  MIP written by GAMS Convert at 12/13/18 10:32:18
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         42        6       36        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         57       37       20        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        165      165        0        0
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
m.b38 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b39 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b40 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b41 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b42 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b43 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b44 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b45 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b46 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b47 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b48 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b49 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b50 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b51 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b52 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b53 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b54 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b55 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b56 = Var(within=Binary,bounds=(0,1),initialize=0)
m.b57 = Var(within=Binary,bounds=(0,1),initialize=0)

m.obj = Objective(expr=   2*m.x2 + 4*m.x3 + 3*m.x4 + 2*m.x5 + 4*m.x6 + 3*m.x7 + 2*m.x8 + 4*m.x9 + 3*m.x10 + 2*m.x11
                        + 4*m.x12 + 3*m.x13 + 6*m.x14 + 2*m.x15 + 3*m.x16 + 6*m.x17 + 2*m.x18 + 3*m.x19 + 6*m.x20
                        + 2*m.x21 + 3*m.x22 + 6*m.x23 + 2*m.x24 + 3*m.x25 + 5*m.x26 + 3*m.x27 + 5*m.x28 + 3*m.x29
                        + 5*m.x30 + 3*m.x31 + 5*m.x32 + 3*m.x33 + 3*m.x34 + 3*m.x35 + 3*m.x36 + 3*m.x37, sense=minimize)

m.c2 = Constraint(expr=   m.b38 + m.b39 + m.b40 + m.b41 == 1)

m.c3 = Constraint(expr=   m.b42 + m.b43 + m.b44 + m.b45 == 1)

m.c4 = Constraint(expr=   m.b46 + m.b47 + m.b48 + m.b49 == 1)

m.c5 = Constraint(expr=   m.b50 + m.b51 + m.b52 + m.b53 == 1)

m.c6 = Constraint(expr=   m.b54 + m.b55 + m.b56 + m.b57 == 1)

m.c7 = Constraint(expr=   m.x2 - m.b38 - m.b46 >= -1)

m.c8 = Constraint(expr=   m.x3 - m.b38 - m.b50 >= -1)

m.c9 = Constraint(expr=   m.x4 - m.b38 - m.b54 >= -1)

m.c10 = Constraint(expr=   m.x5 - m.b39 - m.b47 >= -1)

m.c11 = Constraint(expr=   m.x6 - m.b39 - m.b51 >= -1)

m.c12 = Constraint(expr=   m.x7 - m.b39 - m.b55 >= -1)

m.c13 = Constraint(expr=   m.x8 - m.b40 - m.b48 >= -1)

m.c14 = Constraint(expr=   m.x9 - m.b40 - m.b52 >= -1)

m.c15 = Constraint(expr=   m.x10 - m.b40 - m.b56 >= -1)

m.c16 = Constraint(expr=   m.x11 - m.b41 - m.b49 >= -1)

m.c17 = Constraint(expr=   m.x12 - m.b41 - m.b53 >= -1)

m.c18 = Constraint(expr=   m.x13 - m.b41 - m.b57 >= -1)

m.c19 = Constraint(expr=   m.x14 - m.b42 - m.b46 >= -1)

m.c20 = Constraint(expr=   m.x15 - m.b42 - m.b50 >= -1)

m.c21 = Constraint(expr=   m.x16 - m.b42 - m.b54 >= -1)

m.c22 = Constraint(expr=   m.x17 - m.b43 - m.b47 >= -1)

m.c23 = Constraint(expr=   m.x18 - m.b43 - m.b51 >= -1)

m.c24 = Constraint(expr=   m.x19 - m.b43 - m.b55 >= -1)

m.c25 = Constraint(expr=   m.x20 - m.b44 - m.b48 >= -1)

m.c26 = Constraint(expr=   m.x21 - m.b44 - m.b52 >= -1)

m.c27 = Constraint(expr=   m.x22 - m.b44 - m.b56 >= -1)

m.c28 = Constraint(expr=   m.x23 - m.b45 - m.b49 >= -1)

m.c29 = Constraint(expr=   m.x24 - m.b45 - m.b53 >= -1)

m.c30 = Constraint(expr=   m.x25 - m.b45 - m.b57 >= -1)

m.c31 = Constraint(expr=   m.x26 - m.b46 - m.b50 >= -1)

m.c32 = Constraint(expr=   m.x27 - m.b46 - m.b54 >= -1)

m.c33 = Constraint(expr=   m.x28 - m.b47 - m.b51 >= -1)

m.c34 = Constraint(expr=   m.x29 - m.b47 - m.b55 >= -1)

m.c35 = Constraint(expr=   m.x30 - m.b48 - m.b52 >= -1)

m.c36 = Constraint(expr=   m.x31 - m.b48 - m.b56 >= -1)

m.c37 = Constraint(expr=   m.x32 - m.b49 - m.b53 >= -1)

m.c38 = Constraint(expr=   m.x33 - m.b49 - m.b57 >= -1)

m.c39 = Constraint(expr=   m.x34 - m.b50 - m.b54 >= -1)

m.c40 = Constraint(expr=   m.x35 - m.b51 - m.b55 >= -1)

m.c41 = Constraint(expr=   m.x36 - m.b52 - m.b56 >= -1)

m.c42 = Constraint(expr=   m.x37 - m.b53 - m.b57 >= -1)

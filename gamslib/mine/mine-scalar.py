#  LP written by GAMS Convert at 12/13/18 10:24:36
#  
#  Equation counts
#      Total        E        G        L        N        X        C        B
#         57        1       56        0        0        0        0        0
#  
#  Variable counts
#                   x        b        i      s1s      s2s       sc       si
#      Total     cont   binary  integer     sos1     sos2    scont     sint
#         31       31        0        0        0        0        0        0
#  FX      0        0        0        0        0        0        0        0
#  
#  Nonzero counts
#      Total    const       NL      DLL
#        135      135        0        0
# 
#  Reformulation has removed 1 variable and 1 equation


from pyomo.environ import *

model = m = ConcreteModel()


m.x1 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x2 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x3 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x4 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x5 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x6 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x7 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x8 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x9 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x10 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x11 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x12 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x13 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x14 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x15 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x16 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x17 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x18 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x19 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x20 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x21 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x22 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x23 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x24 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x25 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x26 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x27 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x28 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x29 = Var(within=Reals,bounds=(0,1),initialize=0)
m.x30 = Var(within=Reals,bounds=(0,1),initialize=0)

m.obj = Objective(expr= - 1500*m.x4 + 1000*m.x6 - 1500*m.x8 - 1000*m.x9 - 1000*m.x10 - 1500*m.x11 - 2000*m.x12
                        - 1500*m.x13 - 1500*m.x14 - 2000*m.x15 - 2500*m.x16 + 2000*m.x17 + 2000*m.x18 - 2000*m.x19
                        - 4000*m.x22 - 2000*m.x23 - 2000*m.x24 - 5000*m.x25 + 16000*m.x26 + 4000*m.x27 + 2000*m.x28
                        + 2000*m.x30, sense=maximize)

m.c1 = Constraint(expr=   m.x1 - m.x17 >= 0)

m.c2 = Constraint(expr=   m.x2 - m.x18 >= 0)

m.c3 = Constraint(expr=   m.x3 - m.x19 >= 0)

m.c4 = Constraint(expr=   m.x5 - m.x20 >= 0)

m.c5 = Constraint(expr=   m.x6 - m.x21 >= 0)

m.c6 = Constraint(expr=   m.x7 - m.x22 >= 0)

m.c7 = Constraint(expr=   m.x9 - m.x23 >= 0)

m.c8 = Constraint(expr=   m.x10 - m.x24 >= 0)

m.c9 = Constraint(expr=   m.x11 - m.x25 >= 0)

m.c10 = Constraint(expr=   m.x17 - m.x26 >= 0)

m.c11 = Constraint(expr=   m.x18 - m.x27 >= 0)

m.c12 = Constraint(expr=   m.x20 - m.x28 >= 0)

m.c13 = Constraint(expr=   m.x21 - m.x29 >= 0)

m.c14 = Constraint(expr=   m.x26 - m.x30 >= 0)

m.c15 = Constraint(expr=   m.x2 - m.x17 >= 0)

m.c16 = Constraint(expr=   m.x3 - m.x18 >= 0)

m.c17 = Constraint(expr=   m.x4 - m.x19 >= 0)

m.c18 = Constraint(expr=   m.x6 - m.x20 >= 0)

m.c19 = Constraint(expr=   m.x7 - m.x21 >= 0)

m.c20 = Constraint(expr=   m.x8 - m.x22 >= 0)

m.c21 = Constraint(expr=   m.x10 - m.x23 >= 0)

m.c22 = Constraint(expr=   m.x11 - m.x24 >= 0)

m.c23 = Constraint(expr=   m.x12 - m.x25 >= 0)

m.c24 = Constraint(expr=   m.x18 - m.x26 >= 0)

m.c25 = Constraint(expr=   m.x19 - m.x27 >= 0)

m.c26 = Constraint(expr=   m.x21 - m.x28 >= 0)

m.c27 = Constraint(expr=   m.x22 - m.x29 >= 0)

m.c28 = Constraint(expr=   m.x27 - m.x30 >= 0)

m.c29 = Constraint(expr=   m.x6 - m.x17 >= 0)

m.c30 = Constraint(expr=   m.x7 - m.x18 >= 0)

m.c31 = Constraint(expr=   m.x8 - m.x19 >= 0)

m.c32 = Constraint(expr=   m.x10 - m.x20 >= 0)

m.c33 = Constraint(expr=   m.x11 - m.x21 >= 0)

m.c34 = Constraint(expr=   m.x12 - m.x22 >= 0)

m.c35 = Constraint(expr=   m.x14 - m.x23 >= 0)

m.c36 = Constraint(expr=   m.x15 - m.x24 >= 0)

m.c37 = Constraint(expr=   m.x16 - m.x25 >= 0)

m.c38 = Constraint(expr=   m.x21 - m.x26 >= 0)

m.c39 = Constraint(expr=   m.x22 - m.x27 >= 0)

m.c40 = Constraint(expr=   m.x24 - m.x28 >= 0)

m.c41 = Constraint(expr=   m.x25 - m.x29 >= 0)

m.c42 = Constraint(expr=   m.x29 - m.x30 >= 0)

m.c43 = Constraint(expr=   m.x5 - m.x17 >= 0)

m.c44 = Constraint(expr=   m.x6 - m.x18 >= 0)

m.c45 = Constraint(expr=   m.x7 - m.x19 >= 0)

m.c46 = Constraint(expr=   m.x9 - m.x20 >= 0)

m.c47 = Constraint(expr=   m.x10 - m.x21 >= 0)

m.c48 = Constraint(expr=   m.x11 - m.x22 >= 0)

m.c49 = Constraint(expr=   m.x13 - m.x23 >= 0)

m.c50 = Constraint(expr=   m.x14 - m.x24 >= 0)

m.c51 = Constraint(expr=   m.x15 - m.x25 >= 0)

m.c52 = Constraint(expr=   m.x20 - m.x26 >= 0)

m.c53 = Constraint(expr=   m.x21 - m.x27 >= 0)

m.c54 = Constraint(expr=   m.x23 - m.x28 >= 0)

m.c55 = Constraint(expr=   m.x24 - m.x29 >= 0)

m.c56 = Constraint(expr=   m.x28 - m.x30 >= 0)
